# 🚀 Terraform Modules Project – AWS Infrastructure Automation


<p align="center">
  <img src="https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" />
  <img src="https://img.shields.io/badge/AWS-Cloud%20Infrastructure-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" />
  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" />
</p>

<p align="center">
  <b>Building Reusable, Scalable & Maintainable AWS Infrastructure Using Terraform Modules</b>
</p>


---

## 📌 Project Overview

This project demonstrates how to automate AWS infrastructure provisioning using **Terraform Modules**.

The main objective is to create reusable and maintainable Terraform code by dividing infrastructure components into separate modules.

Instead of writing all AWS resources in a single Terraform configuration, this project uses independent modules for VPC, EC2 instances, and S3 buckets.

This modular approach improves code reusability, organization, scalability, and infrastructure management.

## 🏗️ AWS Architecture

The project provisions the following AWS resources:

- **Amazon VPC:** Creates a Virtual Private Cloud.
- **Public Subnet:** Creates a public subnet inside the VPC.
- **Amazon EC2:** Launches an EC2 instance inside the public subnet.
- **Amazon S3:** Creates an S3 bucket for storage.

### Architecture Flow

```text
              Terraform Root Module
                       |
             +---------+---------+
             |         |         |
             V         V         V
          VPC       EC2       S3 Bucket
         Module    Module     Module
             |
             V
         AWS VPC
             |
             V
        Public Subnet
             |
             V
         EC2 Instance
```

## 🛠️ Technologies Used

| Technology   | Purpose                          |
| ------------ | -------------------------------- |
| Terraform    | Infrastructure as Code           |
| AWS          | Cloud Infrastructure             |
| AWS VPC      | Network Isolation                |
| AWS EC2      | Compute Resources                |
| AWS S3       | Object Storage                   |
| HCL          | Terraform Configuration Language |
| Git & GitHub | Version Control                  |

## 📂 Project Structure

```text
Terraform-modules-Project/
│
├── modules/
│   │
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── ec2-instances/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── s3-bucket/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── backend.tf
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── output.tf
└── .gitignore
```

## ⚙️ Terraform Modules Explained

### 1. VPC Module

Responsible for creating:

- AWS Virtual Private Cloud (VPC).
- Public Subnet.
- Configurable CIDR blocks.
- Availability Zone configuration.

### 2. EC2 Module

Responsible for creating:

- AWS EC2 Instance.
- Configurable AMI ID.
- Configurable Instance Type.
- Instance deployment inside the VPC public subnet.

### 3. S3 Module

Responsible for creating:

- Amazon S3 Bucket.
- Configurable bucket name.
- S3 bucket management through Terraform.

## 🚀 How to Deploy This Project

### Prerequisites

Make sure you have:

- AWS Account
- AWS CLI installed
- Terraform installed
- Git installed
- AWS credentials configured

### Step 1: Clone the Repository

```bash
git clone https://github.com/abhisheksaste31-source/Terraform-modules-Project.git

cd Terraform-modules-Project
```

### Step 2: Configure AWS Credentials

```bash
aws configure
```

Provide your AWS Access Key, Secret Key, and default region.

**Note:** Never upload AWS credentials or sensitive information to GitHub.

### Step 3: Initialize Terraform

```bash
terraform init
```

### Step 4: Validate Configuration

```bash
terraform validate
```

### Step 5: Format Terraform Files

```bash
terraform fmt -recursive
```

### Step 6: Review Execution Plan

```bash
terraform plan
```

### Step 7: Deploy Infrastructure

```bash
terraform apply
```

Review the execution plan and confirm with `yes` when ready.

### Step 8: Verify Infrastructure

Verify the created resources in the AWS Management Console or using AWS CLI.

### Step 9: Destroy Infrastructure

After completing your testing, clean up the resources:

```bash
terraform destroy
```

Review the destruction plan before confirming.

## 🎯 Key Learning Outcomes

Through this project, I gained practical knowledge of:

- Understanding Terraform Modules.
- Creating reusable Terraform configurations.
- Working with Module Inputs and Outputs.
- Passing variables between Terraform modules.
- Implementing modular infrastructure architecture.
- Provisioning AWS resources using Terraform.
- Managing infrastructure through Infrastructure as Code (IaC).
- Organizing Terraform projects using best practices.

## 🔐 Best Practices

- Keep reusable infrastructure code inside separate modules.
- Use variables instead of hardcoding configuration values.
- Use outputs to share information between modules.
- Maintain a `.gitignore` file.
- Never commit AWS credentials or Terraform state files.
- Review `terraform plan` before applying infrastructure changes.

## 👨‍💻 Author

**Abhishek Saste**

🚀 Cloud & DevOps Enthusiast

**GitHub:** [abhisheksaste31-source](https://github.com/abhisheksaste31-source)

---


---

<p align="center">
  ⭐ If you find this project useful, please give it a star!
</p>

<p align="center">
  <b>Learn • Build • Automate • Deploy</b>
</p>

<p align="center">
  Made with ❤️ by <b>Abhishek Saste</b>
</p>
