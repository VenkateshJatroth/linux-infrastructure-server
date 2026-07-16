
# **Linux Infrastructure Server**

> A production-style Linux Infrastructure project built on **Ubuntu Server 26.04 LTS** demonstrating Linux System Administration, Networking, Security, Web Hosting, Automation, and User Management.

---

## 🚀 Project Overview

This project simulates the deployment of a small enterprise Linux Infrastructure Server from scratch.

The server was built inside VMware Workstation and configured manually using Linux administration best practices. The project demonstrates practical experience with server deployment, SSH, Linux permissions, Nginx, Virtual Hosts, HTTPS, UFW Firewall, Bash scripting, Cron Jobs, and Log Management.

Every major configuration step has been documented with screenshots, configuration files, scripts, and troubleshooting notes.

---

## 🎯 Project Objectives

- Build an Ubuntu Linux Server
- Configure a Static IP Address
- Enable Secure SSH Remote Administration
- Create Linux Users and Groups
- Configure File & Directory Permissions
- Implement SetGID
- Install and Configure Nginx
- Configure Multiple Virtual Hosts
- Configure Local DNS Resolution
- Enable HTTPS using a Self-Signed SSL Certificate
- Configure UFW Firewall
- Automate Server Backups
- Schedule Cron Jobs
- Monitor Nginx Logs
- Document the complete infrastructure

---

# 🛠️ Technologies Used

| Technology | Purpose |
| :--- | :--- |
| **Ubuntu Server 26.04 LTS** | Operating System |
| **VMware Workstation** | Virtualization |
| **OpenSSH** | Remote Administration |
| **Nginx** | Web Server |
| **UFW** | Firewall |
| **Bash** | Automation |
| **Cron** | Task Scheduling |
| **OpenSSL** | SSL Certificate |
| **Netplan** | Network Configuration |
| **HTML** | Demo Websites |

---

# 📐 Project Architecture

```text
               Windows Host
                     │
                     │
             VMware Workstation
                     │
          Ubuntu Server 26.04 LTS
                     │
     ┌────────────────┼────────────────┐
     │                │                │
    SSH             Nginx             UFW
     │                │                │
     │          Virtual Hosts          │
     │                │                │
     │      venkytech.com              │
     │      it.venkytech.com           │
     │      hr.venkytech.com           │
     │                │                │
     └────────── Cron + Backup ────────┘

```

---

# ✨ Project Features

* Ubuntu Server Installation
* Static IP Configuration
* SSH Remote Login
* Linux User Management
* Linux Group Management
* File Ownership & Permissions (`chmod`, `chown`, `chgrp`)
* SetGID (Directory Group Inheritance)
* Nginx Installation & Virtual Hosts
* Local DNS Resolution via Hosts file
* Self-Signed HTTPS SSL Configuration
* UFW Firewall Hardening
* Automated Bash Backup Scripting
* Cron Job Scheduling (2:00 AM Daily Run)
* Real-time Access and Error Log Monitoring

---

# 📂 Repository Structure

```text
📂 linux-infrastructure-server
 ├── 🎨 architecture/             # Infrastructure topology diagrams and mockups
 ├── 🖼️ assets/                   # Static branding, icons, and handbook assets
 ├── ⚙️ configs/                  # Sanitized production configuration backups
 │    ├── 🕒 cron.conf            # Cron job configurations
 │    ├── 🧱 firewall.conf        # UFW firewall rules & active policies
 │    ├── 🌐 netplan.yaml        # Static IP & Netplan YAML network configuration
 │    ├── 🛡️ nginx.conf           # Active Nginx Server Block rules
 │    └── 🔑 sshd_config          # Hardened SSH daemon settings
 ├── 📄 docs/                    # Complete systems administration documentation
 │    ├── 📘 handbook/           # 150+ Page Linux Infrastructure Server Handbook
 │    ├── 🎯 interview-guide/    # 100+ SysAdmin practice interview questions
 │    ├── 📝 notes/              # Active research and foundational commands
 │    └── 🛠️ troubleshooting/     # Log records of real bugs resolved
 ├── 📸 screenshots/             # 28 validation screenshots of the working lab
 ├── 📜 scripts/                 # System automation and maintenance tools
 │    └── 💾 backup.sh           # Shell script for automated daily backup execution
 ├── 📑 README.md                # Project portal and architecture design overview
 ├── ⚖️ LICENSE                  # Repository open-source usage guidelines
 └── 🙈 .gitignore               # System exclusions to prevent local leakages

```

---

# ⚙️ Implementation

## 1. Ubuntu Server Installation

Installed Ubuntu Server inside VMware Workstation.

