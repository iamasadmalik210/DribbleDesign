//
//  ProductsCollectionViewCell.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

struct ProductsCollectionViewCellModel {
    let image:UIImage?
    let title: String?
    let subtitle: String?
}



class ProductsCollectionViewCell: UICollectionViewCell {
    
    
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
        
        
        
    }()
    
    
    private let productLabel : UILabel = {
       let label = UILabel()
        
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.text = "Geometry 3D Elements"
        return label
        
        
    }()
    private let subtitleProductLabel : UILabel = {
       let label = UILabel()
        
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.numberOfLines = 3
        label.text = "Hold a piece of a rectangle and ask all the students"
        return label
        
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 20
        contentView.backgroundColor = .white
        
        addSubview(productImageView)
        addSubview(productLabel)
        addSubview(subtitleProductLabel)
        productLabel.textAlignment = .center
        subtitleProductLabel.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        productImageView.frame = CGRect(x: 0, y: 0, width: contentView.width, height: contentView.width)
        
        productLabel.frame = CGRect(x: 0, y: productImageView.bottom + 10, width: contentView.width, height: 30)
        subtitleProductLabel.frame = CGRect(x: 0, y: productLabel.bottom , width: contentView.width, height: 60)

    }
    
    
    
    public func configure(_ viewModels:ProductsCollectionViewCellModel){
        
        productImageView.image = viewModels.image
        productLabel.text = viewModels.title

        subtitleProductLabel.text = viewModels.subtitle

    }

    
}
