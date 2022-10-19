<?php
session_start();
$loggedIn = isset($_SESSION["loggedin"]) ? $_SESSION['loggedin'] : false;
require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/handle_language.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/head.php" ?>
</head>

<body>
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/navbar.php"; ?>

    <div class="container">

        <hr>

        <footer>
            <p>&copy; <?php echo $language['site_footer_copyright'] ?></p>
        </footer>

    </div>
</body>

</html>