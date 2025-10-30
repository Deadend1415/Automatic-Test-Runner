<?php
// Simple PHP demo file


function greet($name) {
    echo "Hello, " . htmlspecialchars($name) . "!";
}


$user = "Daniel";
greet($user);
?>

