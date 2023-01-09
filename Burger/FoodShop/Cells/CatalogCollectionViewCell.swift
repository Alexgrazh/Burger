//
//  CatalogCollectionViewCell.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import UIKit

class CatalogCollectionViewCell: UICollectionViewCell {
    
    private let burgerImageName : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "burger1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let backgroundTiileView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.alpha = 0.6
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let titleName : UILabel = {
        let label = UILabel()
        label.text = "Egg top Burger"
        label.textAlignment = .center
        label.font = UIFont(name: "Arial", size: 16)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let priceBurger : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Arial Bold", size: 24)
        label.textColor = .init(red: 137/255, green: 44/255, blue: 38/255, alpha:1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
      clipsToBounds = true
       layer.cornerRadius = 10
       
        addSubview(burgerImageName)
        addSubview(backgroundTiileView)
        addSubview(titleName)
        addSubview(priceBurger)
    }
    
    func configureCellCatalog(imageName: String){
        burgerImageName.image = UIImage(named: imageName)
    }
    
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            burgerImageName.topAnchor.constraint(equalTo: topAnchor , constant: 0),
            burgerImageName.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 0),
            burgerImageName.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 0),
            burgerImageName.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 0),
            
            backgroundTiileView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            backgroundTiileView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundTiileView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundTiileView.heightAnchor.constraint(equalTo: heightAnchor, multiplier :0.1)
            
            titleName.centerYAnchor.constraint(equalTo: backgroundTiileView.centerYAnchor),
            titleName.leadingAnchor.constraint(equalTo: backgroundTiileView.leadingAnchor, constant: 10),
            
            priceBurger.centerYAnchor.constraint(equalTo: backgroundTiileView.centerYAnchor),
            priceBurger.trailingAnchor.constraint(equalTo: backgroundTiileView.trailingAnchor, constant: -10)
            
            
        
        ])
    }
}
