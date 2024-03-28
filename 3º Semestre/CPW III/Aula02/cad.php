<?php
    include "configuracao.php";
    switch ($_POST["acao"]){
        case "cadastrar" : 
            $nome = $_POST["nome"];
            $email = $_POST["email"];
            $dataNascimento = $_POST["dataNascimento"];
            $senha = $_POST["senha"];

            $sql = "INSERT INTO usuario (nome, email, dataNascimento, senha) VALUES ('{$nome}','{$email}', '{$dataNascimento}', '{$senha}')";
            $res = $conn->query($sql);      
            break;            
        case "editar" : break;
        case "excluir" : break;
    }
?>