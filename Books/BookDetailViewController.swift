//
//  BookDetailViewController.swift
//  Books
//
//  Created by CHOI on 2022/07/21.
//

import UIKit

class BookDetailViewController: UIViewController {

    static var identifier = "BookDetailViewController"
    
    @IBOutlet weak var bookImgView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookInfoLabel: UILabel!
    var book: Book = Book(title: "겨울왕국2", rate: 9.9)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "도서 상세 화면"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(goWebPage))
        
        changeBookInfo(data: book)
    }
    
    // MARK: 웹 페이지 화면 전환
    @objc
    func goWebPage() {
//        print("goweb")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebPageViewController.identifier) as! WebPageViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: 도서 정보 변경
    func changeBookInfo(data: Book) {
        bookImgView?.image = UIImage(named: data.title)
        bookTitleLabel?.text = data.title
        bookTitleLabel.font = .boldSystemFont(ofSize: 16)
        bookTitleLabel.textAlignment = .center
        bookInfoLabel?.text = "\(data.rate)점"
        bookInfoLabel.textColor = .lightGray
        bookInfoLabel.font = .systemFont(ofSize: 12, weight: .light)
        bookInfoLabel.textAlignment = .center
        
//        print("changeBookInfo func called")
    }

}
