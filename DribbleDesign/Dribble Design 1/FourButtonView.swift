//
//  FourButtonView.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

class FourButtonView: UIView {
    
    
    
    
    private let recentbutton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .white

        button.setImage(UIImage(systemName: "clock.fill"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
        
        
    }()
    private let trendingButton : UIButton = {
       let button = UIButton()
        
        button.backgroundColor = .white

        button.setImage(UIImage(systemName: "flame.fill"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10

        return button
        
        
    }()
    private let popularButton : UIButton = {
       let button = UIButton()
        
        button.setImage(UIImage(systemName: "infinity"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 10

        return button
        
        
    }()
    private let premiumbutton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "diamond"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.backgroundColor = .white
        
        button.clipsToBounds = true
        button.layer.cornerRadius = 10

        return button
        
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(recentbutton)
        addSubview(trendingButton)
        addSubview(popularButton)
        addSubview(premiumbutton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let buttonWidth:CGFloat = 70
        let buttonHeight:CGFloat = 70
        
        
        recentbutton.frame = CGRect(x: 0, y: 20, width: buttonWidth, height: buttonHeight)
        trendingButton.frame = CGRect(x: recentbutton.right + 20, y: 20, width: buttonWidth, height: buttonHeight)

        popularButton.frame = CGRect(x: trendingButton.right + 20, y: 20, width: buttonWidth, height: buttonHeight)
        premiumbutton.frame = CGRect(x: popularButton.right + 20, y: 20, width: buttonWidth, height: buttonHeight)

        
        
    }
    
    

}

extension UIButton {
    

}
