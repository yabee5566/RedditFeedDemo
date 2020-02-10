//
//  FeedViewController.swift
//  RedditFeedDemo
//
//  Created by Ian Pan on 2020/2/10.
//  Copyright © 2020 Ian Pan. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "FullGraphTableCell", bundle: nil), forCellReuseIdentifier: "FullGraphTableCell")
        self.tableView.register(UINib(nibName: "RegularTableCell", bundle: nil), forCellReuseIdentifier: "RegularTableCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    // Test custom tableview with 2 style tableViewCell
    //TODO: Replace this
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FullGraphTableCell") as! FullGraphTableCell
            // Set up cell.label
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RegularTableCell") as! RegularTableCell
            // Set up cell.button
            return cell
        }
    }

    // Test custom tableview with 2 height
    //TODO: Replace this
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 == 0 {
            return 200
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RegularTableCell") as! RegularTableCell
            // Set up cell.button
            return 100
        }
    }
}

