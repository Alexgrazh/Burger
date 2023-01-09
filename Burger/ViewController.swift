//
//  ViewController.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let collectionView : UICollectionView = {
        let collectionViewLayout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .none
        collectionView.bounces = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    private let orderButton : UIButton = {
        let button = UIButton()
        button.setTitle("Make an order", for: .normal)
        button.backgroundColor = UIColor(cgColor: CGColor(red: 137/255, green: 44/255, blue: 38/255, alpha:1))
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let sections = MockData.shared.pageData
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstaraints()
    
    }
    
    private func setupView(){
        view.backgroundColor = .white
        title = "Food Shop"
        view.addSubview(orderButton)
        view.addSubview(collectionView)
        
        collectionView.register(SalesCollectionViewCell.self, forCellWithReuseIdentifier: "SalesCollectionViewCell")
        collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        collectionView.register(CatalogCollectionViewCell.self, forCellWithReuseIdentifier: "CatalogCollectionViewCell")
    }
    
    private func setDelegate(){
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        <#code#>
    }

}



//MARK: - UICollectionViewDelegate

extension ViewController : UICollectionViewDelegate {
    
}

//MARK: - UICollectionViewDataSource

extension ViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch sections[indexPath.section]{
        case .sales(let sale):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SalesCollectionViewCell", for: indexPath) as? SalesCollectionViewCell
            else{
                return UICollectionViewCell()
            }
        cell.configure(imageName: sale[indexPath.row].image)
        return cell
        case .category(let category):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as? CategoryCollectionViewCell
            else {
                return UICollectionViewCell()
            }
            cell.configureCellCategory(categoryName: category[indexPath.row].title, imageName: category[indexPath.row].image)
            return cell
            
                    case .catalog(let catalog):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatalogCollectionViewCell", for: indexPath) as? CatalogCollectionViewCell
            else {
                return UICollectionViewCell()
            }
            cell.configureCellCatalog(imageName: catalog[indexPath.row].image)
            return cell
                        
        }
    }
    
    
}


//MARK: - Set Constraints

extension ViewController {
    
    private func setConstaraints(){
        NSLayoutConstraint.activate([
            orderButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
            orderButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            orderButton.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant:  -20),
            orderButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
    }

}
