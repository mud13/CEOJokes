//
//  BioViewController.swift
//  CEOJokes
//
//  Created by Ankur Mahesh on 2/25/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var CEOPic: UIImageView!
    @IBOutlet weak var CEODescription: UILabel!
    
    var CEOImage = ""
    var imageText = ""
    
    
    override func viewDidLoad() {
        CEOPic.image = UIImage(named: CEOImage)
        CEOPic.layer.cornerRadius = CEOPic.frame.height/3
        CEOPic.layer.borderWidth = 1
        CEOPic.clipsToBounds = true

        
        CEODescription.text = imageText
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
