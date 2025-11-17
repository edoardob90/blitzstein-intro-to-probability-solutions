#!/usr/bin/env python3
"""
Generate JSON content data from Typst files for Astro to consume.
This reads the Typst directory structure and creates a content.json file.
"""

import json
import os
from pathlib import Path


def read_typst_file(file_path):
    """Read a Typst file and return its content."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        # Convert Typst math delimiters to HTML-friendly format
        # For now, we'll keep the $ delimiters as-is since MathJax will process them
        return content
    except Exception as e:
        print(f"Warning: Could not read {file_path}: {e}")
        return ""


def parse_typst_structure(typst_dir):
    """Parse the Typst directory structure and extract content."""
    chapters = []

    chapters_dir = typst_dir / 'chapters'
    if not chapters_dir.exists():
        print(f"Error: Chapters directory not found: {chapters_dir}")
        return chapters

    # Process each chapter
    for chapter_dir in sorted(chapters_dir.iterdir()):
        if not chapter_dir.is_dir():
            continue

        chapter_num = chapter_dir.name
        chapter_file = chapter_dir / 'chapter.typ'

        if not chapter_file.exists():
            continue

        # Read chapter info
        chapter_content = read_typst_file(chapter_file)

        # Extract title from first line (= Title format)
        title_line = chapter_content.split('\n')[0] if chapter_content else ""
        title = title_line.replace('= ', '').strip() if title_line.startswith('= ') else f"Chapter {chapter_num}"

        chapter_data = {
            'number': chapter_num,
            'title': title,
            'sections': []
        }

        # Process each section
        for section_dir in sorted(chapter_dir.iterdir()):
            if not section_dir.is_dir():
                continue

            section_name = section_dir.name
            section_file = section_dir / 'section.typ'

            if not section_file.exists():
                continue

            section_content = read_typst_file(section_file)

            # Extract section title
            for line in section_content.split('\n'):
                if line.startswith('== '):
                    section_title = line.replace('== ', '').strip()
                    break
            else:
                section_title = section_name.replace('_', ' ').title()

            section_data = {
                'name': section_title,
                'problems': []
            }

            # Process each problem
            for problem_file in sorted(section_dir.glob('*.typ')):
                if problem_file.name == 'section.typ':
                    continue

                problem_num = problem_file.stem
                problem_content = read_typst_file(problem_file)

                # Convert basic Typst markup to HTML
                # This is a simple conversion - a more sophisticated approach
                # would use a proper Typst-to-HTML converter
                html_content = typst_to_html(problem_content)

                section_data['problems'].append({
                    'number': problem_num,
                    'content': html_content
                })

            if section_data['problems']:
                chapter_data['sections'].append(section_data)

        if chapter_data['sections']:
            chapters.append(chapter_data)

    return chapters


def typst_to_html(typst_content):
    """Convert basic Typst markup to HTML."""
    # This is a simple conversion. For production, you might want to:
    # 1. Compile each problem to a separate PDF
    # 2. Convert PDF to HTML/SVG
    # 3. Or use a Typst-to-HTML library if available

    html = typst_content

    # Convert lists
    lines = html.split('\n')
    new_lines = []
    in_list = False

    for line in lines:
        stripped = line.strip()
        if stripped.startswith('+ '):
            if not in_list:
                new_lines.append('<ol>')
                in_list = True
            item_content = stripped[2:]
            new_lines.append(f'<li>{item_content}</li>')
        elif stripped.startswith('- '):
            if not in_list:
                new_lines.append('<ul>')
                in_list = True
            item_content = stripped[2:]
            new_lines.append(f'<li>{item_content}</li>')
        else:
            if in_list:
                new_lines.append('</ol>')  # or </ul>, we'll use ol for now
                in_list = False
            if stripped:
                new_lines.append(f'<p>{line}</p>')
            else:
                new_lines.append('')

    if in_list:
        new_lines.append('</ol>')

    html = '\n'.join(new_lines)

    # Keep math delimiters as-is for MathJax
    # Math in $ $ will be processed by MathJax on the client side

    return html


def main():
    """Main function to generate content."""
    script_dir = Path(__file__).parent
    typst_dir = script_dir / 'typst'
    output_dir = script_dir / 'astro-site' / 'src'
    output_file = output_dir / 'content.json'

    print("Generating content data from Typst files...")
    print(f"Reading from: {typst_dir}")

    chapters = parse_typst_structure(typst_dir)

    print(f"Found {len(chapters)} chapters")
    for chapter in chapters:
        print(f"  - Chapter {chapter['number']}: {chapter['title']} ({len(chapter['sections'])} sections)")

    # Ensure output directory exists
    output_dir.mkdir(parents=True, exist_ok=True)

    # Write JSON file
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump({'chapters': chapters}, f, indent=2, ensure_ascii=False)

    print(f"\nContent data written to: {output_file}")
    print("Done!")


if __name__ == '__main__':
    main()
