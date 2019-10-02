<?php 
class UserController {
	public function actionRegister() {
		$name = '';
		$email = '';
		$password = '';
		$result = false;
		
		if (isset($_POST['submit'])) {
			$name = $_POST['name'];
			$email = $_POST['email'];
			$password = $_POST['password'];
			
			$errors = false;
			
			if (!User::checkName($name)) {
				$errors[] = 'name must be larger than 2 symbols';
			}
			
			if (!User::checkEmail($email)) {
				$errors[] = 'wrong email';
			}
			
			if (!User::checkPassword($password)) {
				$errors[] = 'password must be longer than 6 symbols';
			}
			
			if (!User::checkEmailExists($email)) {
				$errors[] = 'email already exists, try another';
			}
			
			if ($errors == false) {
				$result = User::register($name, $email, $password);
			}
		}
		
		require_once(ROOT . '/views/user/register.php');
		return true;
	}
}