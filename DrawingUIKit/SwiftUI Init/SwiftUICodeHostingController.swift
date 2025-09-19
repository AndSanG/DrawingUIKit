//
//  SwiftUICodeViewController.swift
//  DrawingUIKit
//
//  Created by Andres Sanchez on 17/9/25.
//  https://sarunw.com/posts/swiftui-view-in-uikit-using-uihostingcontroller-subclass/

import UIKit
import SwiftUI

class SwiftUICodeHostingController: UIHostingController <SwiftUINavigationView>{
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: SwiftUINavigationView())
    }

}
