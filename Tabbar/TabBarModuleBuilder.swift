import UIKit

class TabBarModuleBuilder {
  static func build(usingSubmodules submodules: TabBarRouter.Submodules) -> UITabBarController {
    let tabs  = TabBarRouter.Submodules(usingSubmodules: submodules)
    let tabBarController = TabBarController(tabs: tabs)  
    return tabBarController
   }
}
