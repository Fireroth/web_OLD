<?php
 if (isset($_POST['submit'])){
    $name = $_POST['name'];
    $subject = $_POST['subject'];
    $mailForm = $_POST['mail'];
    $message = $_POST['message'];

    $mailTo = "fireroth42@gmail.com";
    $headers = "From: ".$mailForm;
    $txt = "You have recieved an email from".$name.".\n\n".$message;

    mail($mailTo, $subject, $txt, $headers);
    header("Location: /contact");
 }
