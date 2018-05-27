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
        let chart = Pie(frame: CGRect(x: view.frame.size.width/2-100, y: view.frame.size.height/2-100, width: 200, height: 200), sections: 5, radius: 100)
        view.addSubview(chart)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

