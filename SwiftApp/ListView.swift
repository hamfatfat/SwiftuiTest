//
//  ListView.swift
//  SwiftApp
//
//  Created by Hamzeh Fatfat on 24/10/2022.
//

import SDWebImageSwiftUI
import SwiftUI
struct Book: Identifiable {
  var id = UUID()
  var title: String
    var url:String
  var author: String
  var isbn: String
  var pages: Int
  var isRead: Bool = false
}
extension Book {
  static let samples = [
    Book(title: "Changer", url:"https://picsum.photos/300/300", author: "Matt Gemmell", isbn: "9781916265202", pages: 476),
    Book(title: "SwiftUI for Absolute Beginners", url: "https://picsum.photos/300/300", author: "Jayant Varma", isbn: "9781484255155", pages: 200),
    Book(title: "Why we sleep", url: "https://picsum.photos/300/300", author: "Matthew Walker", isbn: "9780141983769", pages: 368),
    Book(title: "The Hitchhiker's Guide to the Galaxy", url: "https://picsum.photos/300/300", author: "Douglas Adams", isbn: "9780671461492", pages: 216),
    
      Book(title: "Changer", url:"https://picsum.photos/300/300", author: "Matt Gemmell", isbn: "9781916265202", pages: 476),
      Book(title: "SwiftUI for Absolute Beginners", url: "https://picsum.photos/300/300", author: "Jayant Varma", isbn: "9781484255155", pages: 200),
      Book(title: "Why we sleep", url: "https://picsum.photos/300/300", author: "Matthew Walker", isbn: "9780141983769", pages: 368),
      Book(title: "The Hitchhiker's Guide to the Galaxy", url: "https://picsum.photos/300/300", author: "Douglas Adams", isbn: "9780671461492", pages: 216)  ]
}

private class BooksViewModel: ObservableObject {
  @Published var books: [Book] = Book.samples
}
struct ListView: View {
    @StateObject fileprivate var viewModel = BooksViewModel();    var body: some View {
            List(viewModel.books) { book in
                HStack{
                    WebImage(url: URL(string:book.url)).resizable().frame(width: 75, height: 75)
                    Text("\(book.title) by \(book.author)")                }
              
            }
          
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
