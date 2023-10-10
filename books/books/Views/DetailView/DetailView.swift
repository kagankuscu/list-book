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
        DetailView(book: Book(image: "placeholder", bookName: "PlaceHolder Name", author: "PlaceHolder Author", description: "PlaceHolder Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a sem felis. Aenean velit lacus, vestibulum non accumsan eget, pharetra non elit. Nam ornare euismod mi a rutrum. Curabitur id imperdiet nunc. In placerat eros et vehicula eleifend. Vivamus at massa euismod mi tincidunt cursus a vel lorem. Quisque vestibulum sem quis cursus venenatis. Pellentesque quis augue non enim facilisis mattis. Duis erat odio, eleifend quis massa sit amet, fringilla ultricies lacus. Quisque scelerisque lectus orci, sed ultricies neque aliquam imperdiet. Cras gravida porttitor enim nec feugiat. Phasellus laoreet orci ligula, non aliquet nibh euismod sed. In eleifend non purus vitae cursus. Phasellus fringilla augue eget arcu mollis, id auctor ex rutrum.", isLike: true))
    }
}
