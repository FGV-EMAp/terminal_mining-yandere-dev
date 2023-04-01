#!/usr/bin/bash

mkdir outputdados
find ../Dados/machado -name '*.txt' -exec cp -t outputdados/ {} \;
cd outputdados
cat $(ls -t) > todos.txt
cd ..
echo `wc -w outputdados/todos.txt | awk '{print $1}'` > resposta_ex_1
rm -r outputdados