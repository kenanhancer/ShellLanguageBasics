#!/bin/bash

export MY_VARIABLE="Hello"

bash ./script1.sh # MY_VARIABLE can be read by script1.sh

bash ./script1.sh # MY_VARIABLE can be read by script1.sh

unset MY_VARIABLE

bash ./script1.sh # MY_VARIABLE can not be read by script1.sh