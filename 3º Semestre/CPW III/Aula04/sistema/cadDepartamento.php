<?php
    include "configuracao.php";
    switch ($_REQUEST["acao"]){
        case "cadastrar" : 
            $nomeDepartamento = $_POST["nome"];           
            $sql = "INSERT INTO departamento (nomeDepartamento) VALUES ('{$nomeDepartamento}')";
            $res = $conn->query($sql);
            if($res==true){
                echo "<script>alert('Cadastro com Sucesso!');</script>";
                echo "<script>window.location.href = '../paginas/listarDepartamento.php';</script>";
            }else{
                echo "<script>alert('Não foi possível cadastrar!');</script>";
                echo "<script>window.location.href = '../paginas/listarDepartamento.php';</script>";
            }  
        break;      
        case "editar" : 
            $nomeDepartamento = $_POST["nome"];
            
            $sql = "UPDATE departamento SET nomeDepartamento='{$nomeDepartamento}' WHERE idDepartamento=".$_POST["id"];
            $res = $conn->query($sql);
            if($res==true){
                echo "<script>alert('Alterado com Sucesso!');</script>";
                echo "<script>window.location.href = '../paginas/listarDepartamento.php';</script>";
            }else{
                echo "<script>alert('Não foi possível alterar!');</script>";
                echo "<script>window.location.href = '../paginas/listarDepartamento.php';</script>";
            }  
        break;
        case "excluir" : 
            $sql = "DELETE FROM departamento WHERE idDepartamento=".$_GET["id"];
            $res = $conn->query($sql);
            if($res==true){
                echo "<script>alert('Excluído com Sucesso!');</script>";
                echo "<script>window.location.href = '../paginas/listarDepartamento.php';</script>";
            }else{
                echo "<script>alert('Não foi possível excluir!');</script>";
                echo "<script>window.location.href = '../paginas/listarDepartamento.php';</script>";
            }  
        break;
    }
