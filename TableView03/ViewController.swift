
//
//  ViewController.swift
//  TableView03
//
//  Created by dit03 on 2019. 4. 30..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var animals = ["Cat", "Dog", "Pig", "Bird", "Whale", "Cow"]
    var detailAnimals = ["고양이", "강아지", "돼지", "새", "고래", "소"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)//셀 하나 만드는데 재활용
        let row = indexPath.row
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = animals[row]
        
        //이미지 넣기
        cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
    }
    //AddViewController로 데이터 넘기기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goAdd" {
            let addVC = segue.destination as! AddViewController
        //    addVC.testData = self.title
            addVC.testData = animals[0]
            addVC.imgData = "Cat"
            addVC.nameData = detailAnimals[0]
            
        } else if segue.identifier == "goDetail"{
            
        } else {
            print("segue error")
        }
    }
    
    
    
    
}

