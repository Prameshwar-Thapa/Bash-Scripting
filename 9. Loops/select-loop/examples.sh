#/bin/bash

# Example 1. Fruit menu

select fruit in apple banana orange Quit
do 
    echo "You chose: $fruit"
    [ "$fruit" = "Quit" ] && break
done

# Example 2. Os Selection

PS3="Please select your OS: "

select os in Linux Windows Mac Quit
do
  case $os in
    Linux) echo "You chose Linux";;
    Windows) echo "You chose Windows";;
    Mac) echo "You chose Mac";;
    Quit) echo "Exiting..."; break;;
    *) echo "Invalid option. Please try again.";;
  esac
done


# Exanple 3. File Selector
select file in *.txt 
do
    echo "you selected $file"
    break
done

# Example 4. Simple Calculator

select op in Add Substract Quit 
do 
    case $op in 
        Add) echo "$(( 2 + 3 ))";;
        Substract) echo "$(( 5-2 ))" ;;
        Quit) break;;
    esac
done

# Example 5. Confirmation Menu
select answer in Yes No Cancel
do 
    echo "You choose : $answer"
    break
done 