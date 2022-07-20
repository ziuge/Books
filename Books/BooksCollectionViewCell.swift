//
//  BooksCollectionViewCell.swift
//  Books
//
//  Created by CHOI on 2022/07/20.
//

import UIKit

class BooksCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookRateLabel: UILabel!
    
    func configureCell(data: Book) {
        bookImageView.image = UIImage(named: data.title)
        bookTitleLabel.text = data.title
        bookRateLabel.text = "\(data.rate)"
    }
}
