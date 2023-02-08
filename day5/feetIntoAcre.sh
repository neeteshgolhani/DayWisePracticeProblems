# Read input in feet
echo -n "Enter feet: "
read feet
acre=$feet
# Convert feet into meters
meters=`echo $feet $factor | awk '{printf "%.4f\n", $1*$2}'`

# Display result
echo "$feet feet = $meters meters"


