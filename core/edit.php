<?php 
require_once 'db.php';

$task_id = $_POST['task_id'];
$login_cus = $_POST['login_cus'];
$email_cus = $_POST['email_cus'];
$login_exe = $_POST['login_exe'];
$email_exe = $_POST['email_exe'];
$name_task = $_POST['name_task'];
$text_task = $_POST['text_task'];

mysqli_query($connect, "UPDATE `task` SET `task_login_customer` = '$login_cus', `task_email_customer` = '$email_cus', `task_login_executor` = '$login_exe', `task_email_executor` = '$email_exe', `task_name` = '$name_task', `task_text` = '$text_task' WHERE `task`.`task_id` = '$task_id'");

header('Location: ../index.php');