<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado</title>
</head>
<body>
    <header>
        <?php
            //var_dump($_REQUEST); //Junção das Variáveis Superglobais $_GET, $_POST, $_COOKIES  
            $nome = $_POST["nome"];
            $sobrenome = $_POST["sobrenome"];
            echo "É um prazer te conhecer <strong>$nome $sobrenome</strong>! Seja Bem Vindo!!";
        ?>
        <hr>
        <a href="index.php">Voltar para página principal</a>
    </header>    
</body>
</html>