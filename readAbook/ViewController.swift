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
        
        //MARK: array of example pages (Array de paginas de ejemplo)
                      
        let page1 = Page (number: 1, text: "Primera peazo de ....")
        let page2 = Page (number: 2, text: "Terce... Segunda viene ahora compañero")
        
        let pages = [page1, page2]
        
        print(page1.text, page2.text)
        
        // MARK: Book index and page models (Indice libros y modelos de pagina)
        let book = Book(title: "Steve Jobs", author: "Walter Issacson", ISBN: "ABC0123456789", pages: pages)
        print("Titulo: \(book.title), Autor: \(book.author), ISBN \(book.ISBN)")
        
        // MARK: Obtaining the text of the first page (Obtencion del texto de la primera pagina)
        let firstPage = book.pages[0]
                print(firstPage.text)
                       
    }

}

