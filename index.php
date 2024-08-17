<?php

require_once 'pages/database.php';

session_start();

// Vérifiez si l'utilisateur est déjà connecté
if (isset($_SESSION['pseudo'])) {
    // Rediriger l'utilisateur vers la page d'accueil

} else {
    header('Location: pages/connexion.php');
    exit();
}

ini_set("date.timezone", "Europe/Paris");


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carousel</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar">
        <ul>
            <li><a href="#">Accueil</a></li>
            <li><a href="pages/inscription.php">Inscription</a></li>
            <li><a href="pages/connexion.php">Connexion</a></li>
            <li><a href="pages/deconnexion.php">Déconnexion</a></li>
        </ul>
    </nav>
    <div class="container">
        <h1>Welcome to my website <?php echo $_SESSION['pseudo'] ?></h1>
        <div class="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/image1.jpg" alt="Image 1">
                </div>
                <div class="carousel-item">
                    <img src="images/image2.jpg" alt="Image 2">
                </div>
                <div class="carousel-item">
                    <img src="images/image3.jpg" alt="Image 3">
                </div>
            </div>
            <button class="carousel-control prev" onclick="prevSlide()">&#10094;</button>
            <button class="carousel-control next" onclick="nextSlide()">&#10095;</button>
        </div>
    </div>
    
    

    <script src="js/main.js"></script>
    <script>
        window.addEventListener('beforeunload', function () {
            navigator.sendBeacon('pages/auto_deconnexion.php');
        });
    </script>
</body>
</html>