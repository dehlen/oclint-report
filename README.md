# xcode-buildscripts
Collection of shell scripts to include in your Xcode project.

##Setup

1. Open your Xcode project
2. Select your project in the project navigator
3. Go to Build Phases
4. Select your target
5. Click on the little "plus"-icon and select `New Run Script Phase` or go to `Editor->Add Build Phase->Add Run Script Build Phase`
6. Copy the script in the textarea and build your project


##Installation


###oclint-run-script
**Information:** 
Generates a static code analysis of your project and shows the warnings in your Xcode issue navigator.

**Installation:**
Quick start to create an oclint-report for your xcode workspace or project. 
You need to install oclint to use this script.
You can do this via their offical website: [http://oclint.org/](oclint)
or via homebrew: 

```
brew install https://gist.githubusercontent.com/TonyAnhTran/e1522b93853c5a456b74/raw/157549c7a77261e906fb88bc5606afd8bd727a73/oclint.rb
```

Then run the script from your projects root directory to create a report html.

###total lines of code
**Information:**
Shows the total number of lines of code of your project. To get this information all `.h` and `.m` files are counted.

**Installation:**
No need to install anything since wc is included on all UNIX platforms.
