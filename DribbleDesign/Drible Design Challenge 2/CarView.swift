//
//  CarView.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

class CarView: UIView {
    
    private let carImageView:UIImageView = {
       let imageView = UIImageView()
        
        imageView.image = UIImage(named: "carImage")
        
        
        return imageView
        
    }()
    
    private let titleLabel : UILabel = {
       let label = UILabel()
        
        label.font = .systemFont(ofSize: 20,weight:.medium)
        label.text = "Safe Car Park 2"
        return label
        
    }()
    
    
    private let subtitleLabel : UILabel = {
       let label = UILabel()
        
        label.font = .systemFont(ofSize: 15,weight:.light)
        label.text = "$5/hr"
        return label
        
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemYellow
        
        
        
        addSubview(carImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        carImageView.frame = CGRect(x: 0, y: 0, width: width-200, height: width-200)
        carImageView.center = center
        
        titleLabel.frame = CGRect(x: 30, y: carImageView.bottom+20, width: width-100, height: 30)
        
        subtitleLabel.frame = CGRect(x: titleLabel.right, y: carImageView.bottom+20, width: width-100, height: 30)

    }
    
}
