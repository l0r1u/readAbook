//  ViewController.swift
//  readAbook
//
//  Created by Jose Orovio on 21/10/2019.
//  Copyright © 2019 Jose Orovio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Create a book list, array type (Crear listado de libros, tipo array), recordar que la opcional tiene que ser una variable, y que para desempaquetarla usar un modo seguro evitando ! y la opcion if let
    var books: [Book]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpBooks()

        }

    func setUpBooks (){
        // MARK: array of example pages (Array de paginas de ejemplo)
                let page1 = Page (number: 1, text: "Primera peazo de ....")
                let page2 = Page (number: 2, text: "Terce... Segunda viene ahora compañero")
                let page3 = Page (number: 3, text: "Ora si no hay segunda sin tercera")
                
                let pages = [page1, page2, page3]
                
                print(page1.text, page2.text, page3.text)
                
                // MARK: Book index and page models (Indice libros y modelos de pagina)
                let book1 = Book(title: "Steve Jobs", author: "Walter Issacson", ISBN: "ABC0123456789", pages: pages)
                let book2 = Book(title: "El buen de Bill", author: "un tal Michael", ISBN: "ABD0123456789", pages: pages)
                print("Titulo: \(book1.title), Autor: \(book1.author), ISBN \(book1.ISBN)")
                print("Titulo: \(book2.title), Autor: \(book2.author)")
        
                // MARK: Obtaining the text of the first page (Obtencion del texto de la primera pagina)
                let firstPage1 = book1.pages[0]
                        print(firstPage1.text)
                let firstPage2 = book2.pages[0]
                        print(firstPage2)
                
                // MARK: Create a Array of objects type books (Crear array de objetos tipo books)
        
        //Desempaquetado no seguro
            //  self.books = [book1, book2]
            //  print(self.books!)

                //Desempaquetado seguro, modo "if let", OJO CON LA PIRAMIDE DE LA PERDICION
//                if let unrappedBooks = self.books {
//                    print(unrappedBooks)
                    
                //Desempaquetado seguro, modo "guard", el return provoca que salgas de la funcion para que se evite un crash
                    guard let books = books else {return}
                    print(books)
        }
    }
