//
//  DribleDesign2Challenge.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit
import MTSlideToOpen



class DribleDesign2ChallengeViewController: UIViewController {
    
    let mycarView = CarView()
    
    
    private let endTimeLabel : UILabel = {
       let label = UILabel()
        label.text = "End Time"
        
        return label
        
    }()
    
    private let daySegments: UISegmentedControl = {
       let segment = UISegmentedControl()
        
        
        
        return segment
       
    }()
    
    private let timeLabel : UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 25,weight:.heavy)
        label.textColor = .white
        label.text = "10:40"
        return label
        
    }()
    private let timeLabel2 : UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15,weight:.light)
        label.textColor = .white
        label.text = "pm"
        return label
        
    }()
    
    private let slider : UISlider = {
        let slider = UISlider()
        
        slider.layer.cornerRadius = 10
        slider.clipsToBounds = true
        return slider
        
        
    }()
    
    
    private let alertTextButton : UIButton = {
       let button = UIButton()
        button.setTitle("Alert me before 15 minutes", for: .normal)
        
        return button
        
    }()

    
    
    #imageLiteral(resourceName: "icons8-less-than-50.png")#imageLiteral(resourceName: "icons8-more-than-50.png")    override func viewDidLoad() {
        super.viewDidLoad()
        

        let slide = MTSlideToOpenView(frame: CGRect(x: 26, y: 400, width: 317, height: 56))
          slide.sliderViewTopDistance = 6
        slide.layer.cornerRadius = 22
        slide.delegate = self
        slide.labelText = "Slide to Park"
//
          slide.thumnailImageView.image = ic_arrow
//
        
        view.addSubview(mycarView)
        
        view.addSubview(endTimeLabel)
        view.addSubview(timeLabel)
        view.addSubview(timeLabel2)
        
        view.addSubview(alertTextButton)
        view.addSubview(slider)
        
        view.backgroundColor = .systemBackground
    
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        mycarView.frame = CGRect(x: 0, y: 0, width: view.width, height: view.width)
               
        endTimeLabel.frame = CGRect(x: 50, y: mycarView.bottom + 50, width: view.width, height: 20)
        
        
        daySegments.frame = CGRect(x: 20, y: endTimeLabel.bottom, width: view.width, height: 20)
        
        timeLabel.frame = CGRect(x: 50, y: daySegments.bottom + 30, width: view.width, height: 40)
        timeLabel2.frame = CGRect(x: timeLabel.right, y: daySegments.bottom + 30, width: view.width, height: 40)

        
        alertTextButton.frame = CGRect(x: 20, y: timeLabel.bottom + 40, width: view.width, height: 20)
        slider.frame = CGRect(x: 20, y: alertTextButton.bottom
                              , width: view.width - 40, height: 150)


        
        
        
    }
    
}
