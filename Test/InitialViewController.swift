//
//  InitialViewController.swift
//  Test
//
//  Created by Bruno Scheltzke on 05/11/19.
//  Copyright © 2019 Bruno Scheltzke. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
}

class BaseViewController: UIViewController {
    
    let expandBelowTransparentTabBar: Bool
    let shouldDisplayCoins: Bool
    
    init(expandBelowTransparentTabBar: Bool,
         shouldDisplayCoins: Bool) {
        self.shouldDisplayCoins = shouldDisplayCoins
        self.expandBelowTransparentTabBar = expandBelowTransparentTabBar
        super.init(nibName: "BaseViewController", bundle: nil)
    }
    
    convenience init() {
        self.init(expandBelowTransparentTabBar: false, shouldDisplayCoins: true)
    }
    
    required init?(coder: NSCoder) {
        expandBelowTransparentTabBar = false
        shouldDisplayCoins = true
        super.init(coder: coder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if expandBelowTransparentTabBar {
            tabBarController?.tabBar.backgroundImage = UIImage()
            tabBarController?.tabBar.shadowImage = UIImage()
            tabBarController?.tabBar.barTintColor = .clear
        } else {
            tabBarController?.tabBar.barTintColor = .yellow
        }
    }
    
}
