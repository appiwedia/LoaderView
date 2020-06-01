//
//  LoaderView.swift
//  LoaderView
//
//  Created by Mickael Mas on 01/06/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct LoaderView: UIViewRepresentable {
    @Binding var animate: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityView = UIActivityIndicatorView(style: .large)
        activityView.hidesWhenStopped = false
        activityView.color = .red
        return activityView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animate {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
    typealias UIViewType = UIActivityIndicatorView
    
    
}
