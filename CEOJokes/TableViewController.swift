//
//  TableViewController.swift
//  CEOJokes
//
//  Created by Mudit Mittal on 2/23/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

private let reuseIdentifier = "nameCell"


class TableViewController: UITableViewController {
    
    
    @IBOutlet weak var productTitle: UILabel!
    var names = ["Steve Jobs", "Larry Page", "Elon Musk", "Bill Gates", "Mark Zuckerberg"]
    var CEOimage = ["jobs", "page", "musk", "gates", "zuckerberg"]
    
    var products = [["iPhone", "iPad", "Macbook Pro", "iPod", "Apple TV"], ["Android", "Chrome", "Google Drive", "Gmail", "Hangouts"], ["Model S", "Model X", "Roadster", "Falcon 9", "Falcon Heavy"], ["Microsoft Word", "Microsoft Excel", "Microsoft Powerpoint", "Windows", "XBOX"], ["Facebook", "Free Basics", "Instagram", "WhatsApp", "Internet.org"]]
    var images = [["iphone real", "ipad", "macbook pro", "ipod", "apple tv"], ["android", "chrome", "google-drive", "gmail", "hangouts"], ["model s", "model x", "roadster", "falcon 9", "falcon heavy"], ["word", "excel", "powerpoint", "windows", "xbox"], ["facebook", "free basics", "instagram", "whatsapp", "internet-org"]]
    
    var bios = ["Steven Paul Jobs (February 24, 1955 – October 5, 2011) was an American information technology entrepreneur and inventor. He was the co-founder, chairman, and chief executive officer (CEO) of Apple Inc.; CEO and largest shareholder of Pixar Animation Studios; a member of The Walt Disney Company's board of directors following its acquisition of Pixar; and founder, chairman, and CEO of NeXT Inc. Jobs is widely recognized as a pioneer of the microcomputer revolution of the 1970s, along with Apple co-founder Steve Wozniak. Shortly after his death, Jobs's official biographer, Walter Isaacson, described him as a creative entrepreneur whose passion for perfection and ferocious drive revolutionized six industries: personal computers, animated movies, music, phones, tablet computing, and digital publishing.", "Lawrence Page (born March 26, 1973) is an American computer scientist and Internet entrepreneur who co-founded Google Inc. with Sergey Brin, and is the CEO of Google's parent company, Alphabet Inc. After stepping aside as CEO in August 2001 in favour of Eric Schmidt, Page re-assumed the role in April 2011. He announced his intention to step aside a second time in July 2015 to become CEO of Alphabet, under which Google's assets would be reorganized. Under Page, Alphabet is seeking to deliver major advancements in a variety of industries. Page is the inventor of PageRank, Google's best-known search ranking algorithm.", "Elon Reeve Musk (born June 28, 1971) is a South African-born Canadian-American business magnate, engineer, inventor and investor. He is the founder, CEO and CTO of SpaceX, co-founder, CEO and product architect of Tesla Motors, chairman of SolarCity, co-chairman of OpenAI, co-founder of Zip2, and co-founder of PayPal. As of January 2016, he has an estimated net worth of US$12.4 billion, making him the 39th wealthiest person in the US. The goals of his entrepreneurial endeavors revolve around his visions to change the world and humanity. His ultimate goals include reducing global warming through sustainable energy production and consumption; as well as reducing the chance of human extinction by making life multiplanetary and setting up human colony on Mars. These goals are being achieved with SolarCity, Tesla Motors and SpaceX respectively.", "William Henry Gates III (born October 28, 1955) is an American business magnate, philanthropist, investor, and computer programmer. In 1975, Gates and Paul Allen co-founded Microsoft, which became the world's largest PC software company. During his career at Microsoft, Gates held the positions of chairman, CEO and chief software architect, and was the largest individual shareholder until May 2014. Gates has authored and co-authored several books.Starting in 1987, Gates was included in the Forbes list of the world's wealthiest people and was the wealthiest from 1995 to 2007, again in 2009, and has been since 2014. Between 2009 and 2014, his wealth doubled from US$40 billion to more than US$82 billion. Between 2013 and 2014, his wealth increased by US$15 billion.[10] Gates is currently the wealthiest person in the world with a wealth of US$77.2 billion.", "Mark Elliot Zuckerberg (born May 14, 1984) is an American computer programmer, Internet entrepreneur, and philanthropist. He is the chairman, chief executive, and co-founder of the social networking website Facebook. His net worth is estimated to be $46 billion as of December 2015. Together with his college roommates and fellow Harvard University students Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes, he launched Facebook from Harvard's dormitory rooms. The group then introduced Facebook to other campuses. Facebook expanded rapidly, with one billion users by 2012. Zuckerberg was involved in various legal disputes that were initiated by others in the group, who claimed a share of the company based upon their involvement during the development phase of Facebook."]
    
    var col = Int()
    var rowIndex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products[rowIndex].count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath) as! TableViewCell

        // Configure the cell
        cell.productLabel.text = products[rowIndex][indexPath.row]
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "toProductImage") {
            let pvc = segue.destinationViewController as! ProductViewController
            let imageName = images[rowIndex][col]
            pvc.imageName = imageName
        }
        
        if (segue.identifier == "toBio") {
            let vc = segue.destinationViewController as! BioViewController
            let CEOPic = CEOimage[rowIndex]
            let CEODescription = bios[rowIndex]
            vc.CEOImage = CEOPic
            vc.imageText = CEODescription
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        col = indexPath.row
        self.performSegueWithIdentifier("toProductImage", sender: indexPath)
        
    }

}
