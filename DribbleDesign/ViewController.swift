//
//  ViewController.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

extension UIView {
    var width: CGFloat {
        return frame.size.width
    }

    var height: CGFloat {
        return frame.size.height
    }

    var left: CGFloat {
        return frame.origin.x
    }

    var right: CGFloat {
        return left + width
    }

    var top: CGFloat {
        return frame.origin.y
    }

    var bottom: CGFloat {
        return top + height
    }
}




