<!DOCTYPE html>

<html>
  <body>
    <head>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
      <link rel="stylesheet" type="text/css" href="{{ url('static', filename='post_account.css') }}" />

      <script type="text/javascript">

	function disableKeyDownload()
	{
	var submit = document.getElementById('submitDownloadKey');
	submit.disabled = true;
	}


      </script>
    </head>    
    
    % if not errors:
    <div>
      <p>
	<h2>Thank you for your account request.</h2>
	Please note that this is <b>not</b> an automatic process.<br>
	Account requests usually take a few school days to process, but may take longer.
      </p>
      
      % if keyChoice == "generate":
	% action="/" + clusterName + "-cluster.zip"
      <form action={{action}} method="post" enctype="multipart/form-data"> 
	<input type = hidden name = "keyPath" value = "{{keyZipPath}}"/>
	<input type = "submit" id="submitButton" name = "submitDownloadKey" value = "Download Private Keys" onclick="this.disabled=true;this.value='Downloading...';this.form.submit();"/>
      </form>	
      % end

      % else:
      <p><b>Submission failed:</b></p>
      % for error in errors:
      % if error == "email":
      <p>Invalid email address.</p>
      
      % elif error == "phone":
      <p>Missing phone.</p>
      
      % elif error == "missingKey":
      <p>Missing public key.</p>

      % elif error == "privateKey":
      <p>Private key was uploaded. Please resubmit form with public key.<br>You may want to regenerate your key pair.</p>

      % elif error == "password":
      <p>Password field required.</p>

      % elif error == "passwordMatch":
      <p>Passwords do not match.</p>

      % elif error == "passwordLength":
      <p>Password must be greater than four characters.</p>
      % end
      % end
      % end
      

      % if keyChoice == "generate":
      <p>
	Private keys will deleted after one download.<br>
	<font color="red"><u>Please save your password.</u></font><br>
	You will use your password for this key to log in.
      </p>
      % end
    </div>
  </body>
</html>

<script type="text/javascript">
document.getElementById("submitButton").click();
</script>
