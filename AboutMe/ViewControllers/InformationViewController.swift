//
//  InformationViewController.swift
//  AboutMe
//
//  Created by kukushkin-ds on 25.06.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    
   
    @IBOutlet var hobbiesLabels: [UILabel]!
    
    var user: User!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(user.person.name) \(user.person.surname)"
        backgroundImage.image = UIImage(named: "background")
        cityLabel.text = user.person.info.city
        
        for label in hobbiesLabels {
            label.text = user.person.info.hobbies[label.tag]
        }

    }
    
    override func viewWillLayoutSubviews() {
        profileImage.image = UIImage(named: user.person.profileImage)
        profileImage.layer.cornerRadius = profileImage.bounds.width / 2
        profileImage.layer.borderColor = UIColor.orange.cgColor
        profileImage.layer.borderWidth = 0.5
    }
    
    internal override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInformationVC = segue.destination as? MoreInformationViewController else { return }
        moreInformationVC.user = user
    }
    

}
