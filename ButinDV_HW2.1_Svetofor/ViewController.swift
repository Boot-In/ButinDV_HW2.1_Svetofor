//
//  ViewController.swift
//  ButinDV_HW2.1_Svetofor
//
//  Created by Dmitriy Butin on 29.01.2020.
//  Copyright © 2020 Dmitriy Butin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    var item: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redView.backgroundColor = UIColor.red
        redView.alpha = 0.3
        redView.layer.cornerRadius = redView.frame.size.height / 2
        
        yellowView.backgroundColor = UIColor.yellow
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = yellowView.frame.size.height / 2
        
        greenView.backgroundColor = UIColor.green
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = greenView.frame.size.height / 2
    }

    @IBAction func startButtonTap(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        changeColor()
    }
    
    func changeColor() {
        item += 1
        if item == 1 {
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        } else if item == 2 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            item = 0
        }
    }
    
}

