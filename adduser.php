<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    $db_host = 'localhost';
    $db_user = 'root';
    $db_pass = 'root';
    $db_name = 'sp_portfolio_db';

    $connection = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
    $errors = array();
    
    $firstname = mysqli_real_escape_string($connection, $_POST['firstname']);
    if ($firstname == NULL) {
        $errors[] = "hey!! write your first name";
    }

    $lastname = mysqli_real_escape_string($connection, $_POST['lastname']);
    if ($lastname == NULL) {
        $errors[] = "hey!! write your last name";
    }

    $email = $_POST['email'];
    if ($email == NULL) {
        $errors[] = "hey!! write your email";
    }
    
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "\"" . $email . "\" is not a valid email address.";
    }

    $comments = mysqli_real_escape_string($connection, $_POST['comments']);
    if ($comments == NULL) {
        $errors[] = "hey!! let me know what you want ";
    }


    $errcount = count($errors);
    if ($errcount > 0) {
        $errmsg = array();
        for ($i = 0; $i < $errcount; $i++) {
            $errmsg[] = $errors[$i];
        }
        echo json_encode(array("errors" => $errmsg));
    } else {
        $querystring = "INSERT INTO contact_form(user_id,user_firstname,user_lastname,user_email,user_comments) VALUES(NULL,'" . $firstname . "','" . $lastname . "','" . $email . "','" . $comments . "')";
        $qpartner = mysqli_query($connection, $querystring);
        echo json_encode(array("message" => "Form submitted. Thanks for your interest!"));
    }
?>