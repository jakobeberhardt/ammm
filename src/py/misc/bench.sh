for i in {75..90}; do
    sed -i "s/^\(inputDataFile *= *data\/\)[0-9]\+\(_0.dat\)/\1$i\2/" config/config.dat
    PYTHONPATH=/home/jeberhardt/projects/ammm/src/py python3.8 Main.py >> solutions_grasp_a1_50s_10ls/${i}_0.sol; done
