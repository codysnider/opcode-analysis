<?php

$x = 'a';
$y = $x.' b';
echo $y;

$x = 'a';
$y = "$x b";
echo $y;

$x = 'a';
$y = "{$x} b";
echo $y;
