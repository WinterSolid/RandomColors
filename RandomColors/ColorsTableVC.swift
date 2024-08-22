//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Zakee Tanksley on 8/21/24.
//

import UIKit

class ColorsTableVC: UIViewController{
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toColorsDetailVC = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? ColorsDetailVC {
            destVC.color = sender as? UIColor
        }
    }
}

// MARK: Extensions
extension ColorsTableVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else { return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]// color to index # of row
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toColorsDetailVC, sender: color)
    }
}
