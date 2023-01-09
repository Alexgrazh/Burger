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
    
    
    func configureCellCategory(categoryName: String, imageName: String){
        categoryImageView.image = UIImage(named: "")
        categoryTitle.text = ""
    }
}
