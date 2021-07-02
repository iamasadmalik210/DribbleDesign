//
//  ParkedViewController.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

class ParkedViewController: UIViewController {
    
    private let endTimeLabel : UILabel = {
       let label = UILabel()
        
        
        return label
        
    }()
    private let timeLabel : UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 25,weight:.heavy)
        label.textColor = .white
        
        return label
        
    }()
    private let slider : UISlider = {
        let slider = UISlider()
        
        
        return slider
        
        
    }()
    
    private let newView : UIView = {
        
        let view = UIView()
        
        view.clipsToBounds = true
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        newView.frame = CGRect(x: 40, y: view.safeAreaInsets.top + 30, width: 150, height: 150)
        
        
        
        endTimeLabel.frame = CGRect(x: 100, y: newView.bottom, width: view.width, height: 30)
        timeLabel.frame = CGRect(x: 100, y: endTimeLabel.bottom, width: view.width, height: 50)
        
        
        slider.frame = CGRect(x: 30, y: timeLabel.bottom + 50, width: view.width - 60, height: 40)

    }
    

   

}