* **Outcome:** OS installed successfully; local file structures and directory schemas validated.
* **Screenshot:** `screenshots/01-ubuntu-server-installed.png`

---

## 2. Static IP Configuration

Configured a permanent IP address using Netplan.

* **Outcome:** Static IP successfully assigned; persistent connection verified across reboots.
* **Screenshot:** `screenshots/02-static-ip-config.png`

---

## 3. SSH Configuration

Installed and enabled OpenSSH Server. Verified remote login capability.

* **Outcome:** Daemon successfully active; remote administrative console logins verified.
* **Screenshots:**
* `screenshots/03-ssh-service.png`
* `screenshots/04-ssh-remote-login.png`



---

## 4. Linux User Management

Created isolated user profiles to simulate departmental structures.

* **Users Deployed:** `Venky`, `Ahmed`, `Priya`, `Sara`
* **Outcome:** Individual administrative identities established.
* **Screenshot:** `screenshots/05-users-created.png`

---

## 5. Linux Groups

Created specialized security groups to enforce logical administrative separation.

* **Groups Deployed:** `IT`, `HR`, `Finance`
* **Outcome:** Permissions and resource allocations assigned dynamically per group.
* **Screenshot:** `screenshots/06-groups-created.png`

---

## 6. Linux Permissions

Hardened directory security using access control properties.

* **Topics covered:** `chmod`, `chown`, `chgrp`
* **Outcome:** Access model tested and administrative isolation verified.
* **Screenshots:**
* `screenshots/07-directory-permissions.png`
* `screenshots/08-file-permissions.png`
* `screenshots/09-permission-denied.png`



---

## 7. SetGID

Implemented SetGID on shared directories to enforce collaborative integrity.

* **Outcome:** New files created automatically inherit the parental directory's system group, avoiding permission conflicts.
* **Screenshots:**
* `screenshots/10-setgid-enabled.png`
* `screenshots/11-group-inheritance.png`



---

## 8. Nginx Installation

Deployed Nginx Web Server and audited service configurations.

* **Outcome:** Server actively listening for connections; daemon managed via `systemctl`.
* **Screenshot:** `screenshots/12-nginx-service.png`

---

## 9. Default Nginx Page

Audited out-of-the-box configurations prior to custom deployments.

* **Screenshot:** `screenshots/13-nginx-default-page.png`

---

## 10. Nginx Server Blocks

Configured virtual hosts to serve multiple distinct web portals.

* **Active Domains:** `venkytech.com`, `it.venkytech.com`, `hr.venkytech.com`
* **Outcome:** Configurations tested and successfully parsed via `nginx -t`.
* **Screenshots:**
* `screenshots/14-server-block-config.png`
* `screenshots/15-nginx-test.png`



---

## 11. Virtual Hosts

Successfully deployed and configured three separate, secure localized websites.

* **Screenshots:**
* `screenshots/16-main-site.png`
* `screenshots/17-it-site.png`
* `screenshots/18-hr-site.png`



---

## 12. HTTPS

Secured transmission tunnels using OpenSSL certificates.

* **Outcome:** Verified browser routing to default SSL port 443.
* **Screenshot:** `screenshots/19-https-enabled.png`

---

## 13. UFW Firewall

Enabled the Uncomplicated Firewall to shield infrastructure boundaries.

* **Permitted Rules:** Port 22 (SSH), Port 80 (HTTP), Port 443 (HTTPS)
* **Outcome:** All non-essential inbound ports strictly filtered and blocked.
* **Screenshots:**
* `screenshots/20-ufw-status.png`
* `screenshots/21-firewall-rules.png`



---

## 14. Bash Backup Script

Developed a production-ready utility script to automate operational maintenance.

* **Operational Scope:**
* Generates calendar-labeled target directories dynamically.
* Safely backs up active site databases (`/var/www`) and server layouts (`/etc/nginx`).


* **Script Location:** `scripts/backup.sh`
* **Screenshots:**
* `screenshots/22-backup-script.png`
* `screenshots/23-backup-created.png`



---

## 15. Cron Job Automation

Automated system maintenance routines using the Cron daemon.

* **Schedule:** Executes script nightly at precisely **2:00 AM**.
* **Crontab Entry:**
```text
0 2 * * * /usr/local/bin/backup.sh

```


* **Screenshots:**
* `screenshots/24-crontab.png`
* `screenshots/25-cron-service.png`



---

## 16. Log Monitoring

Monitored runtime diagnostic events to analyze system logs.

* **Logs Audited:** `/var/log/nginx/access.log` and `/var/log/nginx/error.log`
* **Outcome:** Evaluated network request behaviors and verified browser user-agents.
* **Screenshots:**
* `screenshots/26-access-log.png`
* `screenshots/27-error-log.png`



