//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by kukushkin-ds on 25.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
   
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let backgroundImage = UIImage(named: "backgroundImage") {
            view.backgroundColor = UIColor(patternImage: backgroundImage)
        }
        
        welcomeLabel.text = "Welcome, \(user.person.name)!"
    }
    
}
