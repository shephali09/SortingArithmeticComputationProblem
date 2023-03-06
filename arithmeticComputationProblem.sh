read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

temp=$(echo $b $c | awk '{print $1*$2}')
arithmeticOperation1=$(echo $a $temp | awk '{print $1+$2}')

