#!/usr/bin/bash
echo "" > titulos.txt
echo "" > titulos2.txt
echo "" > resposta_ex_3
find ../Dados/machado/contos -name '*.txt' | while read arquivo
do
    echo `head -n 1 $arquivo` >> titulos.txt
done
cat titulos.txt | while read titulo
do
    echo ${titulo##*,},$titulo >> titulos2.txt
done
sort titulos2.txt > ordenado.txt
cat ordenado.txt | while read titulo
do
    echo $titulo | cut -d ',' -f 2- >> resposta_ex_3
done
rm -r titulos.txt
rm -r titulos2.txt
rm -r ordenado.txt