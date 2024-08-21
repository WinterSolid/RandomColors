//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Zakee Tanksley on 8/21/24.
//

import UIKit

class ColorsTableVC: UIViewController{
    var colors: [UIColor] = []
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(displayP3Red: CGFloat.random(in: 0...1), 
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
       return randomColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
}
// Added extension for cleaner code
extension ColorsTableVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
