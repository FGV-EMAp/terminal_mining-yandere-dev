#!/usr/bin/bash

mkdir outputdados
find ../Dados/machado -name '*.txt' -exec cp -t outputdados/ {} \;
cd outputdados
cat $(ls -t) > todos.txt
cd ..
cat outputdados/todos.txt | sed 's/ /\n/g' | tr 'A-Z' 'a-z' | tr 'Ç' 'ç' | tr -d '[:punct:]' | tr -d "—0123456789"| sort | uniq -c | sort | sed "s/^[ \t]*//" > resposta_ex_5
rm -r outputdados