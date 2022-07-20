//
//  BooksCollectionViewController.swift
//  Books
//
//  Created by CHOI on 2022/07/20.
//

import UIKit

class BooksCollectionViewController: UICollectionViewController {
    
    var bookList = BookList().book
    var colorList: [UIColor] = [.orange, .systemPink, .purple, .systemIndigo, .systemMint, .magenta]

    override func viewDidLoad() {
        super.viewDidLoad()

        // 컬렉션 뷰의 셀 크기, 셀 사이 간격 등 설정 (Estimate Size -> None으로 설정!)
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 12
        let width = UIScreen.main.bounds.width - (spacing * 5)
        layout.itemSize = CGSize(width: width / 2, height: (width / 2) * 1.4)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing * 2, bottom: spacing, right: spacing * 2)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BooksCollectionViewCell", for: indexPath) as! BooksCollectionViewCell
        cell.backgroundColor = colorList[indexPath.row % 6]
        cell.layer.cornerRadius = 20
        
        let data = bookList[indexPath.row]
        cell.configureCell(data: data)
        
        return cell
    }
}
