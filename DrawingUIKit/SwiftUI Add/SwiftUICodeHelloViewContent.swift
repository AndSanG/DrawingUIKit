//
//  SwiftUICodeHelloViewContent.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 18/9/25.
//

import SwiftUI

struct SwiftUICodeHelloViewContent: View {
    let title: String
    let subtitle: String
    let action: () -> Void
    
    @State private var labelHeight: CGFloat = 0
    private let spacing: CGFloat = 16
    private let buttonHeight: CGFloat = 50
    
    var body: some View {
        VStack {
            Spacer()
            Button(title) {
                action()
            }
            .frame(height: buttonHeight)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(alignment: .center) {
            Text(subtitle)
                .font(.system(size: 17, weight: .regular))
                .background(
                    GeometryReader { proxy in
                        Color.clear
                            .preference(key: LabelHeightPreferenceKey.self, value: proxy.size.height)
                    }
                )
                .onPreferenceChange(LabelHeightPreferenceKey.self) { labelHeight = $0 }
                .offset(y: -(buttonHeight / 2 + spacing + labelHeight / 2))
        }
        .padding()
    }
}

private struct LabelHeightPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    SwiftUICodeHelloView(navigationController: UINavigationController())
}
