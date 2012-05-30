loops=$1
shift;
command="$@"

time for i in $(eval echo {1..$loops})
do
        echo $command
        $command >> /dev/null
done

