//
//  ViewController.swift
//  goTribe
//
//  Created by Akhil Jain on 16/09/20.
//  Copyright © 2020 Akhil Jain. All rights reserved.
//

import UIKit

class TribeViewController: UIViewController {

    let tribeCouponUrl = "https://www.mocky.io/v3/fc018d9d-5952-48cc-bb45-51bdf73f2dc8"
    let historyUrl = "https://mocky.io/v3/11d3ca2c-4ce4-4a59-b097-24849d2b721d"
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
       // tableView.register(UINib(nibName: "TribeCouponsCell", bundle: Bundle.main), forCellReuseIdentifier: "tribeCouponsCell")
        self.tableView.register(UINib(nibName: "TribeCouponsCell", bundle: Bundle.main), forCellReuseIdentifier: "tribeCouponsCell")
        self.tableView.register(UINib(nibName: "HistoryCell", bundle: Bundle.main), forCellReuseIdentifier: "historyCell")
        
        
       // tableView.estimatedRowHeight = 104
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    
}

extension TribeViewController : UITableViewDelegate,UITableViewDataSource{
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "tribeCouponsCell") as! TribeCouponsCell
        
        return cell
    }
    
    
}

