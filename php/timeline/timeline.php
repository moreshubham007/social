<?php
include("php/index/database/database.php");
session_start();
if(isset($_SESSION['id']))
{
$id=$_SESSION['id'];
$qry="SELECT * from users where id = $id";
$result = mysqli_query($conn, $qry);
if (mysqli_num_rows($result) > 0) 
{
    while($row = mysqli_fetch_assoc($result))
    {
        $firstname=ucfirst($row['firstname']);
        $lastname=ucfirst($row['lastname']);
        $email=$row['email'];
        $password=$row['password'];
        $day=$row['day'];
        $month=$row['month'];
        $year=$row['year'];
        $gender=$row['gender'];
        $state=$row['state'];
        $country=$row['country'];
        $district=$row['district'];
    }
}
else
{
    session_unset();
    session_destroy();
          ?>
          <script type="text/javascript">
            window.location.href="index.php";
          </script>
          <?php
}
}
else
{
	header("location:index.php");
}
?>