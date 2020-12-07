<body class="w3-black">
<a href="index.php" class="w3-display-topleft">
    <div class="fa fa-arrow-circle-left w3-large w3-indigo w3-button w3-xxlarge"></i>
</a>
<div class="w3-padding w3-content w3-text-grey w3-third w3-margin w3-display-middle">
        <?php
            $host = "localhost";
            $usuario = "root";
            $senha = "usbw";
            $bd = "pwii";
            try{
                $conecta = new PDO("mysql:dbname=$bd; host=$host; port=3307; charset=utf8", $usuario, $senha);
            $conecta->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo '
            <div class="w3-padding w3-content w3-half w3-display-topmiddle w3-margin">
            <h1 class="w3-center w3-indigo w3-round-large w3-margin">Lista de Produtos</h1>
            <table class="w3-table-all w3-centered w3-text-black">
            <thead>
            <tr class="w3-center w3-indigo">
            <th>codigo</th>
            <th>estado</th>
            <th>Sigla</th>
            </tr>
            <thead>
            ';
            $sql = "SELECT * FROM estado" ;
            $resultado = $conecta->query($sql);
            if($resultado != null)
            foreach($resultado as $linha) {
                echo '<tr>';
                echo '<td>'.$linha['idestado'].'</td>';
                echo '<td>'.$linha['nome'].'</td>';
                echo '<td>'.$linha['sigla'].'</td>';
                echo '</tr>';
            }
            echo '
            </table>
            </div>';
            }catch(PDOException $e){
            echo "falha ao conectar: ". $e->getMessage();
            }
        ?>
 </div>
 </div>
</body>
</html>
