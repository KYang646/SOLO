//
//  ViewController.swift
//  SOLO
//
//  Created by Kimball Yang on 12/16/19.
//  Copyright © 2019 Kimball Yang. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var footballImage: UIImageView!
    @IBOutlet weak var eField: UITextField!
    @IBOutlet weak var pField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        footballImage.transform = CGAffineTransform(scaleX: 0.67, y: 0.67)
        footballImage.alpha = 0
    }

    override func viewDidAppear(_ animated: Bool) {
        AnimatorFactory.scaleUp(view: footballImage).startAnimation()
    }
    

}

