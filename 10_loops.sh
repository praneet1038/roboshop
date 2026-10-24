
#!/bin/bash

start=$1
end=$2

for i in $(seq "$start" "$end")
do
    echo "$i"
done
#############the next one is another script but produce same sresult 


for ((i=$1; i<=$2; i++))
do
    echo "$i"
done