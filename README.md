\# Linux Infrastructure Server



> A production-style Linux Infrastructure project built on \*\*Ubuntu Server 26.04 LTS\*\* demonstrating Linux System Administration, Networking, Security, Web Hosting, Automation, and User Management.



\---



\## Project Overview



This project simulates the deployment of a small enterprise Linux Infrastructure Server from scratch.



The server was built inside VMware Workstation and configured manually using Linux administration best practices. The project demonstrates practical experience with server deployment, SSH, Linux permissions, Nginx, Virtual Hosts, HTTPS, UFW Firewall, Bash scripting, Cron Jobs, and Log Management.



Every major configuration step has been documented with screenshots, configuration files, scripts, and troubleshooting notes.



\---



\## Project Objectives



\- Build an Ubuntu Linux Server

\- Configure a Static IP Address

\- Enable Secure SSH Remote Administration

\- Create Linux Users and Groups

\- Configure File \& Directory Permissions

\- Implement SetGID

\- Install and Configure Nginx

\- Configure Multiple Virtual Hosts

\- Configure Local DNS Resolution

\- Enable HTTPS using a Self-Signed SSL Certificate

\- Configure UFW Firewall

\- Automate Server Backups

\- Schedule Cron Jobs

\- Monitor Nginx Logs

\- Document the complete infrastructure



\---



\# Technologies Used



| Technology | Purpose |

|------------|---------|

| Ubuntu Server 26.04 LTS | Operating System |

| VMware Workstation | Virtualization |

| OpenSSH | Remote Administration |

| Nginx | Web Server |

| UFW | Firewall |

| Bash | Automation |

| Cron | Task Scheduling |

| OpenSSL | SSL Certificate |

| Netplan | Network Configuration |

| HTML | Demo Websites |



\---



\# Project Architecture



```

&#x20;               Windows Host

&#x20;                     │

&#x20;                     │

&#x20;            VMware Workstation

&#x20;                     │

&#x20;         Ubuntu Server 26.04 LTS

&#x20;                     │

&#x20;    ┌────────────────┼────────────────┐

&#x20;    │                │                │

&#x20;   SSH            Nginx             UFW

&#x20;    │                │                │

&#x20;    │          Virtual Hosts          │

&#x20;    │                │                │

&#x20;    │     venkytech.com               │

&#x20;    │     it.venkytech.com            │

&#x20;    │     hr.venkytech.com            │

&#x20;    │                │                │

&#x20;    └────────── Cron + Backup ────────┘

```



\---



\# Project Features



\- Ubuntu Server Installation

\- Static IP Configuration

\- SSH Remote Login

\- Linux User Management

\- Linux Group Management

\- File Ownership

\- File Permissions

\- SetGID

\- Nginx Installation

\- Multiple Virtual Hosts

\- Local DNS Resolution

\- HTTPS Configuration

\- UFW Firewall

\- Backup Script

\- Cron Job Scheduling

\- Access Log Monitoring

\- Error Log Monitoring



\---



\# Repository Structure



```

linux-infrastructure-server/



├── architecture/

├── assets/

├── configs/

│   ├── cron.txt

│   ├── firewall.txt

│   ├── netplan.txt

│   ├── nginx.txt

│   └── ssh.txt

│

├── docs/

│   ├── handbook/

│   ├── interview-guide/

│   ├── notes/

│   └── troubleshooting/

│

├── screenshots/

├── scripts/

│   └── backup.sh

│

├── README.md

├── LICENSE

└── .gitignore

```



\---



\# Implementation



\## 1. Ubuntu Server Installation



Installed Ubuntu Server inside VMware Workstation.



\### Outcome



\- Ubuntu installed successfully

\- Server booted correctly



Screenshot



```

screenshots/01-ubuntu-server-installed.png

```



\---



\## 2. Static IP Configuration



Configured a permanent IP address using Netplan.



\### Outcome



\- Static IP assigned

\- Network connectivity verified



Screenshot



