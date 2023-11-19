//
//  ViewController.swift
//  sample
//
//  Created by Swapnil Shinde on 16/11/23.
//

import UIKit
//import HMSegmentedControl

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      //  addSegments()
    }
    
//    func addSegments()  {
//        
//        
//         let segmentedControl = HMSegmentedControl(sectionTitles: ["Cities", "So many cities", "Many many many .......... cities"])
//        segmentedControl.frame = CGRect(origin:  CGPoint.init(x: 0, y: 100), size: CGSize.init(width: self.view.bounds.width, height: 40))
//        self.view.addSubview(segmentedControl)
//        
//        
//        let segmentedControl1 = HMSegmentedControl(sectionTitles: ["Cities", "So many cities", "Many many many .......... cities"])
//       segmentedControl1.frame = CGRect(origin:  CGPoint.init(x: 0, y: 100), size: CGSize.init(width: self.view.bounds.width, height: 40))
//        self.view.addSubview(segmentedControl1)
//        
//        
//        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
//        segmentedControl.backgroundColor = .white
//        segmentedControl.segmentWidthStyle = .dynamic
//        segmentedControl.selectionIndicatorLocation = .bottom
//        segmentedControl.layer.masksToBounds = false
//        segmentedControl.layer.shadowColor = UIColor.lightGray.cgColor
//        segmentedControl.layer.shadowOffset = CGSize(width: 0, height: 1)
//        segmentedControl.layer.shadowRadius = 1
//        segmentedControl.layer.shadowOpacity = 0.5
//       
//        
//        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
//
//            NSLayoutConstraint.activate([
//                segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
//                segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 16),
//                segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16),
//                segmentedControl.widthAnchor.constraint(equalToConstant: self.view.bounds.width),
//                segmentedControl.heightAnchor.constraint(equalToConstant: 60)
//            ])
//        
//        segmentedControl.indexChangeBlock = { index in
//            print("\(index) selcted")
//            if index < 2{
//                segmentedControl1.setSelectedSegmentIndex(index+1, animated: true)
//            }else{
//                segmentedControl1.setSelectedSegmentIndex(0, animated: true)
//            }
//            
//        }
//        
//      
//      
//       segmentedControl1.translatesAutoresizingMaskIntoConstraints = false
//       segmentedControl1.backgroundColor = .white
//       segmentedControl1.segmentWidthStyle = .dynamic
//       segmentedControl1.selectionIndicatorLocation = .bottom
//       segmentedControl1.layer.masksToBounds = false
////       segmentedControl1.layer.shadowColor = UIColor.lightGray.cgColor
////       segmentedControl1.layer.shadowOffset = CGSize(width: 0, height: 1)
////       segmentedControl1.layer.shadowRadius = 1
////       segmentedControl1.layer.shadowOpacity = 0.5
//      
//       
//       segmentedControl1.translatesAutoresizingMaskIntoConstraints = false
//
//           NSLayoutConstraint.activate([
//               segmentedControl1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
//               segmentedControl1.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor,constant: 16),
//               segmentedControl1.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16),
//               segmentedControl1.widthAnchor.constraint(equalToConstant: self.view.bounds.width),
//               segmentedControl1.heightAnchor.constraint(equalToConstant: 60)
//           ])
//       
//       segmentedControl1.indexChangeBlock = { index in
//           print("\(index) selcted")
//       }
//    }
//    

    @IBAction func rockAndRoll(_ sender: Any) {
        
        let vc = CustomPagerController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

