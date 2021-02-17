//
//  ListTableViewController.swift
//  contakt
//
//  Created by Sofi on 17.02.2021.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var list = TabBarContactViewController.tabData
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellList", for: indexPath)
        
        let cont = list[ indexPath.section]
        
        let replacedFullname = cont.fullname.replacingOccurrences(of: " ", with: "")
        let mail = "\(replacedFullname)\(cont.emailDelimit)@\(cont.emailDom)".lowercased()
        
        if indexPath.row == 0 {
            
            cell.textLabel?.text = cont.number
            
        } else if indexPath.row == 1 {
            
            cell.textLabel?.text = mail
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return  list[section].fullname
    }
}
