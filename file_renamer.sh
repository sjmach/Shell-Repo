#!/bin/ksh
# Used to rename files in a directory

function fileRenamer
{

	actFileDir=/home/sundeep/filecompare/files
	destLoc=/home/sundeep/filecompare/files
	cd $actFileDir
	ls ACT*.txt > actList
	echo $actFileDir 
	echo $destLoc
		
	while read acTline
	do	
			  filename=$(echo $acTline |awk '{print $2,$3,$4}' FS=_ OFS=_)
			  filename="EXPECTED_$filename"
			  cp $actFileDir/$acTline $destLoc/$filename	
	done < actList
	
	
   
}

fileRenamer