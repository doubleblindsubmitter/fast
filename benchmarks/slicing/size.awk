BEGIN {s1=s2=0}
{
 s1+=$1
 s2+=$2
}
END{
	print s2 *100/ s1;
}
