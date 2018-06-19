## SnapKit
#### step 3.  
``` swift
override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white // background color
    }

```
You set background color in `ViewController.swift` method viewDidLoad()  
  
#### step 4.  
``` podfile
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your xcode project name>' do
    pod 'SnapKit', '~> 4.0'
end
```
create podfile and use this command for turminal.  
``` turminal
$ pod install
```
[< Back](UI.md)  