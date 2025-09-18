//
//  SwiftUICodeHelloView.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//

import SwiftUI

struct SwiftUICodeHelloView: View {
    @State private var navigateToDetail: Bool = false
    var body: some View {
       
            VStack {
                Text("Hello add a host")
                    .multilineTextAlignment(.center)
                Button("Go to details") {
                    openDetailsSwiftUI()
                }
                NavigationLink("SwiftUI Detail", destination: SwiftUICodeHelloDetailView(), isActive: $navigateToDetail)
                    .hidden()
            }
            .navigationTitle("SwiftUI View")
    }
    func openDetailsSwiftUI() {
        navigateToDetail = true
    }
}

#Preview {
    SwiftUICodeHelloView()
}
