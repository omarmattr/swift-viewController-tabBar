//
//  ViewController.swift
//  viewController&tabBar
//
//  Created by omar mattr on 20/03/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{
//    var dataRow:Data?
    @IBOutlet weak var myTabel: UITableView!
    let data = [Data(image: "imagCar", title:"image1"),Data(image: "imagCar", title:"image2"),Data(image: "imagCar", title:"image3")]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTabel.dataSource = self
        myTabel.delegate = self
        print(data[0])
        myTabel.register(UINib(nibName: "MyTableCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "Details" {
//            if let destination = segue.destination as? Details {
//                print("ooooo")
//               destination.data = dataRow
//            }
//        }
//    }
}
struct Data {
    let image : String
    let title : String
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewC = storyBoard.instantiateViewController(withIdentifier: "Details") as! Details
        viewC.data = data[indexPath.row]
       present(viewC, animated: true, completion: nil)
        
       // self.dataRow = data[indexPath.row]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! MyTableCell
        cell.imageCell.image = UIImage(named: data[indexPath.row].image)
        cell.titile.text = data[indexPath.row].title
        return cell
        
    }}
   
    

