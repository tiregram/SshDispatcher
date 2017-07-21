move_to_sshdistroot()
{
    while [[ ${PWD} != "/" ]]
    do

	if [[ -d con && -d in && -d out ]]
	then
	    echo ${PWD}
	    return 1
	else
	    cd ..
	fi
	
    done;
    echo "you are not in a Ssh Dispatcher Directory" 2>&1
    exit 2
}
