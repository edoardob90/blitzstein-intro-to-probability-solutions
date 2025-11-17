#!/usr/bin/env python3
"""
Convert LaTeX probability solutions to Typst format.
Migrates the entire src/ directory structure to typst/ directory.
"""

import os
import re
from pathlib import Path
import shutil


class LaTeXToTypstConverter:
    """Converts LaTeX mathematical content to Typst format."""

    def __init__(self):
        # LaTeX to Typst command mappings
        self.replacements = [
            # Display math: $$ $$ to $ $ (must come before other replacements)
            (r'\$\$', r'$'),

            # Display math: \[ \] to $ $
            (r'\\\[', r'$'),
            (r'\\\]', r'$'),

            # Inline math: \( \) to $ $
            (r'\\\(', r'$'),
            (r'\\\)', r'$'),

            # Binomial coefficients
            (r'\\binom\{([^}]+)\}\{([^}]+)\}', r'binom(\1, \2)'),

            # Common math commands
            (r'\\frac\{([^}]+)\}\{([^}]+)\}', r'(\1)/(\2)'),
            (r'\\infty', r'infinity'),
            (r'\\int_\{([^}]+)\}\^\{([^}]+)\}', r'integral_(\1)^(\2)'),
            (r'\\sum_\{([^}]+)\}\^\{([^}]+)\}', r'sum_(\1)^(\2)'),
            (r'\\prod_\{([^}]+)\}\^\{([^}]+)\}', r'product_(\1)^(\2)'),

            # Greek letters (keep backslash, Typst uses same)
            # No change needed for most Greek letters

            # Text formatting
            (r'\\textbf\{([^}]+)\}', r'*\1*'),
            (r'\\textit\{([^}]+)\}', r'_\1_'),
            (r'\\emph\{([^}]+)\}', r'_\1_'),

            # Special symbols
            (r'\\ldots', r'...'),
            (r'\\cdots', r'dot.c'),
            (r'\\dots', r'...'),
            (r'\\times', r'times'),
            (r'\\leq', r'lt.eq'),
            (r'\\geq', r'gt.eq'),
            (r'\\neq', r'eq.not'),
            (r'\\approx', r'approx'),
            (r'\\equiv', r'equiv'),
            (r'\\pm', r'plus.minus'),
            (r'\\mp', r'minus.plus'),
            (r'\\bigtriangleup', r'triangle.stroked.t'),
            (r'\\triangle', r'triangle.stroked.small'),
            (r'\\nabla', r'nabla'),

            # Sets and logic
            (r'\\subseteq', r'subset.eq'),
            (r'\\subset', r'subset'),
            (r'\\cap', r'sect'),
            (r'\\cup', r'union'),
            (r'\\emptyset', r'emptyset'),
            (r'\\in', r'in'),
            (r'\\notin', r'in.not'),
            (r'\\exists', r'exists'),
            (r'\\forall', r'forall'),

            # Arrows
            (r'\\implies', r'arrow.r.double'),
            (r'\\impliedby', r'arrow.l.double'),
            (r'\\iff', r'arrow.l.r.double'),
            (r'\\rightarrow', r'arrow.r'),
            (r'\\leftarrow', r'arrow.l'),
            (r'\\Rightarrow', r'arrow.r.double'),
            (r'\\Leftarrow', r'arrow.l.double'),
            (r'\\leftrightarrow', r'arrow.l.r'),

            # Other common commands
            (r'\\mathbb\{([^}]+)\}', r'bb(\1)'),
            (r'\\mathcal\{([^}]+)\}', r'cal(\1)'),
            (r'\\sqrt\{([^}]+)\}', r'sqrt(\1)'),

            # Probability notation
            (r'\\Pr', r'Pr'),
            (r'\\E', r'EE'),  # Expectation
            (r'\\Var', r'Var'),
            (r'\\Cov', r'Cov'),
        ]

    def convert_math(self, content):
        """Convert LaTeX math to Typst math."""
        for pattern, replacement in self.replacements:
            content = re.sub(pattern, replacement, content)
        return content

    def convert_problem_file(self, latex_content):
        """Convert a problem file from LaTeX to Typst."""
        # Remove LaTeX comments
        content = re.sub(r'(?<!\\)%.*$', '', latex_content, flags=re.MULTILINE)

        # Handle enumerate environments - convert to Typst enum
        content = re.sub(r'\\begin\{enumerate\}(?:\[.*?\])?', r'+ ', content)
        content = re.sub(r'\\end\{enumerate\}', r'', content)

        # Handle itemize environments
        content = re.sub(r'\\begin\{itemize\}(?:\[.*?\])?', r'- ', content)
        content = re.sub(r'\\end\{itemize\}', r'', content)

        # Handle \item
        content = re.sub(r'\\item\s*', r'\n+ ', content)

        # Handle align environment
        content = re.sub(r'\\begin\{align\*?\}', r'$', content)
        content = re.sub(r'\\end\{align\*?\}', r'$', content)
        content = re.sub(r'\\\\', r'\n', content)  # Line breaks in align
        content = re.sub(r'&', r'', content)  # Alignment markers

        # Handle other common environments
        content = re.sub(r'\\begin\{equation\*?\}', r'$', content)
        content = re.sub(r'\\end\{equation\*?\}', r'$', content)

        # Convert math
        content = self.convert_math(content)

        # Clean up multiple blank lines
        content = re.sub(r'\n\n\n+', r'\n\n', content)

        # Clean up whitespace
        content = content.strip()

        return content

    def get_section_name_from_path(self, section_path):
        """Extract human-readable section name from path."""
        section_dir = section_path.name
        # Convert underscore-separated to title case
        return section_dir.replace('_', ' ').title()

    def get_chapter_title(self, chapter_index_file):
        """Extract chapter title from LaTeX index file."""
        if not chapter_index_file.exists():
            return f"Chapter {chapter_index_file.parent.name}"

        content = chapter_index_file.read_text()
        match = re.search(r'\\chapter\{([^}]+)\}', content)
        if match:
            return match.group(1)
        return f"Chapter {chapter_index_file.parent.name}"

    def get_section_title(self, section_index_file):
        """Extract section title from LaTeX index file."""
        if not section_index_file.exists():
            section_name = section_index_file.parent.name
            return section_name.replace('_', ' ').title()

        content = section_index_file.read_text()
        match = re.search(r'\\section\{([^}]+)\}', content)
        if match:
            return match.group(1)

        # Fallback to directory name
        section_name = section_index_file.parent.name
        return section_name.replace('_', ' ').title()

    def get_problems_from_section(self, section_index_file):
        """Extract list of problems from section index file."""
        if not section_index_file.exists():
            return []

        content = section_index_file.read_text()
        # Find all \subsection{problem N} and \input{problems/N}
        problems = re.findall(r'\\subsection\{problem\s+(\d+)\}', content)
        return [int(p) for p in problems]

    def convert_chapter(self, src_chapter_dir, typst_chapter_dir):
        """Convert an entire chapter from LaTeX to Typst."""
        chapter_num = src_chapter_dir.name
        chapter_index = src_chapter_dir / 'index.tex'
        chapter_title = self.get_chapter_title(chapter_index)

        # Create chapter.typ file
        chapter_content = f"= {chapter_title}\n\n"

        # Get all sections
        sections_dir = src_chapter_dir / 'sections'
        if not sections_dir.exists():
            print(f"Warning: No sections directory in chapter {chapter_num}")
            return

        section_files = []
        for section_dir in sorted(sections_dir.iterdir()):
            if not section_dir.is_dir():
                continue

            section_name = section_dir.name
            section_index = section_dir / 'index.tex'
            section_title = self.get_section_title(section_index)
            problems = self.get_problems_from_section(section_index)

            # Create section directory in Typst
            typst_section_dir = typst_chapter_dir / section_name
            typst_section_dir.mkdir(parents=True, exist_ok=True)

            # Create section.typ file
            section_content = f"== {section_title}\n\n"

            # Convert each problem
            problems_dir = section_dir / 'problems'
            if problems_dir.exists():
                for problem_num in problems:
                    problem_file = problems_dir / f"{problem_num}.tex"
                    if problem_file.exists():
                        latex_content = problem_file.read_text()
                        typst_content = self.convert_problem_file(latex_content)

                        # Write problem file
                        typst_problem_file = typst_section_dir / f"{problem_num}.typ"
                        typst_problem_file.write_text(typst_content)

                        # Add to section content
                        section_content += f"=== Problem {problem_num}\n\n"
                        section_content += f"#include \"{problem_num}.typ\"\n\n"

            # Write section file
            section_file = typst_section_dir / 'section.typ'
            section_file.write_text(section_content)
            section_files.append(f"#include \"{section_name}/section.typ\"")

        # Add all section includes to chapter
        chapter_content += "\n".join(section_files) + "\n"

        # Write chapter file
        chapter_file = typst_chapter_dir / 'chapter.typ'
        chapter_file.write_text(chapter_content)
        print(f"Converted chapter {chapter_num}: {chapter_title}")

    def convert_all(self, src_dir, typst_dir):
        """Convert all chapters from src to typst directory."""
        src_path = Path(src_dir)
        typst_path = Path(typst_dir)

        chapters_src = src_path / 'chapters'
        chapters_typst = typst_path / 'chapters'

        if not chapters_src.exists():
            print(f"Error: Source chapters directory not found: {chapters_src}")
            return

        # Convert each chapter
        for chapter_dir in sorted(chapters_src.iterdir()):
            if not chapter_dir.is_dir():
                continue

            chapter_num = chapter_dir.name
            typst_chapter_dir = chapters_typst / chapter_num
            typst_chapter_dir.mkdir(parents=True, exist_ok=True)

            self.convert_chapter(chapter_dir, typst_chapter_dir)

        print("\nConversion complete!")


def main():
    """Main conversion function."""
    converter = LaTeXToTypstConverter()

    # Get the script directory
    script_dir = Path(__file__).parent
    src_dir = script_dir / 'src'
    typst_dir = script_dir / 'typst'

    print(f"Converting LaTeX files from {src_dir} to Typst format in {typst_dir}")
    print("=" * 70)

    converter.convert_all(src_dir, typst_dir)


if __name__ == '__main__':
    main()
