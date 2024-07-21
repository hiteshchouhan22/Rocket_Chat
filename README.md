# Rocket Chat App Built Using AWS BedRock

      ___           ___           ___           ___           ___                   
     /\  \         /\  \         /\__\         /|  |         /\__\                  
    /::\  \       /::\  \       /:/  /        |:|  |        /:/ _/_         ___     
   /:/\:\__\     /:/\:\  \     /:/  /         |:|  |       /:/ /\__\       /\__\    
  /:/ /:/  /    /:/  \:\  \   /:/  /  ___   __|:|  |      /:/ /:/ _/_     /:/  /    
 /:/_/:/__/___ /:/__/ \:\__\ /:/__/  /\__\ /\ |:|__|____ /:/_/:/ /\__\   /:/__/     
 \:\/:::::/  / \:\  \ /:/  / \:\  \ /:/  / \:\/:::::/__/ \:\/:/ /:/  /  /::\  \     
  \::/~~/~~~~   \:\  /:/  /   \:\  /:/  /   \::/~~/~      \::/_/:/  /  /:/\:\  \    
   \:\~~\        \:\/:/  /     \:\/:/  /     \:\~~\        \:\/:/  /   \/__\:\  \   
    \:\__\        \::/  /       \::/  /       \:\__\        \::/  /         \:\__\  
     \/__/         \/__/         \/__/         \/__/         \/__/           \/__/  
      ___           ___           ___                                                
     /\__\         /\  \         /\  \                                               
    /:/  /         \:\  \       /::\  \         ___                                 
   /:/  /           \:\  \     /:/\:\  \       /\__\                                
  /:/  /  ___   ___ /::\  \   /:/ /::\  \     /:/  /                                
 /:/__/  /\__\ /\  /:/\:\__\ /:/_/:/\:\__\   /:/__/                                 
 \:\  \ /:/  / \:\/:/  \/__/ \:\/:/  \/__/  /::\  \                                 
  \:\  /:/  /   \::/__/       \::/__/      /:/\:\  \                                
   \:\/:/  /     \:\  \        \:\  \      \/__\:\  \                               
    \::/  /       \:\__\        \:\__\          \:\__\                              
     \/__/         \/__/         \/__/           \/__/                              

## Overview

Welcome to the Rocket Chat App, a cutting-edge chat application built leveraging the powerful AWS BedRock infrastructure. This project is designed for the AWS GenAI Bootcamp and demonstrates the integration of various AWS services and modern technologies to create a robust and scalable chat application.

## Features

- **Real-time Messaging**: Enables users to communicate instantly with low latency.
- **RAG (Retrieval-Augmented Generation)**: Utilizes advanced retrieval techniques to provide relevant information.
- **StreamLit Integration**: Provides a seamless and interactive user interface.
- **S3 Storage**: Efficiently stores and retrieves chat data.
- **AWS Titan Embeddings**: Enhances the search and retrieval capabilities with powerful embeddings.
- **AWS Titan Text Lite Model**: Ensures accurate and context-aware text generation.

## Tech Stack

- **RAG**: Retrieval-Augmented Generation for enhanced information retrieval.
- **StreamLit**: Framework for creating interactive web applications.
- **Amazon S3**: Scalable storage solution for storing chat data.
- **AWS Titan Embeddings**: Advanced embeddings for better search capabilities.
- **AWS Titan Text Lite Model**: Lightweight text generation model for efficient performance.

## Getting Started

### Prerequisites

- Docker
- AWS CLI configured with necessary permissions
- Git

### Installation

1. **Clone the Repository**

    ```sh
    git clone github.com/hiteshchouhan22/Rocket_Chat.git
    cd Rocket_Chat
    ```

2. **Build and Run Docker Containers**

    ```sh
    ./run-docker.sh
    ```

### Running the Application

The application consists of two main Docker containers: `rocket_chat:admin` and `rocket_chat:user`. These containers can be run using the provided shell script.

```sh
./run-docker.sh

```

## Project Structure
Admin: Contains the Docker configuration and scripts for the admin functionalities.
User: Contains the Docker configuration and scripts for user functionalities.
scripts: Contains helper scripts, including the run-docker.sh for setting up and running the application.



## Acknowledgements
 The AWS GenAI Bootcamp for the inspiration and guidance.


## License
This project is licensed under the MIT License - see the LICENSE file for details.
