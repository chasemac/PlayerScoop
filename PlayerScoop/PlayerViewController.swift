//
//  PlayerViewController.swift
//  PlayerScoop
//
//  Created by Chase McElroy on 6/23/16.
//  Copyright © 2016 Chase McElroy. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var players = Player.createPlayers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.players.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let player = self.players[indexPath.row]
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = player.name
        
        return cell
    }



}
