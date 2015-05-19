echo "oclint-report v 1.0, David Ehlen"
echo "© 2015"
echo "Please make sure this script runs from your project root directory"

command -v oclint >/dev/null || (echo "oclint is required but it's not installed." && echo "Aborting." && exit 0;) 


read -p "Workspace [w] or Project [p]: " TYPE

if [ $TYPE == "w" ]; then
read -p "Enter your workspace name: " WNAME
read -p "Enter your scheme name: (Enter to adopt workspace name): " SNAME

if [[ -z $SNAME ]]; then
SNAME=$WNAME
fi

xcodebuild -workspace $WNAME.xcworkspace -scheme $SNAME clean build
oclint-xcodebuild

#Create oclint report
oclint-json-compilation-database -- -report-type html -o report.html -rc=LONG_LINE=120
echo "Report was created as report.html in your project directory."
open report.html

elif [ $TYPE == "p" ]; then 
read -p "Enter your project name: " PNAME
read -p "Enter your scheme name: (Enter to adopt workspace name): " PSNAME

if [[ -z $PSNAME ]]; then
PSNAME=$PNAME
fi

xcodebuild -workspace $PNAME.xcodeproj -scheme $PSNAME clean build
oclint-xcodebuild

#Create oclint report
oclint-json-compilation-database -- -report-type html -o report.html -rc=LONG_LINE=120

echo "Report was created as report.html in your project directory."
open report.html

else 
  echo "You entered an invalid character."
  echo "Aborting"
  exit 0;
fi

