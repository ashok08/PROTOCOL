//
//  ViewController.swift
//  pro6
//
//  Created by Intern on 10/07/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit


class ViewController: UIViewController,Tableviewcell
{
    
    @IBOutlet weak var msg: UILabel!
    
    @IBOutlet weak var tableview: UITableView!
    var tablecell = TableViewCell()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tablecell.delegate = self
    }
    
//MARK - ProtocolMethodCall
    
    func touchme(item: String)
    {
      self.msg.text = item
    }
   
}

//MARK -ClassExtension

extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.delegate = self
        return cell
    }
    
    
}




