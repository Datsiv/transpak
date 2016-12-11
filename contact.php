<?php
error_reporting(0);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $name = trim($_POST['name']);
        $email = trim($_POST['email']);
        $phone = trim($_POST['phone']);
        $zakaz = trim($_POST['zakaz']);
        $address = trim($_POST['address']);
        $adminEmail = trim($_POST['adminEmail']);

        $errors = array();

        if (strlen($name) == NULL) {
            $errors['name'] = 'Укажите имя, пожалуйста ';
        }

        if (strlen($address) == NULL) {
            $errors['address'] = 'Укажите адрес, пожалуйста ';
        }


        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $errors['email'] = 'Вы неправильно указали email';
        }

        if (!preg_match('/^\(?[0-9]{3}\)?|[0-9]{3}[-. ]? [0-9]{3}[-. ]?[0-9]{4}$/', $phone)) {
            $errors['phone'] = 'Вы неправильно указали телефон';
        }

        $data['errors'] = $errors;
        $data['success'] = (count($errors)) ? 0 : 1;

        if ($data['success'] == 1) {
            $body = "<html><head><title>Заказ </title></head>
                <body><table width='100%' cellspacing='3' cellpadding='3'>
                <tr><td width='40%'><strong>Name</strong></td><td width='60%'>" . $name . "</td></tr>
                <tr><td><strong>Email</strong></td><td>" . $email . "</td></tr>
                <tr><td><strong>Телефон</strong></td><td>" . $phone . "</td></tr>
                <tr><td><strong>Товар</strong></td><td>" . $zakaz . "</td></tr>
                </table></body></html>";

            $headers = "MIME-Version: 1.0\n";
            $headers .= "Content-Type: text/html; charset=\"UTF-8\"\n";
            $headers .= "X-Priority: 1 (Highest)\n";
            $headers .= "X-MSMail-Priority: High\n";
            $headers .= "Importance: High\n";
            $headers .= 'From:' . $email . "\r\n";

            @mail($adminEmail, "Заказ " , $body, $headers);
            $data['message'] = "<h3>Сообщение отправлено</h3> Благодарим Вас " . $name . ", удачного Вам дня !";
        }
        echo(json_encode($data));
    }
