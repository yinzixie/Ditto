//
//  HomePage.swift
//  AR
//
//  Created by yinzixie on 7/9/19.
//  Copyright © 2019 yinzixie. All rights reserved.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var headPhoto: UIImageView!
    @IBOutlet weak var uList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setHeadPhoto()
        //water wave
        let headerView = ZFJWaveView(frame: CGRect(x: CGFloat(0), y: CGFloat(-20), width: CGFloat(self.view.frame.size.width), height: CGFloat(280) + 70*screen.screenh/CGFloat(screen.Xscreenh)))
        headerView.backgroundColor =  UIColor(red: 0/255, green: 141/255, blue: 206/255, alpha: 1.0)//UIColor(red: CGFloat(1.000), green: CGFloat(0.318), blue: CGFloat(0.129), alpha: CGFloat(1.00))
        headerView.waveBlock = {(_ currentY: CGFloat) -> Void in
            //print(currentY)
        }
        headerView.startWaveAnimation()
        
        view.addSubview(headerView)
        view.sendSubviewToBack(headerView)
        
        //remove seperation from cell which doesn't contain data
        uList.tableFooterView = UIView.init(frame: CGRect.zero)
        uList.layer.borderWidth = 1
        uList.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    public func setHeadPhoto() {
        headPhoto?.image = UIImage(named:"headphoto")?.toCircle()
        headPhoto?.layer.cornerRadius = headPhoto.frame.width/2
        headPhoto?.clipsToBounds = true
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

extension HomePage: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    //configure each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        // Configure the cell...
        if let productCell = cell as? ProductCell
        {
            productCell.introduce.isUserInteractionEnabled = false
            if(indexPath.row == 1) {
                productCell.productImage.image = UIImage(named:"ulq")
                productCell.name.text = "ULQ"
                productCell.price.text = "35000$/year"
            }
            
            
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = deleteAction(at: indexPath)
        let edit = editAction(at: indexPath)
         let submit = submitAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [delete,edit,submit])
    }
    
    
    func deleteAction(at indexPath: IndexPath)->UIContextualAction {
        let action = UIContextualAction(style:.normal, title: "Delete") {(action, view, completion) in
            
            //弹出确认窗口
            let alert = UIAlertController(title: "Warning", message: "This action cannot be reversed.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Proceed", style: .default, handler: {
                action in
                
               // self.IsRefreshFromSelf = true
               // JournalListCache.deleteJournal(journal: self.journals[indexPath.row], indexPathInTable: indexPath)
                completion(true)
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        action.image = UIImage(named:"delete@250*250")?.resizeImage(60, opaque: false)
        action.backgroundColor = .red
        return action
    }
    
    func editAction(at indexPath: IndexPath)->UIContextualAction {
        let action = UIContextualAction(style:.normal, title: "Edit") {(action, view, completion) in
            
            //jump to admin page through segue"goToEditJournalSegue"
            //self.performSegue(withIdentifier:"goToEditJournalSegue", sender: self.journals[indexPath.row])
            
            completion(true)
        }
        
        action.image = UIImage(named:"Edit")?.resizeImage(60, opaque: false)
        action.backgroundColor = .lightGray
        return action
    }
    
    func submitAction(at indexPath: IndexPath)->UIContextualAction {
        let action = UIContextualAction(style:.normal, title: "Submit") {(action, view, completion) in
            
            //jump to admin page through segue"goToEditJournalSegue"
            //self.performSegue(withIdentifier:"goToEditJournalSegue", sender: self.journals[indexPath.row])
            
            completion(true)
        }
        
        action.backgroundColor = .blue
        return action
    }
}
