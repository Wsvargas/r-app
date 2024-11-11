# R Docker App 📊🚀

**R Docker App** is a simple R application that prints **"Hello from R!"** to the console. This project is containerized with Docker, making it easy to deploy and run across different environments. 🌍

## Project Structure 📁

The structure of the project is organized as follows:

```
r-app/
│
├── app.R              # Main R application code.
├── Dockerfile         # Dockerfile to build the container image.
└── README.md          # Project documentation.
```

### Requirements 📋

To run this project locally or in Docker, you need to have:

1. **R 3.0 or higher** 📊
2. **Docker** 🐳
3. **Git** (to clone the repository)

### Local Installation and Execution 🛠️

#### 1. Clone the Repository 📥

Clone the repository using Git:

```bash
git clone https://github.com/wsvargas/r-app.git
cd r-app
```

#### 2. Run the Program Locally 🔍

To run the program locally (outside of Docker), use the following command:

```bash
Rscript app.R
```

You should see the message `"Hello from R!"` displayed in the console.

## Docker Hub Launch Manual 🐋

To run the project directly from Docker Hub:

### 1. Download the Image 📦

Download the image from Docker Hub with:

```bash
docker pull wsvargas/r-app:latest
```

### 2. Run the Container 🚀

After downloading the image, start the container:

```bash
docker run wsvargas/r-app:latest
```

This will execute the R application in the container, displaying the message in the console.

## Notes 📝

- Make sure Docker is running on your machine.
- If you encounter issues running the container, check that Docker is installed and configured correctly.

## Credits 👨‍💻

Project developed by **wsvargas**. Find more projects on [GitHub](https://github.com/wsvargas).
