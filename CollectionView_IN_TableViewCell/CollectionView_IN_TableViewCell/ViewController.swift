//
//  ViewController.swift
//  CollectionView_IN_TableViewCell
//
//  Created by Ahmed Salem on 27/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "Image_1"))
        models.append(Model(text: "Second", imageName: "Image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "Image_4"))
        
        
        
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else { return UITableViewCell() }
        cell.configure(with: models)
        print(models.count)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}

struct Model {
    let text : String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

