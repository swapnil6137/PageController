//
//  ViewController.swift
//  CustomPagerController
//  Created by Swapnil Shinde on 19/11/23.
//

import HMSegmentedControl
import UIKit

 
class CustomSegment : HMSegmentedControl , DTSegmentedControlProtocol {
    
    func setTitle(_ title: String?, forSegmentAt segment: Int) {
        
    }
    
    func setImage(_ image: UIImage?, forSegmentAt segment: Int) {
        
    }
    
    
    init(sectiontitles : [String]) {
        super.init(sectionTitles: sectiontitles)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    

     func setTitleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?, for state: UIControl.State) {
        if state == UIControl.State.normal {
            titleTextAttributes = attributes ?? [:]
        } else if state == UIControl.State.selected {
            selectedTitleTextAttributes = attributes ?? [:]
        }
    }
}

class CustomPagerController: DTPagerController {
    init() {
        
        var segmentControllers : [UIViewController] = []
        let viewController1 = ViewController.instantiate(from: .Main)
        viewController1.title = "One"
        viewController1.view.backgroundColor = .purple
        segmentControllers.append(viewController1)
        let viewController2 = ViewController.instantiate(from: .Main)
        viewController2.title = "Two"
        viewController2.view.backgroundColor = .blue
        segmentControllers.append(viewController2)
        let viewController3 = ViewController.instantiate(from: .Main)
        viewController3.view.backgroundColor = .red
        viewController3.title = "Three asdasdsd sdasdasd"
        segmentControllers.append(viewController3)
      
        let segmentedControl = CustomSegment.init(sectiontitles: ["One", "Two", "Three asdasdsd sdasdasd"])
       
            super.init(viewControllers: segmentControllers, pageSegmentedControl: segmentedControl)

        title = "CustomPagerController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.tabBarController?.tabBar.isHidden = true

        if let segmentedControl = pageSegmentedControl as? CustomSegment {
            
            segmentedControl.segmentWidthStyle = .dynamic
            segmentedControl.selectionIndicatorLocation = .bottom
            segmentedControl.selectionIndicatorHeight = 2
            segmentedControl.segmentEdgeInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.red,.font:  UIFont.systemFont(ofSize: 15)], for: .selected)
            segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.gray,.font:  UIFont.systemFont(ofSize: 15)], for: .normal)
            segmentedControl.selectionIndicatorColor = UIColor.red
            
            
            
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setUpSegmentedControl(viewControllers: [UIViewController]) {
        super.setUpSegmentedControl(viewControllers: viewControllers)

        perferredScrollIndicatorHeight = 0

        if let segmentedControl = pageSegmentedControl as? HMSegmentedControl {
            segmentedControl.selectionIndicatorColor = UIColor.blue
        }
    }

    override func updateAppearanceForSegmentedItem(at index: Int) {
        // Does not do anything since custom page control does not support title/image update
    }
}


