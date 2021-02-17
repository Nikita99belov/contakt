//
//  ContactTableViewController.swift
//  contakt
//
//  Created by Sofi on 16.02.2021.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var personList = TabContactViewController.tabData
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cellcontact", for: indexPath)
        
        let cont = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        let replacedFullname = cont.fullname.replacingOccurrences(of: " ", with: "")
        let mail = "\(replacedFullname)\(cont.emailDelimit)@\(cont.emailDom)".lowercased()
        
        content.text = cont.fullname
        content.secondaryText = mail
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let controller = segue.destination as? DataTableViewController,
               let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let item = personList[indexPath.row]
        let replacedFullname = item.fullname.replacingOccurrences(of: " ", with: "")
        
        controller.personMail = "\(replacedFullname)\(item.emailDelimit)@\(item.emailDom)".lowercased()
        
        controller.personNumber = item.number
        controller.title = item.fullname
        
    }
}



