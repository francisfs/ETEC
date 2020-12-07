<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
    <style> 
        body {
            background-image: url(fundo.jpg);
        }

    </style>
</head>
<body>

<div class="w3-container w3-center w3-black">

<h2>Cadastro confirmado com sucesso!</h2>

</div>



    <div class="w3-container w3-center w3-blue">
        <div style='text-align:left'> 
        <?php
        $nome = $_POST['txtNome']."<br>";
        echo "Nome: ".$nome;
        $sobrenome = $_POST['txtSobrenome']."<br>";
        echo "Sobrenome: ".$sobrenome;
        $email = $_POST['txtEmail']."<br>";
        echo "Email: ".$email;
        $formacao = $_POST['txtFormacao']."<br>";
        echo "Formação: ".$formacao;
        $ultempre = $_POST['txtEmprego']."<br>";
        echo "Descrição do último emprego: ".$ultempre;
       
        ?>
         </div>
    
    </div>
    
</body>
</html>




