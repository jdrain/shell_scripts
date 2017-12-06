for i in `find ../dev/DirtyHistoryCrawler -type f`;
    do 
	FOUND=`cat $i | egrep 'var|const'`
#	printf "FOUND\n\n$FOUND\n"

	if [ "$FOUND" = "" ]
        then
		printf "Nothing found\n"
	else
		printf "FOUND SOMETHING!\n$FOUND\n"
                printf "\n\nFILE $i:\n\n$FOUND\n\n" >> ./results.txt
        fi
    done;
