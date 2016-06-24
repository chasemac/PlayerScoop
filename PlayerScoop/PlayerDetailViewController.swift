//
//  PlayerDetailViewController.swift
//  PlayerScoop
//
//  Created by Chase McElroy on 6/23/16.
//  Copyright © 2016 Chase McElroy. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {

    var player = Player()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel1: UILabel!
    @IBOutlet weak var heightLabel2: UILabel!
    @IBOutlet weak var ageLabel1: UILabel!
    @IBOutlet weak var ageLabel2: UILabel!
    @IBOutlet weak var collegeLabel1: UILabel!
    @IBOutlet weak var collegeLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = self.player.backgroundColor
        self.imageView.image = self.player.image
        self.nameLabel.text = self.player.name
        self.nameLabel.textColor = self.player.textColor2
        
        self.heightLabel1.textColor = self.player.textColor1
        self.heightLabel2.textColor = self.player.textColor2
        self.heightLabel2.text = self.player.height
        
        self.ageLabel1.textColor = self.player.textColor1
        self.ageLabel2.textColor = self.player.textColor2
        self.ageLabel2.text = "\(self.player.age)"
        
        self.collegeLabel1.textColor = self.player.textColor1
        self.collegeLabel2.textColor = self.player.textColor2
        self.collegeLabel2.text = self.player.college
        
        //making image round
        
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2;
        self.imageView.clipsToBounds = true
        
    }




}
