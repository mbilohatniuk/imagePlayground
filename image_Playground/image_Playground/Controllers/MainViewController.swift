//
//  MainViewController.swift
//  image_Playground
//
//  Created by Maksym Bilohatniuk on 10/24/19.
//  Copyright © 2019 Maksym Bilohatniuk. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let cars = ["Mercedes-Benz A-Class",
                "Mercedes-Benz A Sedan",
                "Mercedes-Benz A-Class AMG",
                "Mercedes-Benz AMG GT",
                "Mercedes-Benz AMG GT 4-Door Coupe",
                "Mercedes-Benz AMG GT C",
                "Mercedes-Benz B-Class",
                "Mercedes-Benz C-Class AMG",
                "Mercedes-Benz CLA",
                "Mercedes-Benz CL-Class",
                "Mercedes-Benz CLS-Class AMG",
                "Mercedes-Benz E-Class",
                "Mercedes-Benz G-Class",
                "Mercedes-Benz CLK-Class"]

    @IBOutlet weak var imageBrand: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageBrand.image = UIImage(named: "mercedesLogo")
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
        cell.imageView?.image = UIImage(named: cars[indexPath.row])
        cell.textLabel?.text = cars[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue"  {
            let indexPath = self.tableView.indexPathForSelectedRow
            let detailVC = segue.destination as! ZoomDetailViewController
            detailVC.image = cars[indexPath!.row]
        }
    }
  
}


