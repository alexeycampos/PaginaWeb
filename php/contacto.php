<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = htmlspecialchars($_POST["nombre"]);
    $email = htmlspecialchars($_POST["email"]);
    $mensaje = htmlspecialchars($_POST["mensaje"]);

    echo "Gracias, $nombre. Hemos recibido tu mensaje: '$mensaje'. Te responderemos pronto al correo $email.";
} else {
    echo "Acceso no permitido.";
}
?>