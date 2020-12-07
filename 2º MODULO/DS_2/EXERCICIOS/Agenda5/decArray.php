<?php
//declaração de arrays
 $sudeste = array("São Paulo", "Minas Gerais", "Rio de Janeiro", "Espírito Santo");
 
/* outras maneira de declara arrays
 ou $sudeste[] = "São Paulo";
 $sudeste[] = "Minas Gerais";
 $sudeste[] = "Rio de Janeiro";
 $sudeste[] = "Espírito Santo";
 
 $sudeste[1] = "Minas Gerais";
 $sudeste[0] = "São Paulo
 $sudeste[2] = "Rio de Janeiro";
 $sudeste[3] = "Espírito Santo";
 */

echo $sudeste[0];


$filme = array  ('titulo' => ' Uma mente Brilhante ', 'duração' => ' 135 min ', 'genero' => ' Drama ');

 echo $filme['titulo'].'<br>';
 echo $filme['duração'].'<br>';
 echo $filme['genero'].'<br>';


?>