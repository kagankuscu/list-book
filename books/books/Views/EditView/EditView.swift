//
//  EditView.swift
//  books
//
//  Created by Kagan Kuscu on 12.10.23.
//

import SwiftUI

struct EditView: View {
    let book: Book
    
    @State private var bookName: String = ""
    @State private var author: String = ""
    @State private var description = ""
    @State private var image = ""
    @State private var isLike = false
    @State private var isRead = false
    
    var body: some View {
        List {
            Section {
                ExtractedView(value: $bookName, title: "Book Name")
                ExtractedView(value: $author, title: "Author")
                ExtractedView(value: $description, title: "Description")
                
                // TODO: - This will change select image
                ExtractedView(value: $image, title: "Image")
            }
            
            Section {
                Toggle("Like", isOn: $isLike)
                Toggle("Read", isOn: $isRead)
            }
        }
        .textFieldStyle(.roundedBorder)
        .onAppear {
            self.bookName = self.book.bookName
            self.description = self.book.description
            self.image = self.book.image
            self.author = self.book.author
            self.isLike = self.book.isLike
            self.isRead = self.book.isRead
        }
        .toolbar {
            ToolbarItem {
                Button("Saved") {
                    // action
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        EditView(book: Book.mockDataSingle)
    }
}

struct ExtractedView: View {
    @Binding var value: String
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            TextField(title, text: $value)
        }
    }
}
