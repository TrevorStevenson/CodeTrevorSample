//
//  ViewController.swift
//  CodeTrevorSample
//
//  Created by Trevor Stevenson on 5/23/18.
//  Copyright © 2018 Trevor Stevenson. All rights reserved.
//

import UIKit
import CodeTrevor

class ViewController: UIViewController {
    
    var chart: Pie = Pie()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print(Currency.createString(money: 123456.904))
        
        view.createBackground(color: UIColor.soothingBreeze)
        
        chart = Pie(center: CGPoint(point: view.center, offsetX: 0, offsetY: -50), radius: 150, values: [2, 4, 2, 8, 10])
        chart.labels = ["Bitcoin", "Ethereum", "Litecoin", "Bitcoin Cash", "TrevCoin"]
        
        if let openSans = UIFont(name: "OpenSans-Regular", size: 15) {
            chart.labelFont = openSans
        }

        view.addSubview(chart)
        
        chart.layer.scaleUp(withDuration: 0.1)
        
        let button = TrevButton(center: CGPoint(x: view.centerX, y: view.height-80), width: 180, height: 40)
        button.color = UIColor.electronBlue
        button.setTitle("Button", for: .normal)
        button.titleLabel?.font = UIFont(name: "OpenSans-Regular", size: 20)
        button.addTarget(self, action: #selector(self.buttonPressed), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonPressed()
    {
        view.setNeedsDisplay()
    }
}

