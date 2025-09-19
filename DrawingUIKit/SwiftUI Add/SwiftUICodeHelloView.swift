//
//  SwiftUICodeHelloView.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//

import SwiftUI
import UIKit

struct SwiftUICodeHelloView: View {
    let navigationController: UINavigationController?
    
    var body: some View {
        SwiftUICodeHelloViewContent(
            title: "Go to details",
            subtitle: "Hello World SwiftUI inside UIKit.\n \n This UI is created by intantiating a HostingController in the viewDidLoad of a UIViewController with addChild and addSubview. Here the layout constraints are needed to position the SwiftUIView correctly within the UIViewController.",
            action: goToDetail)
    }
    
    func goToDetail() {
        if let nav = navigationController {
            let hosting = UIHostingController(rootView: SwiftUICodeHelloDetailView())
            nav.pushViewController(hosting, animated: true)
        }
    }
}

#Preview {
    SwiftUICodeHelloView(navigationController: UINavigationController())
}

