//
//  ViewController.swift
//  Test
//
//  Created by Bruno Scheltzke on 05/11/19.
//  Copyright © 2019 Bruno Scheltzke. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var list = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list = Array(repeating: "eiiita", count: 20)
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
}
