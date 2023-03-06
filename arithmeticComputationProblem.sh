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

sorted_results=($(for key in "${!results[@]}"; do echo "$key ${results[$key]}"; done | sort -k2 -n))

# Print the sorted results
echo "Computation results in ascending order:"
for result in "${sorted_results[@]}"
do
  echo "$result"
done
