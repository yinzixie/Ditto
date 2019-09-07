//
//  StatisticPage.swift
//  AR
//
//  Created by yinzixie on 7/9/19.
//  Copyright © 2019 yinzixie. All rights reserved.
//

import UIKit

class StatisticPage: UIViewController {
    @IBOutlet weak var uList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
      
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension StatisticPage: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    //configure each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UniversityCell", for: indexPath) as! UniversityCell
        
        // Configure the cell...
        if let universityCell = cell as? UniversityCell
        {
            universityCell.content.isUserInteractionEnabled = false
            if(indexPath.row == 1) {
                universityCell.iconImage.image = UIImage(named:"usyd")
                universityCell.name.text = "University of Sydney"
                universityCell.image0.image = UIImage(named:"usyd0")
                universityCell.image1.image = UIImage(named:"usyd1")
                universityCell.image2.image = UIImage(named:"usyd2")
            }
            if(indexPath.row == 2) {
                universityCell.iconImage.image = UIImage(named:"ulq")
                universityCell.name.text = "University of Queensland"
                universityCell.image0.image = UIImage(named:"ulq0")
                universityCell.image1.image = UIImage(named:"ulq1")
                universityCell.image2.image = UIImage(named:"ulq2")
            }
            if(indexPath.row == 3) {
                universityCell.iconImage.image = UIImage(named:"uad")
                universityCell.name.text = "University of Adelidea"
                universityCell.image0.image = UIImage(named:"uad0")
                universityCell.image1.image = UIImage(named:"uad1")
                universityCell.image2.image = UIImage(named:"uad2")
            }
        }
        return cell
    }
}

