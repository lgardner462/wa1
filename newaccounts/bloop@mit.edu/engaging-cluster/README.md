This is the readme for ssh stuff

directions go here

what do you want here boss?

<h1> READ THIS FIRST: </h1>

The account approval process is a human process. This process usually takes between two and  three school days but may take longer. You will not be able to login with these keys until the account approval and creation process is finished. Once this is finished you will receive a welcome email and you should then be able to login to the cluster.


<h2>WHAT IS IN INCLUDED THIS ZIP</h2>
* This README
* A PuTTY format private key for Windows SSH login (username_private.ppk)
* An OpenSSH format private key for Linux/Mac SSH login (username_id_rsa)
* An OpenSSH format public key associated with these private keys (username_id_rsa.pub)

<h2> Getting started </h2>
    
* Once your account is created you will be added to the engaging1-users@mit.edu mailing list, this is how the admins will contact you about things like cluster maintanence and outages.

* We have 3 main login nodes which can be reached 
 - eofe4.mit.edu   running centos 6
 - eofe5.mit.edu   running centos 6
 - eofe7.mit.edu   running centos 7
 


<h2>LOGGING IN WITH SSH ON WINDOWS</h2>

1. Download PuTTY [https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html] and run the executable.
2. In the Session tab, enter the remote host (one of the login nodes listed above) and select SSH as the connection type.
3. In the Auth tab (located in SSH), browse for and select your private key
4. Click Open and enter your login credentials (username and passphrase generated at account request.)

<h2>Logging in with SSH</h2>

1. Things to note:

* If your local machine username is different from your cluster username, include the -l flag followed by your cluster username. This should go before the login node name.

* If your private ssh key is not in the default SSH directory (~/.ssh ) then you will need to use the -i flag followed by the path to your private key. This should go before the login node name.

* Your command may look something like this:
   ssh -l testuser -i /path/to/testuser_id_rsa eofe7.mit.edu


<h1> 


