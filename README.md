This is the readme for ssh stuff

directions go here

what do you want here boss?

<h1> READ THIS FIRST: </h1>

The account approval process is a human process. This process usually takes between two and three school days but may take longer. You will not be able to login with these keys until the account approval and creation process is finished. Once this is finished you will receive a welcome email and you should then be able to login to the cluster.


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
 


</h2> LOGGING IN WITH SSH ON WINDOWS</h2>


1. Download PuTTY [https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html] and run the executable.
2. In the Session tab, enter the remote host (one of the login nodes listed above) and select SSH as the connection type.
3. In the Auth tab (located in SSH), browse for and select your private key
4. Click Open and enter your login credentials (username and passphrase generated at account request.)


<h2> LOGGING IN WITH SSH ON LINUX/MAC </h2>


1. If your local machine username is different from your cluster username, include the -l flag followed by your cluster username. This should go before the login node name. This would look something like:

    - ssh -l engagingusername eofe7.mit.edu

2. If your PRIVATE ssh key is not in the place (~/.ssh/id_rsa ) then you will need to use the -i flag followed by the path to your private key. This should go before the login node name. If I unzipped the folder to my ~/Downloads directory it would look something like this:


    - ssh -i ~/Downloads/engaging-cluster/engagingusername_id_rsa eofe7.mit.edu

    Notice we are using the id_rsa which is the private key. This is NOT the same as using id_rsa.pub, which won't work

3. If both of the above are true, then you can combine the two flags to get something like the following:

    - ssh -l engagingusername -i ~/Downloads/engaging-cluster/engagingusername_id_rsa eofe7.mit.edu

4. If you are prompted for a passphrase *for your key* then you are on the right track. This passphrase will be the one you generated at the account request.

5. If you are presented with a prompt such as this:
    
     engagingusername@eofe7.mit.edu's password:

   then you have gone too far, this may be caused by mistyping your command, or trying the wrong SSH key password 3 times in a row.



<h2> Troubleshooting </h2>

1. Login to the cluster is via SSH key only, if you forget your SSH key password then you will need to generate a new set of SSH keys and send the public portion (id_rsa.pub) to engaging-admin@techsquare.com

2. If you are logging in from a different computer you will need to either copy your private key generated at account creation to the other computer, or you will need to generate another set of keys and send them to engaging-admin@techsquare.com
 



