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
                subtitle: "Hello World SwiftUI inside UIKit. \n \n This UI is created using a storyboard with a class that inherits from HostingController, and then embeded a SwiftUI NavigationView hierarchy. No layout constraints are needed."){
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
