//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
private var crayons = Crayon.allTheCrayons
   
    @IBOutlet weak var myTableView: UITableView!
    
  override func viewDidLoad() {
    super.viewDidLoad()
     var crayons = Crayon.allTheCrayons
    myTableView.dataSource = self
    myTableView.delegate = self
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = myTableView.indexPathForSelectedRow,
            let crayonsDVC = segue.destination as? CrayonDetailController
            else {fatalError("indexPath, recipesDVC is nil") }
        let currentCrayon = crayons[indexPath.row]
        crayonsDVC.crayon = currentCrayon
        
  }


    }
}
extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let crayon = crayons[indexPath.row]
        let cellColor = UIColor.init(displayP3Red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha: 1.0)
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: ("crayonCell"), for: indexPath) as? UITableViewCell else { return UITableViewCell()}
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundView?.backgroundColor = cellColor
        return cell
    }
    
    
    
    
}
extension CrayonViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
    }

}
