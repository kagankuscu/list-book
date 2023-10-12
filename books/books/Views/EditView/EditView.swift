//
//  EditView.swift
//  books
//
//  Created by Kagan Kuscu on 12.10.23.
//

import SwiftUI

struct EditView: View {
    let book: Book
    
    var body: some View {
        Text(book.bookName)
    }
}

#Preview {
    EditView(book: Book.mockDataSingle)
}
