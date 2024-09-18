echo "all variable passed to the script $@"
echo "all variable passed to the script $#"
echo "script name $0"
echo "current working directory $PWD"
echo "home directory of the user who is running the script $HOME"
echo "the pid of the script $$"
sleep 100 &
echo "the PID of the background process $!"