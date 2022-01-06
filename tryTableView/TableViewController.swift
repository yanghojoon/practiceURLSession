//
//  TableViewController.swift
//  tryTableView
//
//  Created by 양호준 on 2022/01/06.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section + 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                       for: indexPath) as? TableViewCell else {
            return TableViewCell()
        }
        
        if indexPath.section <= 4 {
            cell.indexLabel.text = "(\(indexPath.section), \(indexPath.row))"
        } else {
            cell.indexLabel.text = ""
        }
        
        if indexPath.row == 3 {
            cell.backgroundColor = .red
        } else {
            cell.backgroundColor = .clear
        }
        
        
        return cell
    }
}
