//
//  Extension.swift
//  sample
//
//  Created by Swapnil Shinde on 19/11/23.
//

import UIKit

extension UIViewController {
    
    class var storyboardID : String {
        return "\(self)"
    }
    
    static func instantiate(from appStoryboard : StoryboardExtension) -> Self {
        return appStoryboard.viewController(viewControllerClass: self)
        
    }
    
    enum StoryboardExtension : String {
        
        case Main
        
        var instance : UIStoryboard {
            return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
        }
        
        func viewController<T : UIViewController>(viewControllerClass : T.Type) -> T {
            let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
            return instance.instantiateViewController(withIdentifier: storyboardID) as! T
        }
        
        func initialViewController() -> UIViewController? {
            return instance.instantiateInitialViewController()
        }
    }
}
