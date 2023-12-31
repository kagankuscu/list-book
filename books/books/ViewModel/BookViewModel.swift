//
//  BookViewModel.swift
//  books
//
//  Created by Kagan Kuscu on 12.10.23.
//

import Foundation

class BookViewModel: ObservableObject {
    @Published var BOOKMOCKDATA: [Book] = [
        Book(
            image: "placeholder",
            bookName: "View Model book",
            author: "SC",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a sem felis. Aenean velit lacus, vestibulum non accumsan eget, pharetra non elit. Nam ornare euismod mi a rutrum. Curabitur id imperdiet nunc. In placerat eros et vehicula eleifend. Vivamus at massa euismod mi tincidunt cursus a vel lorem. Quisque vestibulum sem quis cursus venenatis. Pellentesque quis augue non enim facilisis mattis. Duis erat odio, eleifend quis massa sit amet, fringilla ultricies lacus. Quisque scelerisque lectus orci, sed ultricies neque aliquam imperdiet. Cras gravida porttitor enim nec feugiat. Phasellus laoreet orci ligula, non aliquet nibh euismod sed. In eleifend non purus vitae cursus. Phasellus fringilla augue eget arcu mollis, id auctor ex rutrum.",
            isLike: false,
            isRead: false
        ),
        Book(
            image: "placeholder",
            bookName: "test 2",
            author: "SC",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a sem felis. Aenean velit lacus, vestibulum non accumsan eget, pharetra non elit. Nam ornare euismod mi a rutrum. Curabitur id imperdiet nunc. In placerat eros et vehicula eleifend. Vivamus at massa euismod mi tincidunt cursus a vel lorem. Quisque vestibulum sem quis cursus venenatis. Pellentesque quis augue non enim facilisis mattis. Duis erat odio, eleifend quis massa sit amet, fringilla ultricies lacus. Quisque scelerisque lectus orci, sed ultricies neque aliquam imperdiet. Cras gravida porttitor enim nec feugiat. Phasellus laoreet orci ligula, non aliquet nibh euismod sed. In eleifend non purus vitae cursus. Phasellus fringilla augue eget arcu mollis, id auctor ex rutrum.",
            isLike: true,
            isRead: true
        ),
        Book(
            image: "placeholder",
            bookName: "test 3",
            author: "SC",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a sem felis. Aenean velit lacus, vestibulum non accumsan eget, pharetra non elit. Nam ornare euismod mi a rutrum. Curabitur id imperdiet nunc. In placerat eros et vehicula eleifend. Vivamus at massa euismod mi tincidunt cursus a vel lorem. Quisque vestibulum sem quis cursus venenatis. Pellentesque quis augue non enim facilisis mattis. Duis erat odio, eleifend quis massa sit amet, fringilla ultricies lacus. Quisque scelerisque lectus orci, sed ultricies neque aliquam imperdiet. Cras gravida porttitor enim nec feugiat. Phasellus laoreet orci ligula, non aliquet nibh euismod sed. In eleifend non purus vitae cursus. Phasellus fringilla augue eget arcu mollis, id auctor ex rutrum.",
            isLike: false,
            isRead: true
        ),
        Book(
            image: "placeholder",
            bookName: "test 4",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: false,
            isRead: true
        ),
        Book(
            image: "placeholder",
            bookName: "test 5",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: true,
            isRead: false
        ),
        Book(
            image: "placeholder",
            bookName: "test 6",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: false,
            isRead: true
        ),
        Book(
            image: "placeholder",
            bookName: "test 7",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: false,
            isRead: false
        ),
        Book(
            image: "placeholder",
            bookName: "test 8",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: true,
            isRead: true
        ),
        Book(
            image: "placeholder",
            bookName: "test 9",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: false,
            isRead: false
        ),
        Book(
            image: "placeholder",
            bookName: "test 10",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: false,
            isRead: false
        ),
        Book(
            image: "placeholder",
            bookName: "test 11",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: true,
            isRead: false
        ),
        Book(
            image: "placeholder",
            bookName: "test 12",
            author: "SC",
            description: "Lorem Ipsum",
            isLike: false,
            isRead: false
        ),
    ]
    @Published var books: [Book] = []
    @Published var book: Book?
    
    func fecthAllBooks() {
        
    }
    
    func updateBook(book: Book) {
        
    }
    
    func deleteBook(book: Book) {
        
    }
    
    func saveBook(book: Book) {
        
    }
}
