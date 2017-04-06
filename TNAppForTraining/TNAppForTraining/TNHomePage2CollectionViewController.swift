//
//  TNHomePage2CollectionViewController.swift
//  TNAppForTraining
//
//  Created by Prasobh Veluthakkal on 11/01/17.
//  Copyright © 2017 Focaloid. All rights reserved.
//

import UIKit


class TNHomePage2CollectionViewController: UICollectionViewController {
    var  brandName : [String]?
    var brandXPrice : [String]?
    var brandCurrentPrice : [String]?
    var offRate : [String]?
    var descriptionArray : [String]?
    var brandedImageArray : [String]?
        override func viewDidLoad() {
        super.viewDidLoad()
        brandedImageArray = ["ic_brand1","ic_brand2","ic_brand3","ic_brand4"]
        brandName = ["John Players","Peter England","Raymond","Allen Solly"]
        brandXPrice = ["₹.5000","₹.2000","₹.3000","₹.8000"]
        brandCurrentPrice = ["₹.3500","₹.1500","₹.2500","₹.7000"]
        offRate = ["5% off","8% off","8% off","9% off",]
        descriptionArray = ["Flirt Black Party Wear Shirt","Rigo White Voyage Ship Tee-Full Sleeve","Redtape Teal Blue Raglan Sleeves Sweat Shirt",""]
        
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
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath)as! TNHomePage2CollectionViewCell
        cell.brandName?.text = brandName![indexPath.row]
        cell.brandXPriceLabel?.text = brandXPrice![indexPath.row]
        cell.brandPriceLabel?.text = brandCurrentPrice![indexPath.row]
        cell.offerRateLabel?.text = offRate![indexPath.row]
        cell.brandDescriptionLabel?.text = descriptionArray![indexPath.row]
        
        cell.brandImage2?.image = UIImage(named: brandedImageArray![indexPath.row])

            
        return cell
    }

    
}
