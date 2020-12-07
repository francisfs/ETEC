<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Resultado Final</title>
        <style>
        body {background-color: black;}
        </style>
    </head>
        <body> 
        
            <div class="w3-container w3-teal w3-center">
                <h1>
                    <?php
                    $nome = $_POST['txtNome'];
                    $VlComp = $_POST['txtValorCompra'];
                    $Valor_desconto = 0.0;
                    $TxDesc = 0.0;
                    $opcaoPag = $_POST['cmbPag']; 
                                  
                    if($opcaoPag == "deposito")
                        {
                            $TxDesc = 10;
                            $Valor_desconto = ($VlComp * $TxDesc) / 100;
                            
                        }
                        else
                        {
                            if($opcaoPag == "boleto")
                            {
                                $TxDesc = 8;
                                $Valor_desconto = ($VlComp * $TxDesc) / 100;
                            }
                        }
                        $valor_a_pagar = $VlComp - $Valor_desconto;
                        echo "PROMOÇÃO DE MES DE ANIVERSÁRIO!"."<br>";
                        echo $nome." ! "."<br>";
                        echo "Valor da Compra Sem Desconto: ".$VlComp."<br>";
                        echo "Forma de Pagamento escolhida: ".$opcaoPag."<br>";
                        echo "Desconto de: ".$TxDesc." % "."<br>";
                        echo "Você economizou: R$ ".$Valor_desconto."<br>";
                        echo "Valor à Pagar: ".$valor_a_pagar;
                    ?>
                </h1>
            </div>
        </body>
</html>