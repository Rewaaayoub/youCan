//
//  AddVCC.swift
//  ProjectsGSG
//
//  Created by Rewaa on 11/29/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit
struct New{
    var name : String
    var img : UIImage

}
class AddVCC: UIViewController {
    var new : [New]=[]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       new.append(New(name: "Steps", img: #imageLiteral(resourceName: "Step")))
        new.append(New(name: "Water intake", img: #imageLiteral(resourceName: "water")))

        new.append(New(name: "Calorie Intake", img: #imageLiteral(resourceName: "calory")))

        new.append(New(name: "Weight Tracking", img: #imageLiteral(resourceName: "weight")))

        new.append(New(name: "Heart Rate", img: #imageLiteral(resourceName: "hart")))

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
extension AddVCC:UITableViewDataSource,UICollectionViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return new.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addVC", for: indexPath) as! addVC
       cell.img.image = new[indexPath.row].img
        cell.name.text = new[indexPath.row].name
        return cell
    }
    
    
}
