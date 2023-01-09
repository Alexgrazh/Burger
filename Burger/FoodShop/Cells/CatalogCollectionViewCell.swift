//
//  CatalogCollectionViewCell.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import UIKit

class CatalogCollectionViewCell: UICollectionViewCell {
    
    private let catalogimageName : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   func  setupView(){
        backgroundColor = .white
        addSubview(catalogimageName)
    }
    
    func configureCellCatalog(imageName: String){
        catalogimageName.image = UIImage(named: imageName)
    }
    
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            catalogimageName.topAnchor.constraint(equalTo: topAnchor , constant: 0),
            catalogimageName.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 0),
            catalogimageName.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 0),
            catalogimageName.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 0)
        
        ])
    }
}
