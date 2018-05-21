# iOS-templates  
iOS template projects, storyboard, xib, only code use auto layout.  
  
## xib (Xcode Interface Builder)  
#### step 1.  
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
  
#### step 2.  
Create xib file, must be created with the same name as `ViewController`.  
next set file's owner for your `ViewController` and connect view for xib view.  
![xib_0](docs/xib_0.png)  
![xib_1](/docs/xib_1.png)  
Set file's owner for your `ViewController`  
![xib_2](/docs/xib_2.png)  
Connect view for xib view.  