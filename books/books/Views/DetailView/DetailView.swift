//
//  DetailView.swift
//  books
//
//  Created by Kagan Kuscu on 9.10.23.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(book.image)
                .resizable()
                .frame(height: 250)
            ScrollView {
                VStack(alignment: .leading) {
                    Text(book.bookName)
                        .bold()
                        .font(.title)
                    HStack {
                        Text(book.author)
                            .fontWeight(.semibold)
                        Spacer()
                        LikeView(value: book.isLike)
                    }
                    ReadStatus(isRead: book.isRead)
                    Text(book.description)
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding(.horizontal, 12)
        .toolbar {
            ToolbarItem {
                NavigationLink(destination: EditView(book: book)) {
                    Text("Edit")
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(book.bookName)
    }
}

#Preview {
    NavigationStack {
        DetailView(book: Book.mockDataSingle)
    }
}
