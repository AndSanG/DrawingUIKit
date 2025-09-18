//
//  UIKitToSwiftUIViewController.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//

import UIKit
import SwiftUI

class UIKitToSwiftUIViewController: UIViewController{
    private let host = UIHostingController(rootView: SwiftUICodeHelloView())
    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(host)
        view.addSubview(host.view)
        host.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            host.view.topAnchor.constraint(equalTo: view.topAnchor),
            host.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            host.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            host.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        host.didMove(toParent: self)
    }
    
}
