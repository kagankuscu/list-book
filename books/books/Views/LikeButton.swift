//
//  LikeButton.swift
//  books
//
//  Created by Kagan Kuscu on 9.10.23.
//

import SwiftUI


struct LikeButton: View {
    @Binding var isLike: Bool
    
    var body: some View {
        Button(action: {
            isLike.toggle()
        }, label: {
            if isLike {
                Image(systemName: "heart.fill")
            } else {
                Image(systemName: "heart")
            }
        })
    }
}

#Preview {
    LikeButton(isLike: .constant(false))
}
