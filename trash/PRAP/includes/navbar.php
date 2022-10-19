<?php
require $_SERVER['DOCUMENT_ROOT'] . "/serverconnect.php";
?>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="/"><?php echo $language['site_title'] ?></a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="<?= $home ?>"><a href="/"><?php echo $language['site_navbar_home'] ?></a></li>
                    <li class="<?= $about ?>"><a href="/about"><?php echo $language['site_navbar_about'] ?></a></li>
                    <li class="<?= $contact ?>"><a href="/contact"><?php echo $language['site_navbar_contact'] ?></a>
                    </li>
                </ul>
                <div id="test">
                    <div class="dropdown">&nbsp;<a href="#" class="navbar-link dropdown-toggle"
                            data-toggle="dropdown"><?php echo isset($_SESSION["name"]) ? $_SESSION['name'] : false ?></a>
                        <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dLabel">
                            <li><a tabindex="-1" href="#"><i class="fa-solid fa-circle-user"></i> Trang cá nhân</a></li>
                            <li><a tabindex="-1" href="/logout.php"><i class="fa-solid fa-arrow-right-from-bracket"></i>
                                    Đăng xuất</a></li>
                        </ul>
                    </div>
                </div>
                <p class="navbar-text pull-right">
                    <a href="javascript:setLang('vi')"><span class="flag-icon flag-icon-vn"></span> VI</a> |
                    <a href="javascript:setLang('en')" style="margin-right: 10px"><span
                            class="flag-icon flag-icon-us"></span>
                        EN</a>
                    <?php
                    if (!isset($login)) {
                        if ($loggedIn == true) {
                            echo $language['site_navbar_loggedin'];
                    ?>


                    <?php
                        } else {
                        ?>
                    <a href="login.php" class="navbar-link"><i class="fa-solid fa-arrow-right-to-bracket"></i>
                        <?php echo $language['site_navbar_login'] ?></a>
                    <?php
                        }
                    }
                    ?>
                </p>
            </div>
        </div>
    </div>
</div>
<?php
if (!isset($_POST['lang'])) {
?>
<script>
const newParent = document.getElementById('new-parent');
const oldParent = document.getElementById('old-parent');

while (oldParent.childNodes.length > 0) {
    newParent.appendChild(oldParent.childNodes[0]);
}
</script>
<script>
function setCookie(cname, cvalue, exdays) {
    const d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";

    function setCookie(cname, cvalue, exdays) {
        const d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        let expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }
}

function setLang(code) {
    setCookie("lang", code, 0.5);
    location.href = ""
}
</script>
<?php
}