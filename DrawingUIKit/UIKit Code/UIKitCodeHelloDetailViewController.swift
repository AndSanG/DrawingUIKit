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
        label.text = "This is a UIKit UIView created programmatically that is used to display a detail view."
        label.textAlignment = .center
        label.textColor = .label
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
                
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.leadingAnchor.constraint(greaterThanOrEqualTo: view.layoutMarginsGuide.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.trailingAnchor, constant: -16)
        ])
    }
}
