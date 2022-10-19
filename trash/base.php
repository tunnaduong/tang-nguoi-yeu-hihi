<?php
if (isset($_GET['t'])) {
    if ($_GET['t'] == "n") {
?>
<div id="screen">
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/error_handle.php" ?>
</div>
<?php
    }
} else {
    require $_SERVER['DOCUMENT_ROOT'] . "/requires/credits.php";
    require $_SERVER['DOCUMENT_ROOT'] . "/requires/serverconnect.php";
    $title = 'C4K60';
    include $_SERVER['DOCUMENT_ROOT'] . "/includes/head.php";
    include $_SERVER['DOCUMENT_ROOT'] . "/includes/menu.php";
    ?>
<div id="screen"></div>
<?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/navbar.php" ?>
<script src="/assets/js/script.js"></script>
<?php
}