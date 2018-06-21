<?php
ob_start();
session_start();
require_once 'dbconnect.php';

 if( isset($_SESSION['akses']) ) //mengecek session akses
{
     header('location:'.$_SESSION['akses']);
     exit();
}
 $error = '';
 if( isset($_SESSION['error']) ) { //menangani error
      $error = $_SESSION['error']; //set error
      unset($_SESSION['error']);
 }

// if session is set direct to index
if (isset($_SESSION['user'])) {
    header("Location: index.php");
    exit;
}

if (isset($_POST['btn-login'])) {
    // $email = $_POST['email'];
    $uname = $_POST['username'];
    $upass = $_POST['pass'];

    // $password = hash('sha256', $upass); // password hashing using SHA256
    $password = $upass;
    $stmt = $conn->prepare("SELECT id, nama, level, email, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $uname);
    /* execute query */
    $stmt->execute();
    //get result
    $res = $stmt->get_result();
    $stmt->close();

    $row = mysqli_fetch_array($res, MYSQLI_ASSOC);



    $count = $res->num_rows;
    if ($count == 1 && $row['password'] == $password) {
        $_SESSION['user']  = $row['id'];
        $_SESSION['nama_u'] = $row['nama'];
        $_SESSION['akses'] = $row['level'];

        if ($row['level'] === 'admin') {
            $_SESSION['saya_admin'] = 'TRUE';
        }
        else {
            $_SESSION['saya_member'] = 'TRUE';
        }


        //menuju halaman sesuai hak akses
        // header("Location: admin/");
        header('location:'.$url.'/'.$_SESSION['akses'].'/');
        exit();
        // header("Location: index.php");
    } elseif ($count == 1) {
        $errMSG = "Bad password";
    } else $errMSG = "User not found";
}
?>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="assets/css/style.css" type="text/css"/>
</head>
<body>

<div class="container">


    <div id="login-form">
        <form method="post" autocomplete="off">

            <div class="col-md-12">

                <div class="form-group">
                    <h2 class="">Login:</h2>
                </div>

                <div class="form-group">
                    <hr/>
                </div>

                <?php
                if (isset($errMSG)) {

                    ?>
                    <div class="form-group">
                        <div class="alert alert-danger">
                            <span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
                        </div>
                    </div>
                    <?php
                }
                ?>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" name="username" class="form-control" placeholder="Username" required/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input type="password" name="pass" class="form-control" placeholder="Password" required/>
                    </div>
                </div>

                <div class="form-group">
                    <hr/>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-block btn-primary" name="btn-login">Login</button>
                </div>

                <div class="form-group">
                    <hr/>
                </div>

                <div class="form-group">
                    <a href="register.php" type="button" class="btn btn-block btn-danger"
                       name="btn-login">Register</a>
                </div>

            </div>

        </form>
    </div>

</div>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
</body>
</html>
