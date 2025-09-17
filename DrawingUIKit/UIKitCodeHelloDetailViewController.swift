//
//  UIKitCodeHelloDetailViewController.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 16/9/25.
//

import UIKit

class UIKitCodeHelloDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detail"
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "detail"
        label.textAlignment = .center
        label.textColor = .label
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
