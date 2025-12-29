# DockWasher - Powerfull Docker Data Cleaner

![Bash Version](https://img.shields.io/badge/bash-5.2.37%2B-blue)
![License](https://img.shields.io/badge/license-MIT-green)

Powerful and **destructive** bash script that **removes all Docker containers, images, volumes, and networks** from your system. It's designed to give you a completely clean Docker environment — useful when you're troubleshooting, starting fresh, or reclaiming disk space.

> **WARNING:** This script will **delete all your Docker data** irreversibly. Use with extreme caution.

* * *

## Features

* Stops all running containers
* Removes all containers
* Force deletes all Docker images
* Deletes all Docker volumes
* Removes all user-defined Docker networks
* Performs a full `docker system prune` including volumes

* * *

## Usage

1. Clone or download this repository:

```bash
git clone https://github.com/neoslab/dockwasher.git
cd dockwasher
```

2. Make the script executable:

```bash
chmod +x dockwasher.sh
```

3. Run the script:

```bash
./docker-cleanup.sh
```

4. Confirm when prompted:

```
WARNING: This will delete ALL Docker data!
Are you sure? (y/N): y
```

* * *

## Requirements

* Docker must be installed and running
* Bash shell (Linux/macOS or WSL on Windows)

* * *

### Safety Mechanism

The script includes a confirmation prompt to prevent accidental execution:

```bash
read -p "Are you sure? (y/N): " confirm
```

Only if you respond with `y` (lowercase) will the cleanup proceed.

* * *

### What Will Be Deleted?

| Resource   | Deleted?                                                  |
| ---------- | --------------------------------------------------------- |
| Containers | Yes                                                       |
| Images     | Yes                                                       |
| Volumes    | Yes                                                       |
| Networks   | Yes (excluding default `bridge`, `host`, and `none`)      |
| Cache      | Yes (via `docker system prune`)                           |

* * *

### Disclaimer

This script is **irreversible**. Once executed, **all data** managed by Docker on your system **will be lost**.

Use only when you're absolutely sure you want to wipe your Docker environment.

* * *

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -m "Add your feature"`).
4. Push to your branch (`git push origin feature/your-feature`).
5. Open a pull request with a clear description of your changes.

Ensure your code follows PEP 8 style guidelines and includes appropriate tests.

* * *

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

* * *

## Contact

For any issues, suggestions, or questions regarding the project, please open a new issue on the official GitHub repository or reach out directly to the maintainer through the [GitHub Issues](issues) page for further assistance and follow-up.