//
//  SwiftUICodeHelloDetailView.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//

import SwiftUI

struct SwiftUICodeHelloDetailView: View {
    @State private var showPopover = false
    
    var body: some View {
        VStack {
            Spacer().frame(height: 24)
            VStack(spacing: 16) {
                Image(systemName: "chart.line.uptrend.xyaxis")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240)
                    .foregroundColor(.blue)
                Text("Detail written in SwiftUI")
                Button("More info") {
                    showPopover.toggle()
                }
                .buttonStyle(.borderedProminent)
                .popover(isPresented: $showPopover, attachmentAnchor: .rect(.bounds), arrowEdge: .bottom) {
                    VStack(spacing: 12) {
                        Text("Popover content")
                            .font(.headline)
                        Text("This is a SwiftUI popover demonstrating secondary detail presentation.")
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal)
                        Button("Close") {
                            showPopover = false
                        }
                    }
                    .padding()
                    .frame(minWidth: 240, idealWidth: 300, maxWidth: 340)
                    .presentationCompactAdaptation(.none)
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Detail")
    }
}

#Preview {
    SwiftUICodeHelloDetailView()
}
