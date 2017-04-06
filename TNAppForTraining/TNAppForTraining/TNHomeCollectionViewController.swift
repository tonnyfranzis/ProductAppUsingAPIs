//
//  TNHomeCollectionViewController.swift
//  TNAppForTraining
//
//  Created by Prasobh Veluthakkal on 10/01/17.
//  Copyright © 2017 Focaloid. All rights reserved.
//

import UIKit



class TNHomeCollectionViewController: UICollectionViewController {
    
    var  brandName : [String]?
    var brandXPrice : [String]?
    var brandCurrentPrice : [String]?
    var offRate : [String]?
    var brandedImageArray : [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        brandedImageArray = ["ic_brand1","ic_brand2","ic_brand3","ic_brand4"]
        brandName = ["John Players","Peter England","Raymond","Allen Solly"]
        brandXPrice = ["₹.5000","₹.2000","₹.3000","₹.8000"]
        brandCurrentPrice = ["₹.3500","₹.1500","₹.2500","₹.7000"]
        offRate = ["5% off","8% off","8% off","9% off",]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return (brandCurrentPrice?.count)!
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellCollection", forIndexPath: indexPath)as! TNHomeCollectionViewCell
        cell.brandNameLabel?.text = brandName![indexPath.row]
        cell.brandXPriceLAbel?.text = brandXPrice![indexPath.row]
        cell.brandCurrentPriceLabel?.text = brandCurrentPrice![indexPath.row]
        cell.offerLabel?.text = offRate![indexPath.row]
        cell.brandimage?.image = UIImage(named: brandedImageArray![indexPath.row])
        
    
        return cell
    }

    
}
