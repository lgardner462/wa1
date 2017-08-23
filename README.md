<h1> READ THIS FIRST: </h1>

The account approval process is a human process. This process usually takes between two and three school days but may take longer. You will not be able to login with these keys until the account approval and creation process is finished. Once this is finished you will receive a welcome email and you should then be able to login to the cluster. Also, you will be added to the engaging1-users@mit.edu mailing list. This is how you will be notified about things such as maintenance, outages, and anything else that affects the cluster as a whole.

<h2>WHAT IS IN INCLUDED THIS ZIP</h2>

* This README
* An public key associated with both of these private keys (engaging-key.pub)
* A PuTTY format private key for Windows SSH login (engaging-key.ppk) in "windows"
* An OpenSSH format private key for Linux/Mac SSH login (engaging-key) in "linux"
* An OpenSSH config file to make SSH login simpler.a

<h2> Getting started </h2>

* To access the cluster you will need to log into one of the following login nodes.

 - eofe4.mit.edu   running centos 6
 - eofe5.mit.edu   running centos 6
 - eofe7.mit.edu   running centos 7


<h2> LOGGING IN WITH SSH ON WINDOWS</h2>

1. Download PuTTY [https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html] and run the executable.
2. In the Session tab, enter the remote host (one of the login nodes listed above) and select SSH as the connection type.
3. In the Auth tab (located in SSH), browse for and select your private key
4. Click Open and enter your login credentials (username and passphrase generated at account request.)


<h2> LOGGING IN WITH SSH ON LINUX/MAC </h2>

We have included a config file to streamline the process of logging into the cluster, the config file assumes the .zip was extracted to the home (~) directory

* If the engaging-key folder is in your home (~) directory:

Logging into Centos 6 environment 

-  ssh -F ~/engaging-key/linux/config eofe4.mit.edu

 OR

-  ssh -F ~/engaging-key/linux/config eofe5.mit.edu    

Logging into Centos 7 environment

-  ssh -F ~/engaging-key/linux/config eofe7.mit.edu   


* If the engaging-key folder is not in your home (~) directory

  1.  Open the config file with the text editor of your choice and change the path in the line that says "IdentityFile" to the location of your engaging-key.
  2.  Use the -F flag followed by the path to your config file when logging into the cluster

Logging into Centos 6 environment 

-  ssh -F /path/to/config/file eofe4.mit.edu

 OR

-  ssh -F ~/path/to/config/file eofe5.mit.edu     

Logging into Centos 7 environment

-  ssh -F /path/to/config/file eofe7.mit.edu    


<h2> Troubleshooting </h2>

1. Login to the cluster is via SSH key only, if you forget your SSH key passphrase or lose your keys then you will need to generate a new set of SSH keys and send the public portion (id_rsa.pub) to engaging-admin@techsquare.com

2. If you are logging in from a different computer you will need to either copy your private key (engaging-key) generated at account creation to the other computer, or you will need to generate another set of keys and send them to engaging-admin@techsquare.com
 
