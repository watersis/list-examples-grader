# Create your grading script here

#set -e

rm -rf student-submission
git clone $1 student-submission
cd student-submission
#CP=" .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
javac -cp .:..lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:..lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples.java 2> error.txt >res.txt
grep -i FAILURE res.txt > error.txt
ERR=$(wc -w error.txt)
if [["$ERR" == "0 error.txt"]]
then echo "grade=100% passed"
else echo "grade=0% failed"
fi