```

screenshots/02-static-ip-config.png

```



\---



\## 3. SSH Configuration



Installed and enabled OpenSSH Server.



Verified remote login from another machine.



\### Outcome



\- SSH running

\- Remote login successful



Screenshots



```

screenshots/03-ssh-service.png

screenshots/04-ssh-remote-login.png

```



\---



\## 4. Linux User Management



Created multiple users for different departments.



Example



\- Venky

\- Ahmed

\- Priya

\- Sara



\### Outcome



\- Users created successfully



Screenshot



```

screenshots/05-users-created.png

```



\---



\## 5. Linux Groups



Created departmental groups.



\- IT

\- HR

\- Finance



\### Outcome



\- Groups assigned successfully



Screenshot



```

screenshots/06-groups-created.png

```



\---



\## 6. Linux Permissions



Configured directory ownership and permissions.



Topics covered



\- chmod

\- chown

\- chgrp



\### Outcome



\- Correct permission model implemented



Screenshots



```

screenshots/07-directory-permissions.png



screenshots/08-file-permissions.png



screenshots/09-permission-denied.png

```



\---



\## 7. SetGID



Enabled SetGID to inherit group ownership automatically.



\### Outcome



New files automatically inherit the parent directory group.



Screenshots



```

screenshots/10-setgid-enabled.png



screenshots/11-group-inheritance.png

```



\---



\## 8. Nginx Installation



Installed Nginx Web Server.



Verified service status.



Screenshot



```

screenshots/12-nginx-service.png

```



\---



\## 9. Default Nginx Page



Verified default web page.



Screenshot



```

screenshots/13-nginx-default-page.png

```



\---



\## 10. Nginx Server Blocks



Configured custom virtual hosts.



Domains



\- venkytech.com

\- it.venkytech.com

\- hr.venkytech.com



Configuration verified using



```

nginx -t

```



Screenshots



```

screenshots/14-server-block-config.png



screenshots/15-nginx-test.png

```



\---



\## 11. Virtual Hosts



Configured three independent websites.



Screenshots



```

screenshots/16-main-site.png



screenshots/17-it-site.png



screenshots/18-hr-site.png

```



\---



\## 12. HTTPS



Configured Self-Signed SSL Certificate.



Screenshot



```

screenshots/19-https-enabled.png

```



\---



\## 13. UFW Firewall



Enabled firewall.



Configured rules for



\- SSH

\- HTTP

\- HTTPS



Screenshots



```

screenshots/20-ufw-status.png



screenshots/21-firewall-rules.png

```

---

# 14. Bash Backup Script

To automate server maintenance, a custom Bash script was developed to back up important server files.

The script performs the following tasks:

- Creates a timestamped backup directory
- Copies the Nginx configuration
- Copies all website files
- Organizes backups by date and time

### Script Location

```text
scripts/backup.sh
```

### Screenshot

```text
screenshots/22-backup-script.png
```

### Backup Result

```text
screenshots/23-backup-created.png
```

---

# 15. Cron Job Automation

The backup process was automated using Cron.

Cron executes the backup script automatically every day at **2:00 AM**.

Example Cron Job

```cron
0 2 * * * /backup.sh
```

### Screenshot

```text
screenshots/24-crontab.png
```

Cron Service

```text
screenshots/25-cron-service.png
```

---

# 16. Log Monitoring

Nginx log files were used to monitor server activity and troubleshoot issues.

Logs studied:

- access.log
- error.log

Commands Used

```bash
tail -f /var/log/nginx/access.log

tail -f /var/log/nginx/error.log
```

Screenshots

```text
screenshots/26-access-log.png

screenshots/27-error-log.png
```

---

# Final Project Demonstration

The final screenshot demonstrates the completed Linux Infrastructure Server.

It confirms:

- Ubuntu Server running
- SSH Service running
- Nginx running
- Website accessible
- Infrastructure operational

Screenshot

```text
screenshots/28-final-project-demo.png
```

