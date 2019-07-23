//
//  ViewController.swift
//  FoldTableView
//
//  Created by GK on 2019/7/18.
//  Copyright © 2019 com.gk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,GHTableViewDataSource,GHTableViewDelegate {

    @IBOutlet weak var tableView: GHTableView!
    
    let citys = ["S":["上海","陕西","山西"],"N":["南京","南宁","南方"],"B":["北京"],"A":["南京","南宁","南方"],"M":["北京"],"O":["南京","南宁","南方"],"P":["北京"]]
    var citySectionTitles: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.GHTableViewDelegate = self
        self.tableView.GHTableViewDataSource = self

        citySectionTitles = citys.keys.sorted()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return citys.count
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath, isExpanded: Bool) -> UITableViewCell {
        
        if isExpanded {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CellMine") as? FoldTableViewCell {
                
                return cell
            }
            
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CellMine") as? FoldTableViewCell {
                
                return cell;
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, collapseCell cell: UITableViewCell, withIndexPath indexPath: IndexPath) {
        
    }
    
    func tableView(tableView: UITableView, expandCell cell: UITableViewCell, withIndexPath indexPath: IndexPath) {
        
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath, isExpanded: Bool) -> CGFloat {
        if isExpanded {
            return 368
        }
        return 55
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return citySectionTitles[section]
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    func sectionIndexTitlesForTableView(_ tableView: UITableView) -> Array<String> {
        return citySectionTitles
    }
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        return citySectionTitles.firstIndex(of: title)!
    }
}


