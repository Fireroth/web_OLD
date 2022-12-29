<?php
  $name = $_POST['name'];
  $email = $_POST['email'];
  $message = $_POST['message'];
  $to = "fireroth42@gmail.com";
  $subject = "New Contact Form Submission";
  $headers = "From: $email";
  $body = "A new contact form submission has been received.\nName: $name\nEmail: $email\nMessage: $message";
  mail($to, $subject, $body, $headers);
?>
