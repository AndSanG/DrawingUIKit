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
            subtitle: "Hello add a host long message",
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

