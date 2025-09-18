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
            SwiftUICodeHelloViewContent(
                title: "Go to details",
                subtitle: "Hello init host"){
                    navigateToDetail=true
                }
                .navigationTitle("SwiftUI Init")
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(isPresented:$navigateToDetail) {
                    SwiftUICodeHelloDetailView()
                }
        }
        
    }
}



#Preview {
    SwiftUINavigationView()
}
