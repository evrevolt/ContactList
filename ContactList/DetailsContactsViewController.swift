//
//  DetailsContactsViewController.swift
//  ContactList
//
//  Created by Геннадий Ведерников on 27.10.2022.
//

import UIKit

class DetailsContactsViewController: UITableViewController {
    
    var contacts = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    //Колличество секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    //Колличество ячеек в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    //Имя для секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    //Высота секции
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }

    //Настройка ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mailContactCell", for: indexPath)
            var cellContext = cell.defaultContentConfiguration()
            cellContext.text = contacts[indexPath.section].mail
            cell.contentConfiguration = cellContext
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneContactCell", for: indexPath)
            var cellContext = cell.defaultContentConfiguration()
            cellContext.text = contacts[indexPath.section].numberPhone
            cell.contentConfiguration = cellContext
            return cell
        }
        
    }
}
