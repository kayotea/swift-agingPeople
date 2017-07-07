//
//  ViewController.swift
//  agingPeople
//
//  Created by Placoderm on 7/6/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var people = ["Kaan","Erik","Lucy","Wenmin","Jerome","Chris","Kavya","Tahim","Lucas","Eli","Aaron","Heather"]
    var ages = [String]()
    
    //@IBOutlet weak var ageList: UITableView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        for _ in 0..<people.count {
            let phrase = Int(arc4random_uniform(90))+5
            ages.append("\(phrase) years old")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        //cell.textLabel?.text = "\(indexPath.row)"
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = ages[indexPath.row]
        return cell
    }
}
