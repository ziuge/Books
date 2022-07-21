//
//  BookDetailViewController.swift
//  Books
//
//  Created by CHOI on 2022/07/21.
//

import UIKit

class BookDetailViewController: UIViewController {

    static var identifier = "BookDetailViewController"
    
    @IBOutlet weak var bookImgView: UIImageView?
    @IBOutlet weak var bookTitleLabel: UILabel?
    @IBOutlet weak var bookInfoLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "도서 상세 화면"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .plain, target: self, action: #selector(goWebPage))
        
        changeBookInfo(data: )
    }
    
    @objc
    func goWebPage() {
        print("goweb")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebPageViewController.identifier) as! WebPageViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func changeBookInfo(data: Book) {
        guard let img = bookImgView, let tl = bookTitleLabel, let rt = bookInfoLabel else {
            return
        }

        img.image = UIImage(named: data.title)
        tl.text = data.title
        rt.text = "\(data.rate)점"
    }

}
