# 0x13. Firewall

---
## Learning Objectives:bulb:
What you should learn from this project:

* Web stack debugging

---


### [0. Firewall ABC ](./0-firewall_ABC)
* What is a firewall?

1. A hardware security system
2. A hardware or software security system
3. A software security system
* What are the 2 types of firewall:

1. Soft and hard firewall
2. Incoming and outgoing firewall
3. Network and host-based firewall
* What is the main function of a firewall?

1. To filter incoming and outgoing network traffic
2. To filter incoming and outgoing TCP traffic
3. To filter outgoing traffic


### [1. Block all incoming traffic but ](./1-block_all_incoming_traffic_but)
* Let’s install the ufw firewall and setup a few rules on web-01.
* Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
22 (SSH)
443 (HTTPS SSL)
80 (HTTP)
* Share the ufw commands that you used in your answer file


### [2. Port forwarding ](./100-port_forwarding)
* Configure web-01 so that its firewall redirects port 8080/TCP to port 80/TCP.
* Your answer file should be a copy of the ufw configuration file that you modified to make this happen


---

## Author
* **Alejo Castiblanco** - [alejocasti](github.com/alejocasti)
