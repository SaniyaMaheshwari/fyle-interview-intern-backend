# Instructions to Dockerize the app

This README provides instructions on how to build and run the Dockerized Flask application, as well as how to prepare the environment for running test cases.

## Prerequisites

Ensure you have the Docker installed on your system

## Building and Running the Application

1. **Clone the repository** (if you haven't already):

    ```sh
    git clone https://github.com/SaniyaMaheshwari/fyle-interview-intern-backend
    cd fyle-interview-intern-backend
    ```

2. **Build and start the application**:

    ```sh
    docker-compose up --build
    ```

    This command will build the Docker image as specified in the `Dockerfile` and `docker-compose.yml` file and start the application in a container. The application will be accessible at:

    ```
    http://localhost:7755/
    ```

## Running Tests

Before running tests, you need to reset the database to ensure the tests pass successfully.
