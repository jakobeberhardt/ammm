maxExecTime=0

while [ $maxExecTime -lt 300 ]; do
    # Update the maxExecTime in config.dat
    sed -i "s/^\(maxExecTime *= *\)[0-9]\+/\1$maxExecTime/" config/config.dat

    # Run the Python script and redirect output to a file
    PYTHONPATH=/home/jeberhardt/projects/ammm/src/py python3.8 Main.py >> solutions_increase_time/maxExecTime_${maxExecTime}.sol

    # Increment maxExecTime for the next iteration
    maxExecTime=$((maxExecTime + 20))
done
