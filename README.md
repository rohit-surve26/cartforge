# CartForge — Jenkins CI/CD Project

## 📌 Project Overview

CartForge is a Node.js application used to demonstrate a complete Continuous Integration (CI) workflow using GitHub and Jenkins.

The project integrates GitHub with Jenkins through a webhook. Whenever a developer pushes a change to the `main` branch, GitHub automatically notifies Jenkins and triggers the CartForge pipeline.

## 🏗️ CI/CD Architecture

```text
Developer
    |
    | git push
    v
GitHub Repository
    |
    | Webhook
    v
Jenkins
    |
    v
CartForge-Pipeline
    |
    +--> Clone Source Code
    |
    +--> Install Dependencies
    |
    +--> Build Application
    |
    +--> Run Tests
    |
    +--> Package Application
    |
    +--> Deliver Artifact
    |
    v
cartforge-application.tar.gz
```

## 🛠️ Technologies Used

* Git
* GitHub
* Jenkins
* Node.js
* npm
* Linux / Ubuntu
* GitHub Webhooks
* Jenkins Pipeline

## 🔄 Jenkins Pipeline

The CartForge Jenkins pipeline contains the following stages:

### 1. Clone Source Code

Jenkins retrieves the latest source code from the GitHub repository.

### 2. Install Dependencies

The required Node.js dependencies are installed using npm.

### 3. Build Application

The application build process is executed.

### 4. Run Tests

Automated tests are executed to verify the application.

### 5. Package Application

The application is packaged into:

```text
cartforge-application.tar.gz
```

### 6. Deliver Artifact

The generated artifact is delivered and made available from the Jenkins build.

## 🔗 GitHub Webhook Integration

GitHub is configured with a webhook that communicates with Jenkins.

The workflow is:

```text
git push
   ↓
GitHub
   ↓
Webhook
   ↓
Jenkins
   ↓
CartForge-Pipeline
   ↓
Build
```

This allows the pipeline to run automatically whenever changes are pushed to the repository.

## ✅ Pipeline Results

The pipeline was successfully tested with multiple builds.

* Build #1 — SUCCESS
* Build #2 — SUCCESS
* Subsequent build triggered automatically after updating the project

Build #2 completed all six pipeline stages successfully in approximately 16 seconds.

## 📦 Build Artifact

The pipeline generates the following artifact:

```text
cartforge-application.tar.gz
```

Recorded artifact size:

```text
36.17 KiB
```

## 📁 Project Structure

```text
cartforge/
├── Jenkinsfile
├── package.json
├── package-lock.json
├── pipeline-report.txt
├── README.md
└── application source files
```

## 🚀 Running the Project Locally

Clone the repository:

```bash
git clone https://github.com/rohit-surve26/cartforge.git
```

Enter the project directory:

```bash
cd cartforge
```

Install dependencies:

```bash
npm install
```

Run the available application command defined in `package.json`.

## 🔧 Jenkins Setup

The Jenkins pipeline is configured to:

1. Connect to the GitHub repository.
2. Detect GitHub push events through the webhook.
3. Retrieve the latest source code.
4. Execute the Jenkinsfile.
5. Run all defined CI stages.
6. Generate the application artifact.

## 📸 Project Evidence

Project screenshots are maintained separately in the local project documentation.

Example screenshots include:

```text
screenshots/
├── jenkins-dashboard.png
├── freestyle-job.png
├── pipeline-stage-view.png
├── agent-online.png
└── webhook-trigger.png
```

These screenshots provide evidence of the Jenkins configuration, pipeline execution, agent status, and GitHub webhook integration.

## 📊 CI/CD Workflow Summary

```text
Developer
    ↓
Git Commit
    ↓
Git Push
    ↓
GitHub
    ↓
GitHub Webhook
    ↓
Jenkins
    ↓
CartForge-Pipeline
    ↓
Clone
    ↓
Install
    ↓
Build
    ↓
Test
    ↓
Package
    ↓
Deliver Artifact
```

## 🔮 Future Improvements

The project can be extended with:

* Docker image creation
* Docker Hub or container registry integration
* Kubernetes deployment
* AWS deployment
* Automated staging deployment
* Security and dependency scanning
* Code-quality analysis
* Test coverage reporting
* Build notifications
* Production deployment approvals
* Automated rollback

## 🎯 Conclusion

CartForge demonstrates a working GitHub-to-Jenkins Continuous Integration workflow.

The project successfully implements automated source-code retrieval, dependency installation, application building, testing, packaging, artifact delivery, and GitHub webhook-triggered Jenkins builds.

This project provides a foundation for extending the pipeline toward complete CI/CD with Docker, Kubernetes, and cloud deployment.

