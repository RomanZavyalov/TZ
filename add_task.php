<?php session_start(); 
if (!$_SESSION['user']) {
    header('Location: index.php');
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавление задачи</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <main class="ar t_add">
        <h1>Составление задачи</h1>
        <form action="core/add.php" method="post">
            <h3>Заказчик:</h3>
            <label>Логин</label>
            <input type="text" name="login_cus" placeholder="Введите логин">
            <label>Почта</label>
            <input type="email" name="email_cus" placeholder="Введите эл.почту">
            <h3>Исполнитель:</h3>
            <label>Логин</label>
            <input type="text" name="login_exe" placeholder="Введите логин">
            <label>Почта</label>
            <input type="email" name="email_exe" placeholder="Введите эл.почту">
            <h3>Задание:</h3>
            <label>Название задания</label>
            <input type="text" name="name_task" placeholder="Введите название задания">
            <label>Текст задания</label>
            <textarea name="text_task" placeholder="Введите задание" cols="30" rows="10"></textarea>
            <button>Отправить</button>
        </form>
        <a class="back" href="tasks.php">Назад</a>
    </main>
</body>
</html>