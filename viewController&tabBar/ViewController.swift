//
//  ViewController.swift
//  viewController&tabBar
//
//  Created by omar mattr on 20/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTabel: UITableView!
    let data = [Data(image: "imagCar", titile:"image1"),Data(image: "imagCar", titile:"image2"),Data(image: "imagCar", titile:"image3")]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTabel.dataSource = self
        myTabel.delegate = self
        myTabel.register(UINib(nibName: "MyTableCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }


}
struct Data {
    let image : String
    let titile : String
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! MyTableCell
        cell.imageCell.image = UIImage(named: data[indexPath.row].image)
        cell.titile.text = data[indexPath.row].titile
        return cell
        
    }
    private func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(data[indexPath.row])
    }
    
}
