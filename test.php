<?php
session_start();

$valid_username = "Admin";
$valid_password = "testing@123";
$message = "";

// Check if the math question is set in session
if (!isset($_SESSION['math_answer'])) {
    $num1 = rand(1, 10);
    $num2 = rand(1, 10);
    $_SESSION['math_question'] = "$num1 + $num2";
    $_SESSION['math_answer'] = $num1 + $num2;
}

if (isset($_POST['username']) && isset($_POST['password'])) {
    if ($_POST['username'] === $valid_username && $_POST['password'] === $valid_password) {
        $message = "Solve the math problem to verify you're human!";
        $_SESSION['logged_in'] = true;
    } else {
        $message = "Invalid username or password!";
    }
} elseif (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] && isset($_POST['math_solution'])) {
    if ((int)$_POST['math_solution'] === $_SESSION['math_answer']) {
        $message = "Logged in successfully!";
        unset($_SESSION['math_question']);
        unset($_SESSION['math_answer']);
    } else {
        $message = "Incorrect math solution!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <?php if (isset($_SESSION['logged_in']) && $_SESSION['logged_in']): ?>
            <h2>Math Verification</h2>
            <form action="index.php" method="post">
                <label for="math_solution"><?php echo $_SESSION['math_question']; ?> = </label>
                <input type="text" id="math_solution" name="math_solution">
                <input type="submit" value="Verify">
            </form>
        <?php else: ?>
            <h2>Login</h2>
            <form action="index.php" method="post">
                <input type="text" id="username" name="username" placeholder="Username">
                <input type="password" id="password" name="password" placeholder="Password">
                <input type="submit" value="Login">
            </form>
        <?php endif; ?>
        <p><?php echo $message; ?></p>
    </div>
</body>
</html>
