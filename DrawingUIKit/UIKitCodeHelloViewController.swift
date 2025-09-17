//
//  UIKitCodeHelloViewController.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 16/9/25.
//
import UIKit

class UIKitCodeHelloViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "UIKit Code"
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "Hello World UIKit CD"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        let button = UIButton(type: .system)
        button.setTitle("Go to details", for: .normal)
        button.addTarget(self, action: #selector(openDetails), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(greaterThanOrEqualToConstant: 160),
            label.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16),
            label.leadingAnchor.constraint(greaterThanOrEqualTo: view.layoutMarginsGuide.leadingAnchor),
            label.trailingAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
    @objc func openDetails() {
        let vc = UIKitCodeHelloDetailViewController()
        if let nav = self.navigationController {
            nav.pushViewController(vc, animated: true)
        } else {
            present(vc, animated: true)
        }
    }
}
