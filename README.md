# Git_GitHub_connectivity

## Check for an existing SSH key

First, check if you've already generated SSH keys for your machine. Open a terminal and enter the following command:

```ls -al ~/.ssh```

If you've already generated SSH keys, you should see output similar to this:

```
-rw-------  1 user_name user_name  1766 Jul  7  2018 id_rsa
-rw-r--r--  1 user_name user_name   414 Jul  7  2018 id_rsa.pub
-rw-------  1 user_name user_name 12892 Feb  5 18:39 known_hosts 
```

If your keys already exist, skip ahead to the **Copy your public SSH key** section below.

If you don't see any output or that directory doesn't exist (you get a `No such file or directory` message), then run:

```mkdir $HOME/.ssh```

Then generate a new set of keys with:

```ssh-keygen -t rsa -b 4096 -C your@email.com```

Now check that your keys exist with the `ls -al ~/.ssh` command and ensure that the output is similar to the one listed above.

**Note:** SSH keys are always generated as a pair of public (`id_rsa.pub`) and private (`id_rsa`) keys. It's extremely important that you **never reveal your private key**, and **only use your public key** for things like GitHub authentication.

## Add your SSH key to ssh-agent
ssh-agent is a program that starts when you log in and stores your private keys. For it to work properly, it needs to be running and have a copy of your private key.

First, make sure that ssh-agent is running with:
```eval "$(ssh-agent -s)" # for Mac and Linux```
or:
```eval `ssh-agent -s`
ssh-agent -s # for Windows```
Then, add your private key to `ssh-agent` with:
```ssh-add ~/.ssh/id_rsa```
## Copy your public SSH key
Next, you need to copy your public SSH key to the clipboard.

For Linux or Mac, print the contents of your public key to the console with:

```cat ~/.ssh/id_rsa.pub # Linux```
Then highlight and copy the output.

Or for Windows, simply run:

```clip < ~/.ssh/id_rsa.pub # Windows```
## Add your public SSH key to GitHub
Go to your GitHub settings page and click the "New SSH key" button:

Then give your key a recognizable title and paste in your public (`id_rsa.pub`) key:
![image](https://user-images.githubusercontent.com/69789108/112029177-dd27db80-8b30-11eb-9b15-976da8e7ecc8.png)


Finally, test your authentication with:

```ssh -T git@github.com```
If you've followed all of these steps correctly, you should see this message:
```Hi your_user_name! You've successfully authenticated, but GitHub does not provide shell access.```
