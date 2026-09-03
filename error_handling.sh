#!/bin/bash

create_directory() {
        mkdir demo
}

if ! create_directory; then 
        echo "The code is being exited as the directory already exist"
        exit 1
fi

echo "This should not work because the code is interrupted"



# Expected output::

#root@ip-172-31-8-232:~/shell-script-project# vi error_handling.sh
#root@ip-172-31-8-232:~/shell-script-project# rm -r demo
#root@ip-172-31-8-232:~/shell-script-project# ./error_handling.sh
#This should not work because the code is interrupted
#root@ip-172-31-8-232:~/shell-script-project# ls
#demo  error_handling.sh  scripting-project.sh
#root@ip-172-31-8-232:~/shell-script-project# ./error_handling.sh
#mkdir: demo: File exists
#The code is being exited as the directory already exist
#root@ip-172-31-8-232:~/shell-script-project#
