//
//  EditView.swift
//  books
//
//  Created by Kagan Kuscu on 12.10.23.
//

import SwiftUI

struct EditView: View {
    var book: Book?
    
    @State private var bookName: String = ""
    @State private var author: String = ""
    @State private var description = ""
    @State private var image = ""
    @State private var isLike = false
    @State private var isRead = false
    
    @StateObject private var bookViewModel = BookViewModel()
    
    init(book: Book? = nil) {
        self.book = book
    }
    
    var body: some View {
        List {
            Section {
                BookInfoView(value: $bookName, title: "Book Name")
                BookInfoView(value: $author, title: "Author")
                BookInfoView(value: $description, title: "Description", limit: 1...10)
                
                // TODO: - This will change select image
                BookInfoView(value: $image, title: "Image")
            }
        }
        .textFieldStyle(.roundedBorder)
        .onAppear {
            self.bookName = self.book?.bookName ?? ""
            self.description = self.book?.description ?? ""
            self.image = self.book?.image ?? ""
            self.author = self.book?.author ?? ""
            self.isLike = self.book?.isLike ?? false
            self.isRead = self.book?.isRead ?? false
        }
        .toolbar {
            ToolbarItem {
                Button {
                    self.isRead.toggle()
                } label: {
                    Label("Saved", systemImage: self.isRead ? "checkmark.circle.fill" : "checkmark.circle")
                }
            }
            ToolbarItem {
                Button {
                    self.isLike.toggle()
                } label: {
                    Label("Like", systemImage: self.isLike ? "heart.fill" : "heart")
                }
            }
            ToolbarItem(placement: .bottomBar) {
                Button {
                    // action
                    let book = Book(image: self.image, bookName: self.bookName, author: self.author, description: self.description, isLike: self.isLike, isRead: self.isRead)
                    if self.book == nil {
                        // action save new book
                        bookViewModel.saveBook(book: book)
                    } else {
                        // action update the book
                        bookViewModel.updateBook(book: book)    
                    }
                    
                } label: {
                    Text(self.book == nil ? "Save" : "Update")
                }
            }
        }
        .navigationBarTitleDisplayMode(self.book == nil ? .large : .inline)
        .navigationTitle(self.book == nil ? "Add New Book" : "")
    }
}

#Preview("Edit View") {
    NavigationStack {
        EditView(book: Book.mockDataSingle)
    }
}

#Preview("Adding View") {
    NavigationStack {
        EditView()
    }
}
