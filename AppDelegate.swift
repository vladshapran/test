import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        window = UIWindow(frame: UIScreen.main,bounds)
        let initialVC = MovieModuleBuilder()
        window?.rootViewController = initialVC
        window?.makeKeyAndVisible()
        return true
    }

    


}
