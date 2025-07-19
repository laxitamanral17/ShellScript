#!/bin/bash
#
#!/bin/bash

read -p "Enter the number: " num

flag=1

# Check if number is less than or equal to 1
if [ "$num" -le 1 ]; then
    flag=0
else
    # Loop from 2 to (num - 1)
    for (( i=2; i<num; i++ ))
    do
        if (( num % i == 0 )); then
            flag=0
            break
        fi
    done
fi

# Check the flag and print result
if [ $flag -eq 1 ]; then
    echo "$num is a prime number ✅"
else
    echo "$num is not a prime number ❌"
fi


