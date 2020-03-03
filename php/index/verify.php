<?php
include("database/database.php");
// Login
if(isset($_POST['login']) && !empty($_POST['login']))
{
	$email=$_POST['email'];
	$password=$_POST['password'];
	// $_SESSION['user']=$user;
	// header('location:home.php');
	$sql = "SELECT id, email, password FROM users";
	$result = mysqli_query($conn, $sql);
	if (mysqli_num_rows($result) > 0) 
	{
    while($row = mysqli_fetch_assoc($result)) 
    {
        $id=$row['id'];
        $email1=$row['email'];
        $password1=$row['password'];
        if($email1==$email && $password1==md5($password))
        {
        	session_start();
			$_SESSION['id']=$id;
	          ?>
	          <script type="text/javascript">
	          	window.location.href="../../timeline.php";
	          </script>
	          <?php
     		break;
        }
    }
    	  session_start();
		  $_SESSION['msg']=30;
          ?>
          <script type="text/javascript">
          	window.location.href="../../index.php";
          </script>
          <?php
	}
	else
	{
	      session_start();
		  $_SESSION['msg']=40;
          ?>
          <script type="text/javascript">
          	window.location.href="../../index.php";
          </script>
          <?php
	}
}

// Register
if(isset($_POST['register']))
{
	$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$day=$_POST['day'];
	$month=$_POST['month'];
	$year=$_POST['year'];
	$gender=$_POST['gender'];
	$state=$_POST['state'];
	$country=$_POST['countrya'];
	$district=$_POST['district'];
	$er=0;

	$chk="SELECT email from users";
	$result = mysqli_query($conn, $chk);
	if (mysqli_num_rows($result) > 0) 
	{
    while($row = mysqli_fetch_assoc($result)) 
    {
        $t1=$row['email'];
        if($email==$t1)
        {
        	$er=1;
      		session_start();
			$_SESSION['msg']=20;
          ?>
          <script type="text/javascript">
          	window.location.href="../../index.php";
          </script>
          <?php
			$er=1;
			break;
        }
    }
	}
	if($er!=1)
	{
		$sql = "INSERT INTO users (id, firstname, lastname, email, password, day, month, year, gender, state, country, district) VALUES (id, '$firstname', '$lastname', '$email','$password','$day','$month','$year','$gender','$state','$country','$district')";
		if ($conn->query($sql) === TRUE) {
			session_start();
			$_SESSION['msg']=10;
			$email=md5($email);
			mkdir("usr/$email");
          ?>
          <script type="text/javascript">
          	window.location.href="../../index.php";
          </script>
          <?php
		} 
		else {
		    echo "<script>alert(''Error: ' . $sql . '<br>' . $conn->error;');</script>";
		  ?>
          <script type="text/javascript">
          	window.location.href="../../index.php";
          </script>
          <?php
		}
		$conn->close();
	}
}
?>