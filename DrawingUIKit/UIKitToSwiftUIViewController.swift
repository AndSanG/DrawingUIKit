//
//  UIKitToSwiftUIViewController.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//

import UIKit
import SwiftUI

class UIKitToSwiftUIViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func showSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUICodeHelloView())
    }
}
