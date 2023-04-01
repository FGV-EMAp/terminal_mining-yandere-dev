#!/usr/bin/bash

find ../Dados/machado -name '*.txt' | while read arquivo
do
    echo `head -n 1 $arquivo` >> titulos.txt
done
cat titulos.txt | while read titulo
do
    echo $titulo | cut -d ' ' -f 2- >> titulos2.txt
done
sort titulos2.txt > resposta_ex_2
rm -r titulos.txt
rm -r titulos2.txt