# 🚀 Linux Infrastructure Server

> A hands-on Linux Infrastructure Server project built from scratch
> using **Ubuntu Server 26.04 LTS** inside **VMware Workstation**.

------------------------------------------------------------------------

## 📌 Overview

This repository documents the complete implementation of a Linux
Infrastructure Server. Every configuration was performed manually,
tested, troubleshooted, and documented.

## ✨ Features

-   Ubuntu Server Installation
-   Static IP Configuration
-   SSH Remote Administration
-   Linux Users & Groups
-   File Permissions & SetGID
-   Nginx Web Server
-   Virtual Hosts
-   HTTPS (Self-Signed SSL)
-   UFW Firewall
-   Bash Backup Script
-   Cron Job Automation
-   Log Monitoring

------------------------------------------------------------------------

## 🛠️ Technology Stack

  Technology                Purpose
  ------------------------- -------------------------
  Ubuntu Server 26.04 LTS   Operating System
  VMware Workstation        Virtualization
  OpenSSH                   Remote Administration
  Nginx                     Web Server
  UFW                       Firewall
  Bash                      Automation
  Cron                      Task Scheduling
  OpenSSL                   Self-Signed SSL
  Netplan                   Static IP Configuration

------------------------------------------------------------------------

## 🏗️ Architecture

``` text
Windows Host
    |
VMware Workstation
    |
Ubuntu Server
    |
+-- SSH
+-- Nginx
|   +-- venkytech.com
|   +-- it.venkytech.com
|   +-- hr.venkytech.com
+-- UFW Firewall
+-- Bash Backup
+-- Cron
```

------------------------------------------------------------------------

## 📂 Repository Structure

``` text
linux-infrastructure-server/
├── configs/
├── screenshots/
├── scripts/
├── docs/
├── architecture/
├── assets/
├── README.md
├── LICENSE
└── .gitignore
```

------------------------------------------------------------------------

## 💡 Skills Demonstrated

-   Linux Administration
-   Networking
-   SSH
-   User & Group Management
-   Nginx Administration
-   Firewall Management
-   Bash Scripting
-   Cron Jobs
-   Troubleshooting
-   Git & GitHub

------------------------------------------------------------------------

## 🚧 Future Improvements

-   SSH Key Authentication
-   Fail2Ban
-   Docker
-   Ansible
-   Cloud Deployment

------------------------------------------------------------------------

## 👨‍💻 Author

**Venkatesh Jatroth**

Linux • System Administration • IT Support
