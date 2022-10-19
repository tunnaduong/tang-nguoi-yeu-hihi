<?php
session_start();
header('Content-Type: text/html; charset=utf-8');
// Check if the user is already logged in, if yes then redirect him to welcome page
if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
    header("location: /");
    exit;
}
$loggedIn = false;
$login = true;
require_once $_SERVER['DOCUMENT_ROOT'] . "/includes/handle_language.php";
require_once $_SERVER['DOCUMENT_ROOT'] . "/serverconnect.php";

// Define variables and initialize with empty values
$username = $password = "";
$login_error = "";

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Check if username is empty
    if (empty(trim($_POST["username"]))) {
        $login_error = $language['login_err_username_empty'];
    } else {
        $username = trim($_POST["username"]);
    }

    // Check if password is empty
    if (empty(trim($_POST["password"])) && !empty($username)) {
        $login_error = $language['login_err_password_empty'];
    } else {
        $password = trim($_POST["password"]);
    }

    // Validate credentials
    if (empty($login_error)) {
        // Prepare a select statement
        $sql = "SELECT student_id, username_base_case_sensitive, password, last_name, middle_name, first_name FROM students WHERE username = ?";

        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_set_charset($link, "utf8");

            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);

            // Set parameters
            $param_username = $username;

            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Store result
                mysqli_stmt_store_result($stmt);

                // Check if username exists, if yes then verify password
                if (mysqli_stmt_num_rows($stmt) == 1) {
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password, $lname, $mname, $fname);
                    if (mysqli_stmt_fetch($stmt)) {
                        if ($password == $hashed_password) {
                            // Password is correct, so start a new session
                            session_start();

                            // Store data in session variables
                            $_SESSION["loggedin"] = true;
                            $_SESSION["id"] = $id;
                            $_SESSION["username"] = $username;
                            $_SESSION['name'] = $lname . " " . $mname . " " . $fname;

                            // Redirect user to welcome page
                            header("location: /");
                        } else {
                            // Display an error message if password is not valid
                            $login_error = $language['login_err_password_incorrect'];
                        }
                    }
                } else {
                    // Display an error message if username doesn't exist
                    $login_error = $language['login_err_username_not_found'];
                }
            } else {
                $login_error = $language['login_err_common'];
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    // Close connection
    mysqli_close($link);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/head.php" ?>
</head>

<body style="background-color: #f5f5f5;">
    <?php require $_SERVER['DOCUMENT_ROOT'] . "/includes/navbar.php" ?>

    <div class="container">
        <form class="form-signin" method="POST" action="login.php?lang=<?php echo $lang ?>">
            <h2 class="form-signin-heading"><?php echo $language['login_title'] ?></h2>
            <input type="text" class="input-block-level" name="username"
                placeholder="<?php echo $language['login_username'] ?>">
            <input type="password" class="input-block-level" name="password"
                placeholder="<?php echo $language['login_password'] ?>">
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> <?php echo $language['login_remember'] ?>
            </label>
            <div class="error"><?php echo $login_error ?></div>
            <button class="btn btn-large btn-primary" type="submit"><?php echo $language['login_btn'] ?></button>
        </form>
    </div>
    <script>
    if (window.history.replaceState) {
        window.history.replaceState(null, null, window.location.href);
    }
    </script>
</body>

</html>