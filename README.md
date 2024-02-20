# Celestia Node Deployment

This project provides scripts for deploying a Celestia Light Node on an AWS Linux instance. Celestia is a decentralized network for blockchain interoperability, enabling users to connect to various blockchains and access their functionalities through a unified interface.

## Features

- Automated deployment process: Scripts automate the setup of the environment, installation of Celestia Node, and configuration of Celestia Light Node daemon.
- Easy to use: Simply run the provided script to initiate the deployment process.
- Versatile deployment: Can be used on AWS Linux instances or similar environments.

## Prerequisites

- AWS Linux instance (or similar environment)
- Access to sudo privileges
- Internet connection

## Installation

1. Clone this repository to your local machine or AWS Linux instance:

    ```
    git clone https://github.com/yourusername/celestia-node-deployment.git
    ```

2. Navigate to the project directory:

    ```
    cd celestia-node-deployment
    ```

3. Run the deployment script:

    ```
    ./run.sh
    ```

## Usage

1. **setup_env.sh**: This script sets up the environment by updating system packages, installing necessary dependencies, and configuring Go.

2. **install_celestia.sh**: This script installs Celestia Node by cloning the repository, checking out the desired version tag, building Celestia Node, and verifying the installation.

3. **celestia_config.sh**: This script initializes celestia node, create the connection key and the wallet associated with the light node.

4. **start_celestia_lightd.sh**: This script configures Celestia Light Node daemon as a systemd service, enabling automatic startup and management.

5. **run.sh**: This is the main deployment script that orchestrates the execution of the above scripts in the correct sequence.

## Configuration

- Ensure that you have noted the Celestia wallet address and passphrase generated during the `./cel-key add` command. You will need these details for configuring and interacting with your Celestia Light Node.

## Support

For any issues or questions regarding this project, please [open an issue](https://github.com/yourusername/celestia-node-deployment/issues) on GitHub.

## Contributing

Contributions are welcome! Feel free to submit pull requests to enhance the functionality or documentation of this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
