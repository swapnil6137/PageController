//
//  DTSegmentedControl.swift
//  Pods
//
//  Created by tungvoduc on 15/09/2017.
//
//

import UIKit

// Protocol
// SegmentedControl
public protocol DTSegmentedControlProtocol {

    var selectedSegmentIndex: UInt { get set }

    func setTitle(_ title: String?, forSegmentAt segment: Int)

    func setImage(_ image: UIImage?, forSegmentAt segment: Int)
    
    func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
    
}

open class DTSegmentedControl: UIControl , DTSegmentedControlProtocol {
    public var selectedSegmentIndex: UInt = 0
    
    public func setTitle(_ title: String?, forSegmentAt segment: Int) {
        
    }
    
    public func setImage(_ image: UIImage?, forSegmentAt segment: Int) {
        
    }
    
    public func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) {
        
    }
    
//    public override init() {
//        super.init()
////        super.init(items: items)
//        commonInit()
//    }
//    

//    public override init(items: [Any]?) {
//        super.init()
////        super.init(items: items)
//        commonInit()
//    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        setTintColor(.clear)
//        setDividerImage(UIImage(), forLeftSegmentState: UIControl.State(), rightSegmentState: UIControl.State.selected, barMetrics: UIBarMetrics.default)
//        setDividerImage(UIImage(), forLeftSegmentState: UIControl.State.selected, rightSegmentState: UIControl.State(), barMetrics: UIBarMetrics.default)
    }
    
    private func setTintColor(_ color: UIColor) {
        if #available(iOS 13.0, *) {
//            selectedSegmentTintColor = color
        } else {
            tintColor = color
        }
    }
}
