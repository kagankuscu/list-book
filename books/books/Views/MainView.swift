//
//  ContentView.swift
//  books
//
//  Created by Kagan Kuscu on 9.10.23.
//

import SwiftUI

struct MainView: View {
    @State var isLike = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Book.mockData) { book in
                    NavigationLink(destination: DetailView(book: book)) {
                        Row(book: book)
                    }
                }
                .alignmentGuide(.listRowSeparatorLeading) { _ in 0 }
            }
            .listStyle(.grouped)
            .navigationTitle("List")
            .toolbar {
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Label("New Item", systemImage: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
