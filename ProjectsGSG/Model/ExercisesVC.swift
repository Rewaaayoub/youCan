//
//  ExercisesVC.swift
//  ProjectsGSG
//
//  Created by Rewaa on 12/9/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit
struct Exercies{
    var img : UIImage
    var name : String
    var cal : String
    var time : String
    var img2 : UIImage
}
class ExercisesVC: UIViewController {
    var exc : [Exercies] = []
    @IBOutlet weak var tv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        exc.append(Exercies(img: #imageLiteral(resourceName: "Video Player"), name : "Focus belly" , cal: "60 calorie", time: "5 minutes", img2: #imageLiteral(resourceName: "false")))
        
        exc.append(Exercies(img: #imageLiteral(resourceName: "Video Player"), name: "Dance fitness" , cal: "70 calorie", time: "5 minutes", img2: #imageLiteral(resourceName: "true")))
        exc.append(Exercies(img: #imageLiteral(resourceName: "Video Player"), name: "Focus belly", cal: "120 calorie", time: "5 minutes", img2: #imageLiteral(resourceName: "false")))
        exc.append(Exercies(img: #imageLiteral(resourceName: "Video Player"), name: "Dance fitness", cal: "130 calorie", time: "5 minutes", img2: #imageLiteral(resourceName: "true")))
        exc.append(Exercies(img: #imageLiteral(resourceName: "Video Player"), name : "Focus belly" , cal: "50 calorie", time: "5 minutes", img2: #imageLiteral(resourceName: "false")))
        
        tv.dataSource = self

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
extension ExercisesVC : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"ExcericesCell") as! ExcericesCell
        cell.img.image = exc[indexPath.row].img
        cell.name.text = exc[indexPath.row].name
        cell.cal.text = exc[indexPath.row].cal
        cell.time.text = exc[indexPath.row].time
        cell.img2.image = exc[indexPath.row].img2
        return cell
    }
    
    
}
