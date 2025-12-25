# Setup - Lifetime Digital Operating System

A comprehensive folder structure and organization system for managing your digital life across a 20TB drive.

## 📖 Overview

This repository contains tools and documentation for creating a structured, organized file system that covers all aspects of your digital life - from personal documents to code projects, music production, media creation, and business ventures.

## 🚀 Quick Start

### Prerequisites

- Bash shell (macOS/Linux)
- A target drive or directory (e.g., `/Volumes/LUMINARY_VAULT_20TB` or `~/LUMINARY_VAULT_20TB`)

### Installation

1. Clone this repository:
```bash
git clone git@github.com:majimba/setup.git
cd setup
```

2. Make the script executable:
```bash
chmod +x create_life_structure.sh
```

3. Run the script with your target path:
```bash
./create_life_structure.sh "/Volumes/LUMINARY_VAULT_20TB"
```

Or for a folder in your home directory:
```bash
./create_life_structure.sh "$HOME/LUMINARY_VAULT_20TB"
```

## 📁 What Gets Created

The script creates a comprehensive folder structure with 14 main categories:

- **00_SYSTEM** - System files, backups, automation, configs
- **01_LIFE** - Personal life management (admin, health, finance, journals)
- **02_EDUCATION** - Educational materials and coursework
- **03_FAITH** - Spiritual and religious materials
- **04_BOOKS** - Digital books and reading materials
- **05_CODE** - Programming projects and repositories
- **06_AI** - AI projects, models, datasets, and research
- **07_MUSIC** - Music production and audio files
- **08_MEDIA** - Video production and media files
- **09_GRAPHICS** - Graphic design and visual assets
- **10_THE_AGENCY** - Agency business files and operations
- **11_VENTURES** - Business venture projects (VibesSuite, ArcSynthesis, StellarSplits)
- **12_ASSETS** - Reusable assets (fonts, music loops, stock media)
- **13_ARCHIVE** - Archived and deprecated files

## 📚 Documentation

- **[FOLDER_ORGANIZATION_GUIDE.md](./FOLDER_ORGANIZATION_GUIDE.md)** - Detailed guide explaining each folder's purpose and organization tips

## 🛠️ Features

- **Comprehensive Structure** - 14 main categories with nested subfolders
- **Venture-Specific Folders** - Pre-configured structure for multiple business ventures
- **System Organization** - Dedicated folders for backups, templates, and automation
- **Media Production** - Organized spaces for music, video, and graphics work
- **Archive System** - Built-in archiving for old projects and deprecated files

## 📝 Usage Tips

1. **Be Consistent** - Use the same naming conventions across similar folders
2. **Date Your Files** - Include dates in filenames (YYYY-MM-DD format)
3. **Regular Cleanup** - Periodically move old files to `13_ARCHIVE`
4. **Backup Important Files** - Keep critical files in `00_SYSTEM/Backups`
5. **Version Control** - Use version numbers or dates for iterative files

## 🔗 Repository

- **GitHub:** [majimba/setup](https://github.com/majimba/setup)
- **Clone URL:** `git@github.com:majimba/setup.git`

## 📄 License

This project is for personal use. Feel free to adapt it to your needs.

---

*Created to organize a lifetime of digital work, projects, and memories.*

