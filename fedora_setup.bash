#!/usr/bin/env bash 

# dnf install -y neovim git make 
# dnf install -y tmux wget nodejs fish which powerline gcc python3-pip
# vim: sts=4 ts=4 sw=4

function usage {
	echo "$1 [-h]  -e email_address  -n Surname Name"
	echo "Please enter email anddress and Name for git history"
}


# main 
while getopts 'hn:e:' arg; do
	case "$arg" in 
		h)  
			usage
			exit 0
		;;
		e) 
			email="$OPTARG"
		;;
		n) 
			name="$OPTARG"
		;;
		?)  usage
			exit 1
		;;
	esac
done
if [[ -z "$name" ]] || [[ -z "email" ]]
then
	usage
	exit 2
fi

./tmux_config.sh 
./git_config.sh $name  $email
./neovim_config.sh
./compilers_config.sh
# omf seems to have some side effects so we run it last
./fish_config.fish 

