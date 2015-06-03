# xcode-buildscripts
Collection of shell scripts to include in your Xcode project.

Feel free to contribute !
This repository should be a great collection of useful build scripts.

##Setup

1. Open your Xcode project
2. Select your project in the project navigator
3. Go to Build Phases
4. Select your target
5. Click on the little "plus"-icon and select `New Run Script Phase` or go to `Editor->Add Build Phase->Add Run Script Build Phase`
6. Copy the script in the textarea and build your project

Alternatively have a look at this website for detailed picture description: [http://www.runscriptbuildphase.com/](runscriptbuildphase.com)

##Scripts


###oclint-run-script
**Information:** 
Generates a static code analysis of your project and shows the warnings in your Xcode issue navigator.

**Installation:**
Quick start to create an oclint-report for your xcode workspace or project. 
You need to install oclint to use this script.
You can do this via their offical website: (http://oclint.org/)[oclint]
or via homebrew: 

```
brew install https://gist.githubusercontent.com/TonyAnhTran/e1522b93853c5a456b74/raw/157549c7a77261e906fb88bc5606afd8bd727a73/oclint.rb
```

Then run the script from your projects root directory to create a report html.

###totalLOC
**Information:**
Shows the total number of lines of code of your project. To get this information all `.h` and `.m` files are counted.

**Installation:**
No need to install anything since wc is included on all UNIX platforms.

###todo-fixme
**Information:**
Shows all your `//TODO` and `//FIXME` comments as warnings in the Xcode issue navigator.

**Installation:**
No need to install anything.

###code-formatter
**Information**
Formats your code everytime you build your project.

**Installation**
See here on how to add this feature to your current Xcode installation.
(https://github.com/octo-online/Xcode-formatter)[Xcode-formatter]

##Contact
Something is not working ?
Please file a ticket here on github.

If you want to get in touch with me because of another reason you can leave me a message at (mailto:dehlen@me.com)[dehlen@me.com] or on twitter (https://twitter.com/da_eh)[@da_eh].

