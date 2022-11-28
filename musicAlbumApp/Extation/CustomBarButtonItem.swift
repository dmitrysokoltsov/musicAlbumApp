import UIKit

extension UIViewController {
    
    func createCustomBarButtonItem(selector: Selector) -> UIBarButtonItem {
        
        let button = UIButton()
        button.setImage(UIImage(systemName: "person.fill"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarButtonItem = UIBarButtonItem(customView: button)
        return menuBarButtonItem
    }
}