---

# Configuration Files

This repository also includes the actual configuration files used during implementation.

| File | Description |
|------|-------------|
| nginx.txt | Nginx configuration |
| ssh.txt | SSH configuration |
| firewall.txt | UFW Firewall configuration |
| netplan.txt | Static IP configuration |
| cron.txt | Cron configuration |

---

# Scripts

The following automation script is included.

| Script | Purpose |
|---------|----------|
| backup.sh | Automated backup of Nginx configuration and website files |

---

# Skills Demonstrated

This project demonstrates practical experience in:

- Linux System Administration
- Ubuntu Server
- Virtualization
- Networking
- Static IP Configuration
- SSH Administration
- Linux Users & Groups
- Linux Permissions
- SetGID
- Web Server Administration
- Nginx
- Virtual Hosts
- HTTPS Configuration
- UFW Firewall
- Bash Scripting
- Cron Jobs
- Log Analysis
- Troubleshooting
- Technical Documentation

---

# Testing & Validation

Every major configuration was manually tested and verified throughout the project.

Validation included:

- Verifying network connectivity
- Confirming SSH remote login
- Testing Linux permissions with multiple users
- Validating Nginx configuration using:

```bash
sudo nginx -t
```

- Confirming website accessibility
- Verifying HTTPS functionality
- Checking UFW firewall rules
- Running the backup script manually
- Confirming Cron configuration
- Monitoring Nginx access and error logs

---

# Challenges Faced

Several practical issues were encountered during implementation.

Examples include:

- Incorrect Netplan YAML indentation
- Wrong file paths
- Incorrect Linux permissions
- "Permission Denied" errors
- Nginx configuration syntax errors
- Typographical mistakes such as `kserver`
- Hosts file configuration issues
- Default Nginx page appearing instead of the configured website
- Backup script variable expansion issues
- Cron syntax mistakes

Each problem was investigated, resolved, and documented.

---

# Lessons Learned

The most valuable lesson from this project was understanding that Linux administration is not about memorizing commands but about understanding how different infrastructure components work together.

Key takeaways include:

- Always verify configurations before deployment.
- Read error messages carefully before making changes.
- Use logs for troubleshooting instead of guessing.
- Test configurations after every modification.
- Document every step for future reference.
- Automation reduces repetitive manual work.
- Troubleshooting skills are more valuable than memorizing commands.

---

# Future Improvements

Possible future enhancements include:

- Configure SSH Key Authentication
- Implement Fail2Ban
- Configure Log Rotation
- Deploy MySQL or PostgreSQL
- Containerize services using Docker
- Automate deployment using Ansible
- Deploy to AWS or Azure
- Configure Let's Encrypt SSL certificates
- Implement Prometheus and Grafana monitoring

---

# Project Statistics

| Item | Count |
|------|------:|
| Linux Handbook | 150+ Pages |
| Screenshots | 28 |
| Interview Questions | 100 |
| Troubleshooting Scenarios | 10 |
| Bash Scripts | 1 |
| Websites Hosted | 3 |
| Virtual Machines | 2 |
| Documentation Chapters | 17 |

---

# Project Outcome

This project successfully demonstrates the deployment and administration of a Linux Infrastructure Server using Ubuntu Server.

The completed infrastructure includes networking, remote administration, user and permission management, web hosting, firewall configuration, backup automation, scheduled tasks, and monitoring.

Beyond building the server, the project also emphasizes documentation, troubleshooting, and systematic problem solving, providing a practical portfolio piece for entry-level Linux System Administration and IT Support roles.

---

# Author

**Venky**

Linux Infrastructure | System Administration | IT Support

This repository represents a hands-on learning project built to strengthen practical Linux administration skills through implementation, troubleshooting, and documentation.

---

## Acknowledgements

This project was completed through consistent hands-on practice, experimentation, troubleshooting, and documentation. Every configuration, error, and solution contributed to a deeper understanding of Linux system administration and server infrastructure.