---

# 🌟 Final Project Demonstration

The overall status summary confirms operational success:

* Ubuntu Server environment validated and stable.
* Secure SSH remote administrative access active.
* Multi-domain Nginx instances accessible.
* Network infrastructure secure, monitored, and self-backing up.

* **Screenshot:** `screenshots/28-final-project-demo.png`

---

# 🗄️ Configuration Files

Clean, sanitized backups of all configurations used during implementation are archived in `/configs/`.

| File | Description |
| --- | --- |
| `nginx.conf` | Nginx Virtual Hosts reverse routing configurations |
| `sshd_config` | Hardened Secure SSH configurations |
| `firewall.conf` | Active rules for UFW rulesets |
| `netplan.yaml` | Static IP system rules |
| `cron.conf` | Active cron schedules |

---

# 📜 Scripts

System administrative tools contained in this repository:

| Script | Purpose |
| --- | --- |
| `backup.sh` | Performs automated incremental-styled backups of Nginx systems & site databases |

---

# 🧠 Skills Demonstrated

This project showcases practical, verified capabilities in:

* System Administration & Ubuntu Server Deployment
* System Virtualization (VMware environments)
* Persistent Networking & Static IP Allocations
* Secure Remote Administration (SSH Configuration)
* System User Group Hierarchies & Least-Privilege Rules
* File Security Configurations & Directory SetGID Bits
* Web Server Deployments & Multi-Site Configuration
* Cryptographic TLS Routing (HTTPS)
* Local Security Policies (UFW Firewall)
* Scripted Automation (Bash Script Development)
* Cron Schedulers & Real-time Log Analyses

---

# 🔍 Testing & Validation

Every configuration step underwent rigorous manual validation:

* Checked default gateway and routing configurations.
* Logged in remotely via secure terminals.
* Attempted forbidden operations with restricted users to confirm permission containment.
* Verified Nginx configuration structures using `sudo nginx -t`.
* Audited system responses via runtime application access and error log analysis.

---

# 🛠️ Challenges Faced & Solved

* **The Cron Path Environment Trap:** *Problem:* Script executed manually but failed to write data when scheduled via cron. *Solution:* Recognized cron initializes with restricted path profiles. Solved by explicitly implementing absolute path bindings (e.g. `/bin/tar`) in the Bash script.
* **SetGID Inheritance Issues:** *Problem:* Newly generated files in collaborative spaces kept triggering Nginx `403 Forbidden` errors. *Solution:* Applied the `setgid` bit on parental project directories, enforcing automatic group ownership preservation.
* **YAML Netplan Indentation:** *Problem:* System interface configurations failed to apply. *Solution:* Debugged whitespace parsing issues inside `/etc/netplan/*.yaml` config files, strictly formatting values to meet Netplan's specification.

---

# 📚 Lessons Learned

* **Verification is Essential:** Always validate configuration structures before restarting active daemons.
* **Let Logs Speak:** Use system logs to trace real configuration errors instead of blindly guessing.
* **Automation is Key:** Scripting routine administrative tasks eliminates manual human error.
* **True Engineering is Analytical:** Deep troubleshooting and documentation are far more critical than memorizing shell commands.

---

# 🔮 Future Improvements

* [ ] Transition SSH authentication from password-based to secure public-private key pairs.
* [ ] Implement a Fail2ban service to block automated brute-force attempts.
* [ ] Implement system-level log rotations (`logrotate`) to protect disk storage spaces.
* [ ] Containerize core web portal operations inside Docker.
* [ ] Convert this entire project lifecycle into an automated Ansible Playbook.

---

# 📈 Project Statistics

| Metric | Count |
| --- | --- |
| **Linux Handbook Documentation** | 150+ Pages |
| **Verification Screenshots** | 28 |
| **Practice Interview Questions** | 100 |
| **Troubleshooting Scenarios Solved** | 10 |
| **Websites Hosted on Server** | 3 |
| **Virtual Machines Configured** | 2 |

---

# 🏁 Project Outcome

This project successfully proves the implementation of a fully secure, functional, and self-maintaining Linux Server Infrastructure.

Beyond deployment, the emphasis on rigorous documentation, log auditing, security configurations, and systematic debugging provides a professional, production-grade showcase piece ready for recruiters, hiring managers, and enterprise System Administrator interviews.

---

# ✍️ Author

**Venkatesh (Venky)**

*Linux Systems | Virtualization | IT Operations Support*

---

## 🤝 Acknowledgements

This project represents deep, persistent personal discipline. Every command run, error encountered, and bug solved has directly strengthened my understanding of systems engineering.

```

```
