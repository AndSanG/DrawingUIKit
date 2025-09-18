//
//  SwiftUINavigationView.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//

import SwiftUI

struct SwiftUINavigationView: View {
    @State private var navigateToDetail: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, This is SwiftUI NavigationStack")
                Button("Go to details ") {
                    navigateToDetail=true
                }
            }
            .navigationDestination(isPresented:$navigateToDetail) {
                SwiftUICodeHelloDetailView()
            }
        }
        .navigationTitle("SwiftUI Navigation")
    }
}



#Preview {
    SwiftUINavigationView()
}
