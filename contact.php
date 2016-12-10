<?php
error_reporting(0);
//class ModelAdminMail extends Model
//{
//    public function getAdmin($user_id) {
//        $query = $this->db->query("SELECT *, (SELECT ug.name FROM `" . DB_PREFIX . "user_group` ug WHERE ug.user_group_id = u.user_group_id) AS user_group FROM `" . DB_PREFIX . "user` u WHERE u.user_id = '" . (int)$user_id . "'");
//
//        return $query->row;
//    }
//}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $phone = trim($_POST['phone']);
    $subject = trim($_POST['subject']);
    $message = trim($_POST['message']);

    $errors = array();

	if (strlen($name) == 0) {
        $errors['name'] = 'Укажите имя, пожалуйста ';
    }


    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = 'Вы неправильно указали email';
    }

	if (!preg_match('/^\(?[0-9]{3}\)?|[0-9]{3}[-. ]? [0-9]{3}[-. ]?[0-9]{4}$/', $phone)) {
        $errors['phone'] = 'Вы неправильно указали телефон';
    }

	if (strlen($message) == NULL) {
        $errors['message'] = 'Заказ пуст';
    }

    $data['errors'] = $errors;
    $data['success'] = (count($errors)) ? 0 : 1;

    if ($data['success'] == 1) {
        $body = "<html><head><title>Contact Form - " . stripslashes($subject) . "</title></head>
                <body><table width='100%' cellspacing='3' cellpadding='3'>
                <tr><td width='40%'><strong>Name</strong></td><td width='60%'>" . $name . "</td></tr>
                <tr><td><strong>Email</strong></td><td>" . $email . "</td></tr>
                <tr><td><strong>Phone</strong></td><td>" . $phone . "</td></tr>
                <tr><td><strong>Message</strong></td><td>" . $message . "</td></tr>
                <tr><td><strong>Color</strong></td><td>" . $color . "</td></tr>
                </table></body></html>";

        $headers = "MIME-Version: 1.0\n";
        $headers .= "Content-Type: text/html; charset=\"UTF-8\"\n";
        $headers .= "X-Priority: 1 (Highest)\n";
        $headers .= "X-MSMail-Priority: High\n";
        $headers .= "Importance: High\n";
        $headers .= 'From:' . $email . "\r\n";

		@mail("rostukcool@gmail.com", "Contact Form - " . stripslashes($subject), $body, $headers);
        $data['message'] = "<h3>Сообщение отправлено</h3> Благодарим Вас " . $name . ", удачного Вам дня !";
    }

    echo json_encode($data);
}
