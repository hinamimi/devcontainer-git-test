# devcontainer から git push ができるかのテストレポジトリ

以下のレポジトリをもとに、devcontainer から git push ができるかのテストを行う。

https://code.visualstudio.com/docs/remote/containers#_sharing-git-credentials-with-your-container

### Create .gitconfig at global level

```
$ git config --global user.name $username
$ git config --global user.email $email
```

#### Check creation

```
$ cat ~/.gitconfig | head -n 3
[user]
name = $username
email = $email
```

### Add ssh key at github

Refer to
https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/about-ssh

https://code.visualstudio.com/docs/remote/containers#_sharing-git-credentials-with-your-container

#### Check ssh key

```
$ ssh -T git@github.com
Hi $username! You've successfully authenticated, but GitHub does not provide shell access.
$ ssh-add -L > /tmp/key && diff -s ~/.ssh/id_rsa.pub /tmp/key; rm -f /tmp/key
Files /home/$USER/.ssh/$your-public-key and /tmp/key are identical
```

### Install docker

Refer to https://docs.docker.com/engine/install/debian/#install-docker-engine

#### Check docker installation

```
$ sudo docker run hello-world | head -n 2

Hello from Docker!
```
