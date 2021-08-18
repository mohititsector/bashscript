
# Function to get max difference of largest and smallest number

function maxDiff(){
    # Loop through all elements in the array
    for i in "${arrayName[@]}"
    do
        # Update max if applicable
        
        if [[ "$i" -gt "$max" ]]; then
            max="$i"
        fi
    
        # Update min if applicable
        if [[ "$i" -lt "$min" ]]; then
            min="$i"
        fi
    done
    #get the difference of the largest and smallest 
    result=$((max - min))
    
    echo $result
}

# Function to get  average of the array
function arrAverage(){
    #initialize sum by 0
    local sum=0
    #initialize total by 0
    local total=0
    #loop until all are sum up
    for i in "${arrayName[@]}"
    do
        #add them to sum
        sum=`expr $sum + $i`
        #increment count of array element
        total=`expr $total + 1`
    done
    
    #experssion to get the average 
    avg=`expr $sum / $total`
    
    echo $avg
    #printf '%0.3f' "$average"
}



# Initialize an array:
arrayName=(10 8 7 9 5 29 21 11 15 8)

# Use choose first element of array as initial values for min/max;
max=${arrayName[0]}
min=${arrayName[0]}

# Output results:
echo "Maximum numeric difference within array = $(maxDiff)"
echo "Average of all the values in the array = $(arrAverage)"
