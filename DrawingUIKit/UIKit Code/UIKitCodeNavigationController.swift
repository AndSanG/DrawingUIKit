//
//  UIKitCodeNavigationController.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 16/9/25.
//

import UIKit

class UIKitCodeNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("UIKitCodeNavigationController.viewDidLoad")
        let root = UIKitCodeHelloViewController()
        self.viewControllers = [root]
    }
}
