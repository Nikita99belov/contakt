//
//  DataTableViewController.swift
//  contakt
//
//  Created by Sofi on 16.02.2021.
//

import UIKit

class DataTableViewController: UITableViewController {
    
    var personNumber: String!
    var personMail: String!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text =  personNumber
        content.secondaryText = personMail
        
        cell.contentConfiguration = content
        
        return cell
    }
}
