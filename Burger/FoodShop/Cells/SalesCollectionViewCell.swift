//
//  SalesCollectionViewCell.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import UIKit

class SalesCollectionViewCell: UICollectionViewCell {
    
    private let saleImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        backgroundColor = .white
        addSubview(saleImageView)
    }
    func configure(imageName : String){
        saleImageView.image = UIImage(named: imageName)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            saleImageView.topAnchor.constraint(equalTo: topAnchor , constant: 0),
            saleImageView.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 0),
            saleImageView.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 0),
            saleImageView.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 0)
        
        ])
    }
}
