//
//  ReadStatus.swift
//  books
//
//  Created by Kagan Kuscu on 10.10.23.
//

import SwiftUI

struct ReadStatus: View {
    let size: CGFloat = 15
    let isRead: Bool
    
    var body: some View {
        HStack(alignment: .center) {
            Text(isRead ? "Read" : "Not Read")
                .font(.caption)
            Image(systemName: isRead ? "checkmark.square" : "square")
                .resizable()
                .frame(width: size, height: size)
        }
        .foregroundStyle(.gray)
    }
}

#Preview {
    VStack {
        ReadStatus(isRead: false)
        ReadStatus(isRead: true)
    }
}
