//
//  MasterViewController.swift
//  Project7WhitehousePetitions
//
//  Created by Henry on 5/18/15.
//  Copyright (c) 2015 Henry. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    //Each dictionary holding a string for its key and another string for its value
    var objects = [[String: String]]()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Points to the Whitehouse.gov server, accessing the petitions system
        var urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"
        
        if let url = NSURL(string: urlString) {
            //Returns the content from an NSURL
            if let data = NSData(contentsOfURL: url, options: NSDataReadingOptions.allZeros, error: nil) {
                //Create a new JSON object from it, it's a SwiftyJSON structure
                let json = JSON(data: data)
                
                if json["metadata"]["responseInfo"]["status"] == 200 {
                    //Ok to parse
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = objects[indexPath.row]
            (segue.destinationViewController as! DetailViewController).detailItem = object
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        let object = objects[indexPath.row]
        cell.textLabel!.text = object.description
        return cell
    }

}

