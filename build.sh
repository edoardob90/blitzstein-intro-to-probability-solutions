#!/bin/bash
# Build script for Typst + Astro pipeline
# This script:
# 1. Compiles Typst files to PDF and HTML (if possible)
# 2. Generates JSON data for Astro to consume
# 3. Builds the Astro site

set -e  # Exit on error

echo "======================================"
echo "Building Probability Solutions Site"
echo "======================================"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Step 1: Ensure Typst is available
echo -e "${BLUE}Step 1: Checking Typst installation...${NC}"
export PATH="$HOME/.local/bin:$PATH"
if ! command -v typst &> /dev/null; then
    echo -e "${YELLOW}Typst not found. Installing...${NC}"
    mkdir -p ~/.local/bin
    wget -q https://github.com/typst/typst/releases/download/v0.12.0/typst-x86_64-unknown-linux-musl.tar.xz
    tar -xf typst-x86_64-unknown-linux-musl.tar.xz
    mv typst-x86_64-unknown-linux-musl/typst ~/.local/bin/
    rm -rf typst-x86_64-unknown-linux-musl*
fi
echo -e "${GREEN}✓ Typst is ready${NC}"

# Step 2: Generate content data from Typst files
echo -e "${BLUE}Step 2: Generating content data from Typst files...${NC}"
python3 generate_content.py
echo -e "${GREEN}✓ Content data generated${NC}"

# Step 3: Compile main Typst document (optional, for PDF output)
echo -e "${BLUE}Step 3: Compiling Typst document (optional)...${NC}"
cd typst
if typst compile main.typ main.pdf 2>/dev/null; then
    echo -e "${GREEN}✓ PDF compiled successfully${NC}"
    mv main.pdf ../astro-site/public/solutions.pdf
else
    echo -e "${YELLOW}⚠ PDF compilation had errors (continuing anyway)${NC}"
fi
cd ..

# Step 4: Build Astro site
echo -e "${BLUE}Step 4: Building Astro site...${NC}"
cd astro-site
if [ ! -d "node_modules" ]; then
    echo -e "${YELLOW}Installing dependencies...${NC}"
    npm install
fi
npm run build
echo -e "${GREEN}✓ Astro site built${NC}"
cd ..

echo ""
echo -e "${GREEN}======================================"
echo -e "Build completed successfully!"
echo -e "======================================${NC}"
echo ""
echo "To preview the site:"
echo "  cd astro-site && npm run preview"
echo ""
echo "Built files are in: astro-site/dist"
