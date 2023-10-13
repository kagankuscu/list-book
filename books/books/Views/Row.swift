//
//  Row.swift
//  books
//
//  Created by Kagan Kuscu on 9.10.23.
//

import SwiftUI

struct Row: View {
    let book: Book
    
    let likeImage = "heart.fill"
    let notLikeImage = "heart"
    
    let imageWidth: Double = 80
    let imageHeight: Double = 80
    
    var body: some View {
        HStack(alignment: .top) {
            Image(book.image)
                .resizable()
                .frame(width: imageWidth, height: imageHeight)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: book.isRead ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .background(
                            Circle()
                                .foregroundStyle(.black)
                        )
                        .offset(x: 10, y: 10)
                        .foregroundStyle(book.isRead ? .green : .red)
                }
            VStack(alignment: .leading) {
                Text(book.bookName)
                    .bold()
                    .font(.title2)
                Text(book.description)
                    .font(.body)
                    .lineLimit(2)
            }
            .padding(.leading, 4)
            Spacer()
            if book.isLike {
                Image(systemName: likeImage)
            } else {
                Image(systemName: notLikeImage)
            }
        }
    }
}

#Preview {
    Row(book:
            Book.mockDataSingle
    )
}
