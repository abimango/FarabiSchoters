//
//  SettingsViewController.swift
//  Schoters
//
//  Created by Farabi Ramadhan Arief on 20/10/18.
//  Copyright © 2018 Farabi Ramadhan Arief. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBOutlet weak var personalizeHomePageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func personalizeHomePageButtonClicked(_ sender: Any) {
        var mainViewController = UIViewController()
        mainViewController = mainStoryBoard.instantiateViewController(withIdentifier: "MainViewController")
        self.present(mainViewController, animated: true, completion: nil)
    }

}
