//
//  FavoritesView.swift
//  NYTBestsellers
//
//  Created by Ashli Rankin on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesView: UIView {
  lazy var favoriteCollectionView:UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let collectionView = UICollectionView.init(frame: self.bounds, collectionViewLayout: layout)
    collectionView.register(FavoritesCollectionViewCell.self, forCellWithReuseIdentifier: "favoriteCell")
    collectionView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    return collectionView
    
  }()
 
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    setUpSubViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setUpSubViews(){
    setUpCollectionView()
  }
  private func setUpCollectionView(){
    addSubview(favoriteCollectionView)
    favoriteCollectionView.translatesAutoresizingMaskIntoConstraints = false
    
    let theConstraints = [favoriteCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),favoriteCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),favoriteCollectionView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor),favoriteCollectionView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor)]
    theConstraints.forEach{$0.isActive = true}
  }
   
}
