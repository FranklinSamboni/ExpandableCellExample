//
//  TableCell.swift
//  ExpandableCell
//
//  Created by Franklin Samboní on 31/01/20.
//  Copyright © 2020 Franklin Samboní. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var items: [String] = ["t1,t2,t3,t4,t5"] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SubCell", bundle: nil), forCellReuseIdentifier: "SubCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCell", for: indexPath) as! SubCell
        cell.labelText.text = items[indexPath.row]
        return cell
    }
}
