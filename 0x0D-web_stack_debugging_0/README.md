0x0D. Web stack debugging #0
============================

Reources
---------

*This project was more about learning about how docker works and interactin with a docker container*

- [Setting up Server](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-20-04)
- [Installing Docker](https://alx-intranet.hbtn.io/concepts/65)
- [ChatGPT for debbuging](https://chat.openai.com/)

Background Context
------------------

My learning process had 7 steps all in the Digital Ocean Resource:
- Configuring server to have a user and asigning rights
- Installing Docker
- Running docker commands eg. docker pull ubuntu
- Running Docker container (docker run -it ubuntu) and operating on it, starting, stoppping
- Commiting changes in a container to a docker image to reuse it
- Sharing my docker image to docker repo where it can be accessed by the world!


Resources
---------

Had to install curl. 
Sudo apt update
Sudo apt install curl
- `curl`

Tasks
-----

### 0\. Give me a page

```
vagrant@vagrant:~$ docker run -p 8080:80 -d -it holbertonschool/265-0
47ca3994a4910bbc29d1d8925b1c70e1bdd799f5442040365a7cb9a0db218021
vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE                   COMMAND             CREATED             STATUS              PORTS                  NAMES
47ca3994a491        holbertonschool/265-0   "/bin/bash"         3 seconds ago       Up 2 seconds        0.0.0.0:8080->80/tcp   vigilant_tesla
vagrant@vagrant:~$ curl 0:8080
curl: (52) Empty reply from server
vagrant@vagrant:~$

```

Here we can see that after starting my Docker container, I `curl` the port `8080` mapped to the Docker container port `80`, it does not return a page but an error message. Note that you might also get the error message `curl: (52) Empty reply from server`.

```
vagrant@vagrant:~$ curl 0:8080
Hello Holberton
vagrant@vagrant:~$

```

After connecting to the container and fixing whatever needed to be fixed (here is your mission), you can see that curling port 80 return a page that contains `Hello Holberton`. Paste the command(s) you used to fix the issue in your answer file.

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x0D-web_stack_debugging_0`
- File: `0-give_me_a_page`
