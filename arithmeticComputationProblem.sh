read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

temp=$(echo $a $b| awk '{print $1/$2}')
arithmeticOperation2=$(echo $temp $c | awk '{print $1+$2}')

