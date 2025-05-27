# Associateate array input

declare -A capitals
capitals=(
    ["USA"]="Washington, D.C."
    ["Canada"]="Ottawa"
    ["Mexico"]="Mexico City"
)
echo "Capitals: ${capitals[@]}"

# Adding element indvidually
capitals["France"]="Paris"
echo "Capitals after adding element: ${capitals[@]}"


# Reading input form user
echo "Enter three fruits:"
read -a fruit1 fruit2 fruit3
usr_fruits=($fruit1 $fruit2 $fruit3)
echo "Your entered: ${usr_fruits[@]}"

# Read input in a loop
names=()
for ((i=0; i<3; i++)); do
    read -p "Enter name $((i+1)): " name
    names+=("$name")
done
echo "Names: ${names[@]}"


# Read input from a file
vechicles=()
which IFS= read -r line; do
    vechicles+=("$line")
done < "list.txt"
echo "Vechicles: ${vechicles[@]}"