//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Zakee Tanksley on 8/21/24.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .red
    }
}
