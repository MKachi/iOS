# iOS-templates  
iOS template projects, storyboard, xib, only code use auto layout.  
  
## xib (Xcode Interface Builder)  
#### step 1.  
![remove_storyboard](./docs/remove_storyboard.png)  
Remove `Main.storyboard` from project and `Info.plist`.  
![xib_0](./docs/xib_0.png)  
Click to `Info.plit`  
![xib_1](./docs/xib_1.png)  
You click `-` to remove  

#### step 2.  
You write same this sample for `AppDelegate`.  
``` swift
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
```
  
#### step 3.  
Create xib file, must be created with the same name as `ViewController`.  
next set file's owner for your `ViewController` and connect view for xib view.  
![xib_0](./docs/xib_2.png)  
![xib_1](./docs/xib_3.png)  
Set file's owner for your `ViewController`  
![xib_2](./docs/xib_4.png)   
Connect view for xib view.  