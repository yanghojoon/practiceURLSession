//
//  TableViewCell.swift
//  tryTableView
//
//  Created by 양호준 on 2022/01/06.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var testImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    func setupUI() {
        indexLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5).isActive = true
        indexLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -5).isActive = true
        indexLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,
                                            constant: 15).isActive = true
        testImage.leadingAnchor.constraint(equalTo: indexLabel.trailingAnchor, constant: 20).isActive = true
        testImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5).isActive = true
        testImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -5).isActive = true
        testImage.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -5).isActive = true
    }

}
