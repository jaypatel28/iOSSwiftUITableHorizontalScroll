//
//  ViewController.swift
//  TableExperimentSelf
//
//  Created by Jay Patel on 12/10/15.
//  Copyright © 2015 MEAMobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("TableCell") as! TableViewCell
            cell.sizeToFit()
            return cell
        } else {
            let cell = self.tableView.dequeueReusableCellWithIdentifier("AnotherCell")
            cell?.textLabel?.text = "Title Label \(indexPath.row)"
            cell?.detailTextLabel?.text = "Detail: \(indexPath.row)"
            return cell!

        }

    }

}

