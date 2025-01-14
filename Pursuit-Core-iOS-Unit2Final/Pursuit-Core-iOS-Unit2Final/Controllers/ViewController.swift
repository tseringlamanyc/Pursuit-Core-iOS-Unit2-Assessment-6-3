//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  @IBOutlet weak var tablewView: UITableView!
    
    var crayons = [Crayon]() {
        didSet {
            tablewView.reloadData()
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tablewView.dataSource = self
    crayons = Crayon.allTheCrayons
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController, let indexpath = tablewView.indexPathForSelectedRow else {
            fatalError()
        }
        detailVC.crayon = crayons[indexpath.row]
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        let color = crayons[indexPath.row]
        cell.textLabel?.text = color.name
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = color.hex
        cell.backgroundColor = UIColor(displayP3Red: (CGFloat(color.red / 255)), green: (CGFloat(color.green / 255)), blue: (CGFloat(color.blue / 255)), alpha: 1.0)
        return cell
    }
}

