---
title: Creating a hosting service using basic linux tools
date: 2024-08-06
---

Can I create a service for people to host their website built on top of basic unix tools?

I don't know, but it would be a great way to reconnect with the linux toolset and to create a cool project to share with others.

Before I write any code, I need to get a list of requirements to guide the work.

* It will only support static sites (index.html, styles.css, and little more)
* Users will only be able to modify their website via SSH/SFTP.
* Users will have limited storage (10 kB, 1MB, etc)
* Users will be created manually, and credentials shared via privenote or similar.
* Users will be responsible of maintaining their own credentials.
* Sites will be available as `<name>.<mydomain>` 

# Basic Idea

* Create a linux user for each customer.
    * Given them write access to only a small folder `/www`
    * Serve that folder via nginx
    * Provide them limited access to only some commands such as `passwd`, `cd`, etc.