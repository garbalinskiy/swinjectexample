//
//  ViewController.swift
//  SwinjectExample
//
//  Created by Serghei Garbalinschi on 8.02.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let rootModuleFactory = RootModuleFactory(container: appDelegate.container)
        let rootView = try! rootModuleFactory.view()
        rootView.frame = .init(x: 0, y: 0, width: 100, height: 100)
        
        view.addSubview(rootView)
        
    }


}

