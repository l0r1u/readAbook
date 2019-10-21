//
//  ViewController.swift
//  readAbook
//
//  Created by Jose Orovio on 21/10/2019.
//  Copyright © 2019 Jose Orovio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book = Book(title: "Steve Jobs", author: "Walter Issacson", ISBN: "ABC0123456789")
        print("Titulo: \(book.title), Autor: \(book.author), ISBN \(book.ISBN)")
        
        let page = Page(number: 2, text: "hola")
        print("Numero de paginas: \(page.number), tipo de texto: \(page.text)")
        
    }


}

