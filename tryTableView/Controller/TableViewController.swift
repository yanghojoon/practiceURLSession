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
        
        guard let url = URL(string: NetworkURL.init(rawValue: indexPath.row % 3)!.url) else {
            fatalError()
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("올바르지 않은 StatusCode")
                return
            }
            guard let data = data, let image = UIImage(data: data) else {
                print("데이터 변환 오류")
                return
            }
            
            DispatchQueue.main.async {
                cell.testImage.image = image
            }
        }
        task.resume()
        
        return cell
    }
}
