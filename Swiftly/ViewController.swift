//
//  AppDelegate.swift
//  Swiftly
//
//  Created by khanh tran on 2014-06-05.
//  Copyright (c) 2014 ktran03. All rights reserved.
//

import UIKit


class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate
{
    var _items : NSMutableArray?
    @IBOutlet var _collectionView : UICollectionView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Swiftly"
        _items = NSMutableArray()
        _items?.addObject("cell1");
        _items?.addObject("cell2");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellID", forIndexPath: indexPath) as KTCollectionViewCell
        cell.aLabel.text = _items?.objectAtIndex(indexPath.row) as String
        return cell;
    }
    
    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return _items!.count
    }
    
    func collectionView(collectionView: UICollectionView!, didSelectItemAtIndexPath indexPath: NSIndexPath!) {
        //unused
    }
    
    
}

