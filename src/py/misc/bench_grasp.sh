min=150

while [ $min -lt 500 ]; do
    # Update the inputDataFile in config.dat with the current file name
    sed -i "s/^\(inputDataFile *= *data\/\)[0-9]\+\(_0.dat\)/\1$min\2/" config/config.dat

    # Check if the sed command was successful
    grep "inputDataFile" config/config.dat

    # Run the Python script and redirect output
    PYTHONPATH=/home/jeberhardt/projects/ammm/src/py python3.8 Main.py >> solution_grasp_time/${min}_0.sol

    # Increment min for the next iteration
    min=$((min + 25))
done
