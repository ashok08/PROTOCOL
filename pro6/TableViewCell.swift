//
//  TableViewCell.swift
//  pro6
//
//  Created by Intern on 10/07/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit

//MARK -Protocol

protocol Tableviewcell
{
    func touchme(item:String)
}


class TableViewCell: UITableViewCell
{
    
    @IBOutlet weak var display: UITextField!
    @IBAction func clear(_ sender: UIButton)
    {
        display.text = " "
    }
    var delegate: Tableviewcell?
    @IBAction func deleg(_ sender: UITextField) {
        
        if let dis = display.text{
            if let dis1 = String(dis){
                delegate?.touchme(item: dis1)
            }
        }
    }
}
