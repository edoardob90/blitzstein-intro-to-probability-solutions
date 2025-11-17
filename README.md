# Introduction to Probability - Solutions

![workflow status](https://github.com/fifthist/Introduction-To-Probability-Blitzstein-Solutions/actions/workflows/makefile.yml/badge.svg)

Contributed solutions to end of chapter exercises in *Introduction to Probability*, 2nd edition by Joe Blitzstein and Jessica Hwang.

The book contains many fantastic exercises that help develop intuition for thinking probabilistically. The authors provide solutions to some of these exercises on the book [website](https://projects.iq.harvard.edu/stat110/home), but most don't have published solutions. This repository aims to provide solutions for self-learners.

**[View Solutions Online »](https://edoardob90.github.io/blitzstein-intro-to-probability-solutions/)**

---

## Project Structure

This project has been migrated from LaTeX to **Typst** for document generation and uses **Astro** for building the web interface.

```
.
├── src/                    # Original LaTeX source files
├── typst/                  # Typst source files (migrated from LaTeX)
│   ├── template.typ        # Typst document template
│   ├── main.typ            # Main document entry point
│   └── chapters/           # Chapter-organized solutions
├── astro-site/             # Astro web application
│   ├── src/
│   │   ├── pages/          # Web pages
│   │   ├── layouts/        # Layout components
│   │   └── components/     # Reusable components
│   └── public/             # Static assets
├── latex_to_typst.py       # LaTeX → Typst conversion script
├── generate_content.py     # Typst → JSON content generator
└── build.sh                # Main build script
```

---

## Building the Project

### Prerequisites

- **Python 3** (for conversion scripts)
- **Node.js & npm** (for Astro)
- **Typst** (installed automatically by build script)

### Quick Start

Run the complete build pipeline:

```bash
./build.sh
```

This script will:
1. Install Typst if needed
2. Generate content data from Typst files
3. Compile the Typst document to PDF
4. Build the Astro website

### Development Workflow

#### 1. Adding New Solutions

Add solutions as Typst files in the `typst/` directory:

```
typst/chapters/[chapter]/[section]/[problem_number].typ
```

#### 2. Convert from LaTeX (if needed)

To re-run the LaTeX to Typst conversion:

```bash
python3 latex_to_typst.py
```

#### 3. Preview the Website Locally

```bash
cd astro-site
npm install          # First time only
npm run dev          # Start dev server
```

Visit `http://localhost:4321` to see the site.

#### 4. Build for Production

```bash
./build.sh
```

The built site will be in `astro-site/dist/`.

---

## Contributing

### How to Contribute

1. **Fork this repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/add-solution-X-Y
   ```
3. **Add your solution** as a Typst file:
   ```
   typst/chapters/[chapter]/[section]/[problem].typ
   ```
4. **Test your changes**
   ```bash
   ./build.sh
   cd astro-site && npm run dev
   ```
5. **Commit and push**
   ```bash
   git add .
   git commit -m "Add solution to problem X.Y"
   git push origin feature/add-solution-X-Y
   ```
6. **Create a pull request**

### File Naming Convention

- **Chapters**: `typst/chapters/[number]/chapter.typ`
- **Sections**: `typst/chapters/[number]/[section_name]/section.typ`
- **Problems**: `typst/chapters/[number]/[section_name]/[problem_number].typ`

### Typst Syntax Quick Reference

```typst
// Headings
= Chapter Title
== Section Title
=== Problem Title

// Math
Inline math: $x + y = z$
Display math: $ x + y = z $

// Lists
+ Numbered item
- Bullet item

// Text formatting
*bold* _italic_
```

For more, see the [Typst Documentation](https://typst.app/docs/).

---

## Syncing with Upstream

This repository is a fork. To pull updates from the upstream repository:

```bash
# Fetch upstream changes
git fetch upstream

# Merge into your branch
git merge upstream/main
```

The upstream remote is already configured as:
```
upstream: https://github.com/fifthist/Introduction-To-Probability-Blitzstein-Solutions.git
```

---

## Legacy LaTeX Build

The original LaTeX build system is still available in the `src/` directory.

To build using LaTeX:

```bash
make
```

This requires:
- `texlive-full`
- `pandoc`
- `latexmk`
- `python3` with `beautifulsoup4`
- `mathjax-node-page` (npm package)

---

## Resources

- **Book Website**: [STAT 110](https://projects.iq.harvard.edu/stat110/home)
- **Typst**: [typst.app](https://typst.app)
- **Astro**: [astro.build](https://astro.build)

---

## License

Solutions contributed by the community. Please check with original authors for usage rights.
