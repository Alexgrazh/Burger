//
//  CategoryCollectionViewCell.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    private let categoryImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "categoryBurger")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let categoryTitle : UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool{
        didSet{
            if isSelected{
                layer.borderWidth = 2
                layer.borderColor = .init(red: 137/255, green: 44/255, blue: 38/255, alpha:1)
            }else{
                layer.borderWidth = 0
            }
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstaraints()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        backgroundColor = .white
        addSubview(categoryTitle)
        addSubview(categoryImageView)
    }
    
    func configureCellCategory(categoryName: String, imageName: String){
        categoryImageView.image = UIImage(named: imageName)
        categoryTitle.text = categoryName
    }
    
    func setConstaraints(){
        NSLayoutConstraint.activate([
            categoryTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            categoryTitle.trailingAnchor.constraint(equalTo: trailingAnchor , constant:  -5),
            categoryTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            categoryTitle.heightAnchor.constraint(equalToConstant: 15),
            
            
            categoryImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            categoryImageView.trailingAnchor.constraint(equalTo: trailingAnchor , constant:  -5),
            categoryImageView.bottomAnchor.constraint(equalTo: categoryTitle.topAnchor, constant: 0),
            categoryImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5)
            
            
            
        ])
        
    }
}
