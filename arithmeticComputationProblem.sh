read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

temp=$(echo $b $c | awk '{print $1*$2}')
arithmeticOperation1=$(echo $a $temp | awk '{print $1+$2}')

arithmeticOperation2=$(echo $a $b $c | awk '{print $1*$2+$3}')

temp=$(echo $a $b| awk '{print $1/$2}')
arithmeticOperation3=$(echo $temp $c | awk '{print $1+$2}')

arithmeticOperation4=$(echo $a $b $c | awk '{print $1%$2+$3}')

declare -A results 
results["Result1"]=$arithmeticOperation1 
results["Result2"]=$arithmeticOperation2 
results["Result3"]=$arithmeticOperation3 
results["Result4"]=$arithmeticOperation4 

sorted_keys=($(echo "${!results[@]}" | tr ' ' '\n' | sort -nrk3 | tr '\n' ' '))
sorted_values=($(echo "${results[@]}" | tr ' ' '\n' | sort -nr | tr '\n' ' '))

echo "Results (in descending order):"
for i in ${!sorted_keys[@]}
do
  echo "${sorted_keys[$i]} = ${sorted_values[$i]}"
done
