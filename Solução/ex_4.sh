#!/usr/bin/bash

cat ../Dados/machado/contos/macn001.txt | sed 's/ /\n/g' | tr 'A-Z' 'a-z' | tr 'Ç' 'ç' | tr -d '[:punct:]' | tr -d "—0123456789"| sort | uniq -c | sort | sed "s/^[ \t]*//" > resposta_ex_4
