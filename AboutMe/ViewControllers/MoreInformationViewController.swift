//
//  MoreInformationViewController.swift
//  AboutMe
//
//  Created by kukushkin-ds on 25.06.2022.
//

import UIKit

class MoreInformationViewController: UIViewController {

    
    @IBOutlet var favoriteAnimalLabel: UILabel!
    @IBOutlet var animalImage: UIImageView!

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalImage.image = UIImage(named: user.person.info.animalImage)
        favoriteAnimalLabel.text = user.person.info.favoriteAnimal
        
        }

}
