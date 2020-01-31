//
//  ViewController.swift
//  ExpandableCell
//
//  Created by Franklin Samboní on 31/01/20.
//  Copyright © 2020 Franklin Samboní. All rights reserved.
//

import UIKit

struct cellData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
}

class ViewController: UITableViewController {

    var data = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = [
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"]),
            cellData(opened: false, title: "1", sectionData: ["cell1","cell2","cell3"]),
            cellData(opened: false, title: "2", sectionData: ["cell21","cell22","cell23"]),
            cellData(opened: false, title: "3", sectionData: ["cell31","cell32","cell33"]),
            cellData(opened: false, title: "4", sectionData: ["cell41","cell42","cell43"])
            
        ]
        
        self.tableView.register(UINib(nibName: "SimpleCell", bundle: nil), forCellReuseIdentifier: "SimpleCell")
        self.tableView.register(UINib(nibName: "TableCell", bundle: nil), forCellReuseIdentifier: "TableCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data[section].opened == true {
            return 2
        } else {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleCell", for: indexPath) as! SimpleCell
            cell.headerLabel.text = data[indexPath.section].title
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCell
            cell.items = data[indexPath.section].sectionData
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if data[indexPath.section].opened == true {
            var sections = IndexSet.init(integer: indexPath.section)
//            for i in 0..<data.count {
//                if i != indexPath.section {
//                    data[i].opened = false
//                    sections.insert(i)
//                }
//            }
            data[indexPath.section].opened = false
            
            tableView.reloadSections(sections, with: UITableView.RowAnimation.fade)
        } else {
            var sections = IndexSet.init(integer: indexPath.section)
//            for i in 0..<data.count {
//                if i != indexPath.section {
//                    data[i].opened = false
//                    sections.insert(i)
//                }
//            }
            data[indexPath.section].opened = true
            tableView.reloadSections(sections, with: UITableView.RowAnimation.fade)
        }
    }
    
}

