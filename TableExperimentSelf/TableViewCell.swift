//
//  TableViewCell.swift
//  TableExperimentSelf
//
//  Created by Jay Patel on 12/10/15.
//  Copyright © 2015 MEAMobile. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath) as! CollectionViewCell
        if indexPath.row%2 == 0 {
            cell.backgroundColor = UIColor.redColor()
        } else {
            cell.backgroundColor = UIColor.yellowColor()
        }
        cell.label.text = "\(indexPath.row)"
        return cell
    }

}
