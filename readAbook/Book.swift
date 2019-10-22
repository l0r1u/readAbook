//  Book.swift
//  readAbook
//
//  Created by Jose Orovio on 21/10/2019.
//  Copyright © 2019 Jose Orovio. All rights reserved.
//

import Foundation

// MARK: Class Book (declaro propiedades de la clase)

class Book {
    let title: String
    let author: String
    let ISBN: String
    let pages: [Page]

    
    // MARK: Initialize properties of the Book class (Inicializar propiedades de la clase Book)
    init(title: String, author: String, ISBN: String, pages: [Page]){
        self.title = title
        self.author = author
        self.ISBN = ISBN
        self.pages = pages
    }
    
}
