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

    //Настройка секции
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "someContactCell")
//        var title = header?.defaultContentConfiguration()
//        //title?.text = contacts[section].mail
//
//
//        title?.text = "Section: \(section)"
//        header?.contentConfiguration = title
//
//        return header
//    }
    
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
        
        let firstCell = tableView.dequeueReusableCell(withIdentifier: "mailContactCell", for: indexPath)
        let secondCell = tableView.dequeueReusableCell(withIdentifier: "phoneContactCell", for: indexPath)
        
        var firstContent = firstCell.defaultContentConfiguration()
        var secondContent = secondCell.defaultContentConfiguration()
        
        firstContent.text = contacts[indexPath.section].mail
        secondContent.text = contacts[indexPath.section].numberPhone
        
        firstCell.contentConfiguration = firstContent
        secondCell.contentConfiguration = secondContent
        
        if indexPath.row == 0 {
            return firstCell
        } else {
            return secondCell
        }
    }
}
