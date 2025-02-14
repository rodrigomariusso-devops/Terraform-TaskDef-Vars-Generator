#!/bin/bash
echo ""

> vars.txt
> terraform_vars.txt

echo "
Declare as vars no formato key=value."

vars=()

while true
do
    read -p "var: " var
        if [ -z $var ]; then
            break
        else
            vars+=($var)
        fi
done

for str in ${vars[@]}; do
    echo $str >> ./vars.txt
done

python3 main.py

echo "Variáveis formatadas:"
cat terraform_vars.txt
echo "
"