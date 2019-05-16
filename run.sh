IFS=$'\n'
var=$(ls)
set $var

log=log
logdot=.log.

for i in $1 $2 $3 $4 $5 $6
do 
   if [[ $i == *$logdot* ]]; then
		first=${i%.log.*}
		last=${i#*.log.}
		echo $i
		inc="$(($last +1))"
		nf=$first$logdot$inc
		touch $nf	

	fi
	if [[ $i == *$.log ]]; then
		
		dot=.
		first=${i%.*}
		last=${i#*.}
		nf=($first.$last)
		touch $nf.1
		
	fi 
done

