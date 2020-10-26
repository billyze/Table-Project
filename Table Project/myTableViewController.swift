//
//  myTableViewController.swift
//  Project 2
//
//  Created by Field Employee on 10/24/20.
//

import UIKit

class myTableViewController: UITableViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> myTableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "Title 1", for: indexPath) as? myTableViewCell else {return myTableViewCell()}
        cell.cellButton.setTitle("Button \(indexPath.row + 1)", for: .normal)
        cell.textField.text = "Row \(indexPath.row + 1)"
        cell.myImage.image = imageFilter(index: (indexPath.row % 5))
        cell.progressBar.progress = Float(indexPath.row)/30
        return cell
    }
    
    func imageFilter(index: Int) -> UIImage? {
        var image: UIImage?
        
        switch(index % 5) {
            case 0:
                image = UIImage(named: "unnamed.png")
            case 1:
                image = UIImage(named: "diamond.png")
            case 2:
                image = UIImage(named: "mushroom.png")
            case 3:
                image = UIImage(named: "music.png")
            default:
                image = UIImage(named: "doggo.png")
        }
        return image
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
    
    var myVar: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(myVar)
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

extension myTableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let image = self.imageFilter(index: indexPath.row)
        let textField = "Row \(indexPath.row+1)"
        let buttonText = "Button \(indexPath.row+1)"
        let progressViewFloat = Float(indexPath.row)/30
        let vc = DetailViewController(details: (image: image, buttonText: buttonText, labelText: textField, progressView: progressViewFloat))
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
