import UIKit

typealias NavigationFactory = (UIViewController) -> (UINavigationController)

class NavigationBuilder {
  static func build(rootView: UIViewController) -> UINavigationController {
    let navigationController = UINavigationController(rootViewController: rootView)
    return navigationController
  }
}
