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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let chart = Pie(center: view.center, radius: 150, values: [2, 4, 2, 8, 10])
        chart.separation = 0
        chart.labels = ["Bitcoin", "Ethereum", "Litecoin", "Bitcoin Cash", "TrevCoin"]
        if let openSans = UIFont(name: "OpenSans-Regular", size: 20) {
            chart.labelFont = openSans
        }

        view.addSubview(chart)
        
        chart.scaleUp(withDuration: 0.2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

