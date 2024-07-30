# Docker Version Checker

This repository contains a script to check the Docker version installed on your system and update it if the version is 19 or older. This script is created for Course 6130.

## Files

- `check_docker_version.sh`: The main script to check and update Docker.

## Requirements

- Bash shell
- Docker installed on your system
- Debian-based Linux distribution (e.g., Ubuntu)

## Usage

1. Clone this repository:
    ```bash
    git clone https://github.com/arvinasrari/docker-version-checker.git
    cd docker-version-checker
    ```

2. Make the script executable:
    ```bash
    chmod +x check_docker_version.sh
    ```

3. Run the script:
    ```bash
    ./check_docker_version.sh
    ```

The script will check the installed Docker version. If the version is 19 or older, it will prompt you to update Docker to the latest version.

## Note

- This script assumes you are using a Debian-based system (like Ubuntu). If you are using a different Linux distribution, you may need to modify the update commands accordingly.
- Ensure you have the necessary permissions to install or update software on your system.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

- Arvin Asrari

