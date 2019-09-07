//
//  ForumPage.swift
//  AR
//
//  Created by yinzixie on 7/9/19.
//  Copyright © 2019 yinzixie. All rights reserved.
//

import UIKit

class ForumPage: UIViewController {

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

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension ForumPage: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    //configure each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath) as! CommentCell
        
        // Configure the cell...
        if let commentCell = cell as? CommentCell
        {
            commentCell.content.isUserInteractionEnabled = false
            if(indexPath.row == 0) {
                commentCell.image0.image = UIImage(named:"star")
                commentCell.image1.image = UIImage(named:"star")
                commentCell.image2.image = UIImage(named:"star")
                commentCell.image3.image = UIImage(named:"star")
                commentCell.image4.image = UIImage(named:"star")
            }
            if(indexPath.row == 1) {
                
                commentCell.name.text = "Renyi lu"
                commentCell.image0.image = UIImage(named:"star")
                commentCell.image1.image = UIImage(named:"star")
                commentCell.image2.image = UIImage(named:"star")
            }
            if(indexPath.row == 2) {
                
                commentCell.name.text = "Renyi bing"
                commentCell.image0.image = UIImage(named:"star")
                commentCell.image1.image = UIImage(named:"star")
                commentCell.image2.image = UIImage(named:"star")
            }
            if(indexPath.row == 3) {
              
                commentCell.name.text = "Rending lu"
                commentCell.image0.image = UIImage(named:"star")
            }
        }
        return cell
    }
}

