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
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
       // tableView.register(UINib(nibName: "TribeCouponsCell", bundle: Bundle.main), forCellReuseIdentifier: "tribeCouponsCell")
        self.tableView.register(UINib(nibName: "TribeCouponsCell”, bundle: Bundle.main), forCellReuseIdentifier: “tribeCouponsCell”)
    }
    
    
}

extension TribeViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "tribeCouponsCell") as! TribeCouponsCell
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "tribeCouponsCell”) as! TribeCouponsCell
        return cell
    }
    
    
}

