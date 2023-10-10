//
//  LikeView.swift
//  books
//
//  Created by Kagan Kuscu on 10.10.23.
//

import SwiftUI

struct LikeView: View {
    let value: Bool
    
    let imageOn = "heart.fill"
    let imageOff = "heart"
    
    var body: some View {
        VStack {
            if value {
                Image(systemName: imageOn)
            } else {
                Image(systemName: imageOff)
            }
        }
    }
}

#Preview {
    VStack {
        LikeView(value: false)
        LikeView(value: true)
    }
}
