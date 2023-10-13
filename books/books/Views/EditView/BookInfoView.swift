//
//  BookInfoView.swift
//  books
//
//  Created by Kagan Kuscu on 13.10.23.
//

import SwiftUI


struct BookInfoView: View {
    @Binding var value: String
    let title: String
    var limit: ClosedRange<Int> = 0...1
    var axis: Axis = .vertical
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            TextField(title, text: $value, axis: axis)
                .lineLimit(limit)
        }
    }
}

#Preview {
    NavigationStack {
        BookInfoView(value: .constant("Title"), title: "Title")
    }
}
