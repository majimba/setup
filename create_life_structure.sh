#!/usr/bin/env bash
set -euo pipefail

# Creates the "Lifetime Digital Operating System" folder structure.
# Usage:
#   1) Save as: create_life_structure.sh
#   2) chmod +x create_life_structure.sh
#   3) Run:
#        ./create_life_structure.sh "/Volumes/LUMINARY_VAULT_20TB"
#      or (for a folder in your home directory):
#        ./create_life_structure.sh "$HOME/LUMINARY_VAULT_20TB"

TARGET="${1:-}"

if [[ -z "$TARGET" ]]; then
  echo "Error: Missing target path."
  echo "Example: $0 \"/Volumes/LUMINARY_VAULT_20TB\""
  exit 1
fi

# Expand ~ if used
TARGET="${TARGET/#\~/$HOME}"

mkdir -p "$TARGET"

# Root folders
ROOT_FOLDERS=(
  "00_SYSTEM"
  "01_LIFE"
  "02_EDUCATION"
  "03_FAITH"
  "04_BOOKS"
  "05_CODE"
  "06_AI"
  "07_MUSIC"
  "08_MEDIA"
  "09_GRAPHICS"
  "10_THE_AGENCY"
  "11_VENTURES"
  "12_ASSETS"
  "13_ARCHIVE"
)

for f in "${ROOT_FOLDERS[@]}"; do
  mkdir -p "$TARGET/$f"
done

# 00_SYSTEM
mkdir -p \
  "$TARGET/00_SYSTEM/Backups" \
  "$TARGET/00_SYSTEM/Templates" \
  "$TARGET/00_SYSTEM/Automation" \
  "$TARGET/00_SYSTEM/Configs" \
  "$TARGET/00_SYSTEM/Licenses"

# 01_LIFE
mkdir -p \
  "$TARGET/01_LIFE/Admin" \
  "$TARGET/01_LIFE/Health" \
  "$TARGET/01_LIFE/Finance" \
  "$TARGET/01_LIFE/Journals" \
  "$TARGET/01_LIFE/Planning"

# 02_EDUCATION
mkdir -p \
  "$TARGET/02_EDUCATION/University/CS" \
  "$TARGET/02_EDUCATION/University/AI" \
  "$TARGET/02_EDUCATION/Courses/Coursera" \
  "$TARGET/02_EDUCATION/Courses/DataCamp" \
  "$TARGET/02_EDUCATION/Notes" \
  "$TARGET/02_EDUCATION/Assignments"

# 03_FAITH
mkdir -p \
  "$TARGET/03_FAITH/Bible" \
  "$TARGET/03_FAITH/Study_Notes" \
  "$TARGET/03_FAITH/Sermons" \
  "$TARGET/03_FAITH/Theology" \
  "$TARGET/03_FAITH/Devotionals"

# 04_BOOKS
mkdir -p \
  "$TARGET/04_BOOKS/Non_Fiction" \
  "$TARGET/04_BOOKS/Fiction" \
  "$TARGET/04_BOOKS/Technology" \
  "$TARGET/04_BOOKS/Business" \
  "$TARGET/04_BOOKS/Spiritual" \
  "$TARGET/04_BOOKS/Summaries" \
  "$TARGET/04_BOOKS/Highlights"

# 05_CODE
mkdir -p \
  "$TARGET/05_CODE/Repos" \
  "$TARGET/05_CODE/Experiments" \
  "$TARGET/05_CODE/Scripts" \
  "$TARGET/05_CODE/Libraries" \
  "$TARGET/05_CODE/Backups"

# 06_AI
mkdir -p \
  "$TARGET/06_AI/Models" \
  "$TARGET/06_AI/Datasets" \
  "$TARGET/06_AI/Prompts" \
  "$TARGET/06_AI/Research" \
  "$TARGET/06_AI/Prototypes"

# 07_MUSIC
mkdir -p \
  "$TARGET/07_MUSIC/Artists/JuLu" \
  "$TARGET/07_MUSIC/Artists/Shimron" \
  "$TARGET/07_MUSIC/Sessions" \
  "$TARGET/07_MUSIC/Beats" \
  "$TARGET/07_MUSIC/Samples" \
  "$TARGET/07_MUSIC/Mixes" \
  "$TARGET/07_MUSIC/Masters"

# 08_MEDIA
mkdir -p \
  "$TARGET/08_MEDIA/Footage" \
  "$TARGET/08_MEDIA/Edits" \
  "$TARGET/08_MEDIA/Exports" \
  "$TARGET/08_MEDIA/Documentaries" \
  "$TARGET/08_MEDIA/ShortForm"

# 09_GRAPHICS
mkdir -p \
  "$TARGET/09_GRAPHICS/Branding" \
  "$TARGET/09_GRAPHICS/Logos" \
  "$TARGET/09_GRAPHICS/Social" \
  "$TARGET/09_GRAPHICS/Print" \
  "$TARGET/09_GRAPHICS/UI_UX"

# 10_THE_AGENCY
mkdir -p \
  "$TARGET/10_THE_AGENCY/Clients" \
  "$TARGET/10_THE_AGENCY/Operations" \
  "$TARGET/10_THE_AGENCY/Marketing" \
  "$TARGET/10_THE_AGENCY/Strategy" \
  "$TARGET/10_THE_AGENCY/Sales"

# 11_VENTURES (with venture sub-structure)
VENTURES=("VibesSuite" "ArcSynthesis" "StellarSplits")

for v in "${VENTURES[@]}"; do
  mkdir -p \
    "$TARGET/11_VENTURES/$v/Product/Code" \
    "$TARGET/11_VENTURES/$v/Product/Docs" \
    "$TARGET/11_VENTURES/$v/Product/Media" \
    "$TARGET/11_VENTURES/$v/Product/Design" \
    "$TARGET/11_VENTURES/$v/Product/Data"
done

# 12_ASSETS
mkdir -p \
  "$TARGET/12_ASSETS/Fonts" \
  "$TARGET/12_ASSETS/Music_Loops" \
  "$TARGET/12_ASSETS/Stock_Video" \
  "$TARGET/12_ASSETS/Photos"

# 13_ARCHIVE
mkdir -p \
  "$TARGET/13_ARCHIVE/Old_Projects" \
  "$TARGET/13_ARCHIVE/Deprecated" \
  "$TARGET/13_ARCHIVE/Snapshots"

echo "✅ Folder structure created at: $TARGET"

