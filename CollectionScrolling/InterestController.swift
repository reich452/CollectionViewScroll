//
//  InterestController.swift
//  CollectionScrolling
//
//  Created by Nick Reichard on 3/23/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation
import UIKit

class IntrestController {
    
    static let shared = IntrestController()
    
    var interests: [Interest] = []
    
    
    static func createInterests() -> [Interest] {
        return [
            Interest(title: "Travel around the world", description: "Backpacing", featuredImage: #imageLiteral(resourceName: "nz1")),
            Interest(title: "I love traveling", description: "Hiking is awesome", featuredImage: #imageLiteral(resourceName: "nz2")),
            Interest(title: "Romace Stories", description: "New Zeland is my girl friend", featuredImage: #imageLiteral(resourceName: "nz3")),
            Interest(title: "I was on the North & South island", description: "both are awesome", featuredImage: #imageLiteral(resourceName: "nz7")),
            Interest(title: "I miss this place", description: "Ill be back", featuredImage: #imageLiteral(resourceName: "nz6")),
            Interest(title: "My amigo barton", description: "Barton", featuredImage: #imageLiteral(resourceName: "nz5"))
        ]
    }
    
}
