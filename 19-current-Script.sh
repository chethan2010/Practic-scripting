#!/bin/bash

Course="Devops From Current script"

echo "befor calling other script, course:$Course"
echo "Process id for current shell script:$$"

source ./16-colours.sh
echo "After calling other script, course:$Course"