<?php
session_start();
$loggedIn = isset($_SESSION["loggedin"]) ? $_SESSION['loggedin'] : false;
$home = "active";
require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/handle_language.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/serverconnect.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/head.php" ?>
</head>

<body>
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/navbar.php" ?>

    <div class="container<?php echo $loggedIn == true ?  "-fluid" : ""; ?>">
        <div class="row-fluid">
            <?php
            if ($loggedIn == true) {
            ?>
            <div class="span3">
                <div class="well sidebar-nav">
                    <ul class="nav nav-list">
                        <li class="active"><a href="#"><?php echo $language['site_navbar_home'] ?></a>
                        </li>
                        <li class="nav-header"><?php echo $language['home_sidebar_header_notifications'] ?></li>
                        <li><a href="#"><?php echo $language['home_sidebar_notifications_announcements'] ?></a></li>
                        <li><a href="#"><?php echo $language['home_sidebar_notifications_news'] ?></a></li>
                        <li><a href="#"><?php echo $language['home_sidebar_notifications_important_notices'] ?></a></li>
                        <li><a href="#"><?php echo $language['home_sidebar_notifications_messages'] ?></a></li>
                        <li class="nav-header"><?php echo $language['home_sidebar_regapp_suspend_one_course'] ?></li>
                        <li><a href="#"><?php echo $language['home_sidebar_header_regapp'] ?></a></li>
                        <li><a href="#">Move out course</a></li>
                        <li><a href="#">Register extra course</a></li>
                        <li><a href="#">Cancel registration</a></li>
                        <li><a href="#">Send application</a></li>
                        <li><a href="#">View application</a></li>
                        <li class="nav-header"><?php echo $language['home_sidebar_header_info'] ?></li>
                        <li><a href="#">Courses timetable</a></li>
                        <li><a href="#">Your course timetable</a></li>
                        <li><a href="#">View syllabuses</a></li>
                        <li class="nav-header"><?php echo $language['home_sidebar_header_reports'] ?></li>
                        <li><a href="#">Attendance report</a></li>
                        <li><a href="#">Mark report</a></li>
                        <li class="nav-header"><?php echo $language['home_sidebar_header_feedback'] ?></li>
                        <li><a href="#">Feedback about teaching</a></li>
                        <li class="nav-header"><?php echo $language['home_sidebar_header_rules'] ?></li>
                        <li><a href="#">Class rules</a></li>
                        <li><a href="#">Courses regulation</a></li>
                        <li class="nav-header"><?php echo $language['home_sidebar_header_others'] ?></li>
                        <li><a href="#">Student profile</a></li>
                        <li><a href="#">Ask mentor</a></li>
                        <li><a href="#">View answer</a></li>
                    </ul>
                </div>
            </div>
            <?php
            }
            ?>
            <?php echo $loggedIn == true ?  "<div class=\"span9\">" : ""; ?>
            <div class="hero-unit" style="margin-bottom: 0px;">
                <h1><?php echo $loggedIn == false ? $language['home_hero_hello_world'] : $language['home_loggedin_hero_title'] ?>
                </h1>
                <p><?php echo $loggedIn == false ? $language['home_hero_caption'] : $language['home_loggedin_hero_caption'] ?>
                </p>
                <?php
                if ($loggedIn == false) {
                ?>
                <p><a href="login.php" class="btn btn-primary btn-large"><?php echo $language['home_hero_login_btn'] ?>
                        &raquo;</a></p>
                <?php
                }
                ?>
            </div>
            <?php echo $loggedIn == true ?  "</div>" : ""; ?>
        </div>

        <hr>

        <footer>
            <p>&copy; <?php echo $language['site_footer_copyright'] ?></p>
        </footer>

    </div>
</body>

</html>