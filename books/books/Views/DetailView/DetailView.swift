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
                    ReadStatus(isRead: false)
                    Text(book.description)
                }
            }
            .scrollIndicators(.hidden)
            Spacer()
        }
        .padding(.horizontal, 4)
        .toolbar {
            ToolbarItem {
                Button("Edit") {
                    // action
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(book: Book.mockDataSingle)
    }
}
