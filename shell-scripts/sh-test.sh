for FILE in ./*; do echo $FILE; done

echo
echo "File or directory tests:"
if test -f ./sh-test.sh ; then echo sh-test is a file; fi
if test -d ../test ; then echo ../test is a directory; fi 

echo
echo "Reading sh-test.sh:"
echo "---"
while read p; do echo "$p"; done < sh-test.sh
echo "---"
echo "Finished reading sh-test.sh"
