<?php 
require_once 'db.php';

$login_cus = $_POST['login_cus'];
$email_cus = $_POST['email_cus'];
$login_exe = $_POST['login_exe'];
$email_exe = $_POST['email_exe'];
$name_task = $_POST['name_task'];
$text_task = $_POST['text_task'];

mysqli_query($connect, "INSERT INTO `task` (`task_id`, `task_login_customer`, `task_email_customer`, `task_login_executor`, `task_email_executor`, `task_name`, `task_text`) VALUES (NULL, '$login_cus', '$email_cus', '$login_exe', '$email_exe', '$name_task', '$text_task') ");

header('Location: ../tasks.php');