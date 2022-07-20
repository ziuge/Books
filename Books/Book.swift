//
//  Book.swift
//  Books
//
//  Created by CHOI on 2022/07/20.
//

import Foundation
import UIKit

struct Book {
    var title: String
    var rate: Double
}

struct BookList {
    let book: [Book] = [
        Book(title: "겨울왕국2", rate: 9.9),
        Book(title: "광해", rate: 8.8),
        Book(title: "괴물", rate: 7.7),
        Book(title: "국제시장", rate: 6.6),
        Book(title: "극한직업", rate: 5.5),
        Book(title: "도둑들", rate: 4.4),
        Book(title: "명량", rate: 3.3),
        Book(title: "베테랑", rate: 2.2),
        Book(title: "부산행", rate: 1.1),
        Book(title: "신과함께인과연", rate: 0.0),
        Book(title: "신과함께죄와벌", rate: 9.9),
        Book(title: "아바타", rate: 8.8)
    ]
}
