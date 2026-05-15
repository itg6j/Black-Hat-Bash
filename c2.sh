 #!/bin/bash 
nameDomain=$1
if [[ -z "$nameDomain" ]]; then
	echo "./c2.sh 'Domain'"
	exit 1
fi
result=$(ping -c 1 $nameDomain | grep -E -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'|awk '{print $1; exit}')
result1() {
	if [[ -z "$result"  ]]; then
		return 1
	else 
		return 0
	fi
}
x=null
if result1;  then 
	x="success"
else 
	x="fail"
fi
date1=$(date +%d-%m-%Y)
echo "saif $nameDomain $x  $date1"  >> output.csv
