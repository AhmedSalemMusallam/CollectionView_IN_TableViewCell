//
//  MyCollectionViewCell.swift
//  CollectionView_IN_TableViewCell
//
//  Created by Ahmed Salem on 27/12/2022.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var myLabel : UILabel!
    @IBOutlet var myImageView : UIImageView!
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib
    {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
   
    var models = [Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func configure(with model: Model)
    {
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
        self.myImageView.contentMode = .scaleAspectFit
    }

}

