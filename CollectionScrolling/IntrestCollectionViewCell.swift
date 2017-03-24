//
//  IntrestCollectionViewCell.swift
//  CollectionScrolling
//
//  Created by Nick Reichard on 3/23/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

class IntrestCollectionViewCell: UICollectionViewCell {
    
    var intrest: Interest? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Private
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var intrestTitleLabel: UILabel!
    
    func updateViews() {
        guard let intrest = intrest else { return }
        intrestTitleLabel.text = intrest.title
        featuredImageView.image = intrest.featuredImage
    }
}
