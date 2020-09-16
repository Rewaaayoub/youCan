//
//  ViewController.swift
//  ProjectsGSG
//
//  Created by Rewaa on 11/17/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit
struct Sliders {
    var image  : UIImage
    var name: String}
class ViewController: UIViewController {
    var slider : [Sliders] = []
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.dataSource = self
        collection.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
     /*   slider.append( Sliders(image: #imageLiteral(resourceName: "slider1"), image2: #imageLiteral(resourceName: "Progression Bar")))
        slider.append( Sliders(image: #imageLiteral(resourceName: <#T##String#>), image2: #imageLiteral(resourceName: <#T##String#>)))
        slider.append( Sliders(image: #imageLiteral(resourceName: <#T##String#>), image2: #imageLiteral(resourceName: <#T##String#>)))
*/
    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SliderCVC", for: indexPath) as! SliderCVC
        cell.image1.image = slider[indexPath.row].image
  //      cell.image2.image = slider[indexPath.row].image2
        return cell
    }
  
    
}
