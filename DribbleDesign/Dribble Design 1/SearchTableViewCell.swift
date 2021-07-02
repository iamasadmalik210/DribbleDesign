//
//  SearchTableViewCell.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    
    private let seachBar : UISearchBar = {
        let searchBar = UISearchBar()
        
        
        return searchBar
        
        
    }()

   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(seachBar)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        seachBar.frame = CGRect(x: 10, y: 10, width: contentView.frame.width - 20, height: contentView.frame.height - 20)
        seachBar.center = contentView.center
        
        
    }
}
