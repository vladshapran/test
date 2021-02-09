import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let submodules = (
         movie: MovieModuleBuilder.build(usingNavigationFactory: NavigationBuilder.build) , 
         favourites: FavouritesModuleBuilder.build(usingNavigationFactory: NavigationBuilder.build)
        )
       
        let tabBarController = TabBarModuleBuilder.build(usingSubmodules: submodules)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }

    


}
