# K3s AWS Infrastructure 🚀

[![GitHub](https://img.shields.io/badge/GitHub-K3s_AWS_Infra-blue?style=flat&logo=github)](https://github.com/TheToriqul/K3s-AWS-Infra)
[![GitHub stars](https://img.shields.io/github/stars/TheToriqul/K3s-AWS-Infra?style=social)](https://github.com/TheToriqul/K3s-AWS-Infra/stargazers)
[![AWS](https://img.shields.io/badge/AWS-Infrastructure-orange?style=flat&logo=amazon-aws)](https://aws.amazon.com/)
[![K3s](https://img.shields.io/badge/K3s-v1.30.5-blue?style=flat&logo=kubernetes)](https://k3s.io/)

## 📋 Description
A production-ready infrastructure setup for deploying K3s Kubernetes clusters on AWS EC2 instances. This project provides automated deployment of a lightweight Kubernetes distribution using Ubuntu instances in a custom VPC configuration.

## 📁 Project Architecture
See the project architecture diagram in the repository for a visual representation of the infrastructure setup.
   <figure >
    <p align="center">
        <img src="./assets/diagram.png" alt="project architecture" />
        <p align="center">Project Architecture</p> 
    </p>
   </figure>

## 🛠️ Technologies Used
- AWS EC2 (t2.micro instances)
- K3s v1.30.5+k3s1
- Ubuntu Server 24.04 LTS
- Custom VPC Setup
- AWS Security Groups
- Route Tables & Internet Gateway

## ✨ Key Features
- Automated K3s cluster deployment on AWS
- Single master and two worker node architecture
- Secure VPC configuration with public subnet
- Custom route table configuration
- Free tier eligible setup

## 📥 Installation

1. VPC Setup:
```bash
# Create VPC with following configuration:
VPC Name: K3S-VPC
IPv4 CIDR: 10.10.0.0/16
```

2. Subnet Configuration:
```bash
# Create public subnet
Name: K3S-Public
IPv4 CIDR: 10.10.1.0/24
Availability Zone: ap-southeast-1a
```

3. Route Table Setup:
```bash
# Create and configure route table
Name: K3S-RT
VPC: K3S-VPC
```

4. Launch EC2 Instances:
```bash
# Launch 3 instances with:
AMI: Ubuntu Server 24.04 LTS
Instance Type: t2.micro
VPC: K3S-VPC
Subnet: K3S-Public
```

## 🚀 Usage

1. Install K3s on Master Node:
```bash
curl -sfL https://get.k3s.io | sh -
```

2. Get Node Token:
```bash
sudo cat /var/lib/rancher/k3s/server/node-token
```

3. Join Worker Nodes (using actual configuration from screenshots):
```bash
curl -sfL https://get.k3s.io | K3S_URL=https://10.10.1.196:6443 K3S_TOKEN=K107c3d360260a4d65fb8cb2be3e5b0ea158b5a2f67bd6898ecc895030fb7ce0fa4::server:83ec5905b3dbbb1fc8736ca86a11b2e6 sh -
```

## ⚙️ Configuration
1. VPC Configuration:
   - CIDR: 10.10.0.0/16
   - Public Subnet: 10.10.1.0/24
   - Internet Gateway enabled
   - Route tables configured for internet access

2. Security Group Configuration:
   - K3s required ports (6443, 80, 443)
   - SSH access (22)
   - Inter-node communication

## 🎯 Learning Objectives
- Understanding Kubernetes architecture and deployment
- AWS infrastructure management
- Network security and VPC configuration
- Container orchestration with K3s
- Infrastructure as Code principles

## 📚 How to Use This Repository

1. Study the documentation and architecture
2. Follow step-by-step deployment guides
3. Experiment with sample applications
4. Clean up resources:
```bash
aws ec2 terminate-instances --instance-ids <instance-id>
```

## 📝 Notes
- Suitable for development and small production environments
- Regularly update security groups and access controls
- Monitor AWS costs and resource usage

## 🔮 Further Learning
- Implement automated scaling
- Add monitoring and logging solutions
- Explore K3s high availability setup
- Implement GitOps workflows
- Add Infrastructure as Code using Terraform

## 📚 Resources
- [Poridhi](https://poridhi.io/)
- [K3s Documentation](https://docs.k3s.io/)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)

## 🤝 Contributing
1. Fork the repository
2. Create a feature branch
3. Commit changes
4. Push to the branch
5. Open a pull request

## 📫 Contact
For any questions or inquiries:
- 📧 Email: toriqul.int@gmail.com
- 📱 Phone: +65 8936 7705, +8801765 939006

## 🔗 Project Links
- [GitHub Repository](https://github.com/TheToriqul/K3s-AWS-Infra)

## 🙏 Acknowledgments
- Poridhi lab team
- K3s team for the lightweight Kubernetes distribution
- AWS for the cloud infrastructure platform
- Open source community contributors

---
Feel free to explore, modify, and expand upon this configuration as part of my learning journey!