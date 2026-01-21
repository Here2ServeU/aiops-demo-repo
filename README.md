# AIOps Demo: Express Web App + AI-Assisted Remediation

## **Welcome to the AIOps Transformation Demo**

In today’s tech landscape, the most valuable engineers aren't just those who can build a website—they are the ones who can keep it running automatically. This project is a real-world demonstration of **AIOps (Artificial Intelligence for IT Operations)**.

### **What is this?**

This repository provides a complete, "push-button" environment that simulates a professional Cloud Engineering ecosystem. You will move from manual troubleshooting to **automated, AI-assisted remediation**.

### **Why does this matter for your career?**

* **High-Demand Skills:** Master the "Big Three" of modern operations: **Docker** (Infrastructure), **Prometheus/Grafana** (Observability), and **Python** (Automation).
* **Six-Figure Roadmap:** Companies are shifting toward automated AIOps. Learning these tools puts you on the fast track to becoming a high-earning Cloud or Site Reliability Engineer (SRE).
* **Zero to Hero:** You don't need a math degree or a lifelong coding background. This demo proves that with the right roadmap, you can manage complex systems with simple, powerful commands.

---

## **Quick Start (5-Minute Setup)**

1. **Clone the Repo:**
```bash
git clone https://github.com/Here2ServeU/aiops-demo-t2s
cd aiops-demo-t2s

```


2. **Configure Environment:**
`cp .env.example .env` (Edit `.env` to add your `SLACK_WEBHOOK_URL`).
3. **Start the Stack:**
```bash
docker compose up -d --build

```


4. **Access Services:**
* **App:** http://localhost:3000
* **Grafana:** http://localhost:3001 (admin/admin)
* **Prometheus:** http://localhost:9090
* **Alertmanager:** http://localhost:9093



---

## **Documentation & Learning Path**

To get the most out of this platform, explore these detailed guides:

* **[Deployment & Validation Guide](https://github.com/Here2ServeU/aiops-demo-t2s/blob/main/docs/DEPLOYMENT.md)** – Step-by-step instructions to get everything running perfectly.
* **[Architecture Deep Dive](https://github.com/Here2ServeU/aiops-demo-t2s/blob/main/docs/ARCHITECTURE.md)** – A full technical breakdown of every file and how they work together.
* **[Slack Integration Setup](https://github.com/Here2ServeU/aiops-demo-t2s/blob/main/docs/SLACK_SETUP.md)** – How to connect your system to real-time alerts.
* **[Troubleshooting Guide](https://github.com/Here2ServeU/aiops-demo-t2s/blob/main/docs/TROUBLESHOOTING.md)** – Quick fixes for common Docker and connection errors.


---

### **Cleanup & Resource Management**

To stop the demonstration and free up system resources, use the following commands:

* **Stop and Remove Containers:**
```bash
docker compose down

```


* **Complete Reset (Deletes Volumes & Data):**
If you want to start from scratch and clear all stored metrics and logs, run:
```bash
docker compose down -v

```


* **Prune Unused Images:**
To reclaim disk space by removing images no longer in use:
```bash
docker image prune -f

```


---

### **The Evolution: Scaling to the AWS Cloud**

While this demo runs locally using Docker Compose, real-world AIOps scales using AWS managed services. Here is how this platform evolves as you grow:

* **ECR (Amazon Elastic Container Registry):** Instead of keeping images on your local machine, we move them to **ECR**. This is a secure, private "cloud library" for your Docker images, ensuring they are always available for deployment.
* **ECS (Amazon Elastic Container Service):** This is the next step up from Docker Compose. **ECS** manages your containers for you, automatically restarting them if they fail and handling the "heavy lifting" of running your Express app in a production environment.
* **EKS (Amazon Elastic Kubernetes Service):** For maximum scale, we transition to **EKS**. This is the industry standard for managing thousands of containers. It provides the most advanced AIOps capabilities, allowing for complex, self-healing architectures that span across the globe.



---

## **Join the Community**

This project is maintained by **Rev. Dr. Emmanuel Naweji** as part of the **Transformed2Succeed** initiative. Our mission is to help people transition into high-paying tech careers through hands-on, practical learning.

* **Website:** [transformed2succeed.com](https://www.transformed2succeed.com)
* **Youtube:** [youtube.com/@TechWithEmmanuel](https://www.youtube.com/@TechWithEmmanuel)
* **Questions?** Text/WhatsApp +1 (605) 941-7280 or reply to our session emails.

