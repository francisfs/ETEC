<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    
    <title></title>
</head>
<body>
    <div class="w3-padding w3-content w3-text-grey w3-thirt w3-display-middle">
        <?php
        $nome = $_POST['txtNome'];
        $senha = $_POST['txtSenha'];
        $servername = ['localhost'];
        $username = ['root'];
        $password = ['usbw'];
        $dbname = ['pwii'];
        $conexao = new mysqli($servername,$username, $password, $dbname);
        if ($conexao->connect_error) {
            die("Connection failed: " . $conexao->connect_error);
           
            $sql = "SELECT * FROM usuario WHERE nome = '".$nome."';";
            
            $resultado = $conexao->query($sql);
            $linha = mysqli_fetch_array($resultado);
            if ($linha != null){
                if ($linha['senha'] == $senha) {
                    echo' <a href="principal.php">
                                <h1 class="w3-button w3-teal">'.$nome.', Seja Bem-vinda! </h1>
                          </a>';
                }
                else {
                    echo '<a href="index.php">
                              <h1 class="w3-button w3-teal">Login Inválido!1 </h1>
                          </a>';
                }

            }
        
        }
        else 
        {
        echo'<a href="index.php">
                <h1 class="w3-button w3-teal">Login Inválido!2 </h1>
             </a>';
        }
                        
        ?>
    </div>
    
</body>
</html>