//
//  BookSearchViewController.swift
//  Books
//
//  Created by CHOI on 2022/07/21.
//

import UIKit

class BookSearchViewController: UIViewController {
    
    static var identifier = "BookSearchViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "도서 검색"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeBtnClicked))
    
    }
    
    @objc
    func closeBtnClicked() {
        self.dismiss(animated: true)
        
    }

}
