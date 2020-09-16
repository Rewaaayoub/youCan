//
//  LoseWeightVC.swift
//  ProjectsGSG
//
//  Created by Rewaa on 12/3/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit
struct Lose{
    var name : String
    var img : UIImage
}
class LoseWeightVC: UIViewController {
    var lose : [Lose] = []
     @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        add(name:"How Many Calories Should You Eat Per Day to Lose Weight?",img: #imageLiteral(resourceName: "eat"))
        add(name:"How Many Calories Should You Eat Per Day to Lose Weight?",img: #imageLiteral(resourceName: "eat"))

        add(name:"How Many Calories Should You Eat Per Day to Lose Weight?",img: #imageLiteral(resourceName: "eat"))
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    func add(name : String,img : UIImage){
        self.lose.append(Lose(name: name, img: img))
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
extension LoseWeightVC : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lose.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LoseWeightCell", for: indexPath) as! LoseWeightCell
        let loses = lose[indexPath.row]
        cell.img.image = loses.img
        cell.name.text = loses.name
        return cell
    }
    
    
}
