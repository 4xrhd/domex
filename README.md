

# domex

**domex** is a powerful and intuitive tool designed to streamline the extraction of domains from HackerOne JSON files. Whether you’re sifting through security reports or managing threat intelligence, this tool simplifies the process of extracting and cleaning domain names with ease.

## Features

- **Effortless Domain Extraction**: Automatically parse JSON files and extract domain names from specified fields.
- **Regex Cleaning**: Remove unnecessary regex characters and wildcards to get clean, usable domain names.
- **Simple Setup**: Easy-to-use Bash script with straightforward commands for quick integration into your workflow.

## Requirements

- **jq**: A command-line JSON processor. Make sure you have `jq` installed on your system. You can install it using your package manager:
  - For Debian/Ubuntu:
    ```bash
    sudo apt-get install jq
    ```
  - For Red Hat/CentOS:
    ```bash
    sudo yum install jq
    ```
  - For macOS:
    ```bash
    brew install jq
    ```

## How It Works

1. **Input**: Provide a JSON file containing domain information.
2. **Extraction**: Use the script to extract domain names from the JSON structure.
3. **Cleaning**: The tool processes the domains to remove regex symbols and wildcards.
4. **Output**: Get a clean list of domains ready for your analysis.

## Getting Started

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/4xrhd/domex.git
   cd domex
   ```

2. **Make the Script Executable**:
   ```bash
   chmod +x domex.sh
   ```

3. **Run the Script**:
   ```bash
   ./domex.sh yourfile.json
   ```

## Example

Given a JSON file with domains enclosed in regex patterns, `domex` will extract and clean them:

**Input**:
```json
{
  "targets": [
    { "host": "^www3\\.olf\\.com$" },
    { "host": "^xtractasia\\.com$" }
  ]
}
```

**Output**:
```text
www3.olf.com
xtractasia.com
```
