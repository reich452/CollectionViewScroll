//
//  HomeViewController.swift
//  CollectionScrolling
//
//  Created by Nick Reichard on 3/23/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    // MARK: - Outlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var currentUserProfileImageButton: UIButton!
    @IBOutlet weak var currentUserFullNameButton: UIButton!
    
    // MARK: - UICollectionViewDataSoure
    static var intrests = IntrestController.createInterests()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    struct Storyboard {
        static let CellIdentifier = "interestCell"
    }
}

extension HomeViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return IntrestController.shared.interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "interestCell", for: indexPath) as? IntrestCollectionViewCell else { return UICollectionViewCell() }
        
        let intrest = IntrestController.shared.interests[indexPath.row]
        cell.intrest = intrest
        
        return cell
    }
}
