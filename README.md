# File Organizer

A minimalist bash script that automatically organizes files in your Downloads folder by category.

## Features

- **Automatic categorization**: Sorts files into folders based on file type:
  - `Docs` — PDF, Word documents, spreadsheets, text files
  - `Media` — Images and video files (jpg, png, mp4, mp3, mov, jpeg)
  - `Archive` — Compressed files (zip, tar, gz, rar, 7z, iso)
  - `Installers` — Installation packages (deb, rpm, sh, bin)
  - `Others` — Any remaining files

- **Minimalist design**: Simple, efficient bash script with no dependencies
- **Safe**: Excludes the script itself from being moved
- **Clean**: Automatically removes empty "Others" folder if not needed

## Usage

```bash
./sort.sh
```

The script will organize all files in your `~/Downloads` directory into categorized folders.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Tsepang Ntsane/file-organizer.git
   cd file-organizer
   ```

2. Make the script executable:
   ```bash
   chmod +x sort.sh
   ```

3. Run it:
   ```bash
   ./sort.sh
   ```

## How It Works

1. Navigates to the Downloads folder
2. Creates category folders and moves files based on their extensions
3. Moves any remaining files to an "Others" folder
4. Cleans up empty folders

## Requirements

- Bash shell
- Linux/macOS (or WSL on Windows)

## License

MIT

## Contributing

Feel free to fork, improve, and share!
