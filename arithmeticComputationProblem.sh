read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

arithmeticOperation4=$(echo $a $b $c | awk '{print $1*$2+$3}')

