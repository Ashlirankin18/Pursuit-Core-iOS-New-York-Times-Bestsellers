//
//  FavoritesCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Ashli Rankin on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesCollectionViewCell: UICollectionViewCell {
  let bookCoverImageView:UIImageView = {
    let iv = UIImageView()
    iv.image = #imageLiteral(resourceName: "placeholder.png")
    return iv
  }()
  let infoLabel:UILabel = {
    let label = UILabel()
    label.backgroundColor = .white
    label.textColor = .black
    label.text = "Hello my name is Ashli"
    return label
  }()
  let DescriptiontextView:UITextView = {
    let textView = UITextView()
    textView.backgroundColor = .white
    textView.textColor = .black
    textView.text = "Hello nice gal enjoy your self"
    return textView
  }()
  lazy var expandButton:UIButton = {
    let button = UIButton()
    button.backgroundColor = .clear
    button.setTitleColor(.white, for: .normal)
   button.setImage(#imageLiteral(resourceName: "icons8-more-filled-25.png"), for: .normal)
    return button
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .white
    setConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  private func setConstraints(){
    imageViewConstraints()
    labelConstraints()
    textViewConstraints()
    expandButtonConstraints()
  }
  private func imageViewConstraints(){
    addSubview(bookCoverImageView)
    bookCoverImageView.translatesAutoresizingMaskIntoConstraints = false
    bookCoverImageView.topAnchor.constraint(lessThanOrEqualToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 0.9999).isActive = true
    bookCoverImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, constant: CGFloat(-200)).isActive = true
    bookCoverImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: CGFloat(0.60)).isActive = true
    bookCoverImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: CGFloat(95)).isActive = true
    bookCoverImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -90).isActive = true
    
  }
  
  private func labelConstraints(){
    addSubview(infoLabel)
    infoLabel.translatesAutoresizingMaskIntoConstraints = false
    let theConstraints = [
      infoLabel.topAnchor.constraint(equalTo: self.bookCoverImageView.bottomAnchor),infoLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 1.0)
    ]
    theConstraints.forEach{$0.isActive = true}
    
  }
  
  private func textViewConstraints(){
    addSubview(DescriptiontextView)
    DescriptiontextView.translatesAutoresizingMaskIntoConstraints = false
    let theConstraints = [
      DescriptiontextView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor), DescriptiontextView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor) , DescriptiontextView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor)
    ]
    theConstraints.forEach{$0.isActive = true}
    
  }
  private func expandButtonConstraints(){
    addSubview(expandButton)
    expandButton.translatesAutoresizingMaskIntoConstraints = false
   let theConstraints = [ expandButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),expandButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
    ]
    theConstraints.forEach{$0.isActive = true}
  }
}

