//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.titleLabel!.text! {
            case "Finn":
                self.updateViews(with: finn)
            case "Jake":
                self.updateViews(with: jake)
            case "Bubblegum":
                self.updateViews(with: bubblegum)
            case "BMO":
                self.updateViews(with: bmo)
            case "Lemongrab":
                self.updateViews(with: lemongrab)
            case "LSP":
                self.updateViews(with: lsp)
            default:
                break
        }
    }
    
    func createAllCharacters() {
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Best Animal Friend", powerLevel: 90.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Human", occupation: "Princess", powerLevel: 100.0)
        lemongrab = Character(name: "Lemongrab", species: "Lemon", occupation: "Lemon", powerLevel: 30.0)
        bmo = Character(name: "BMO", species: "Robot", occupation: "Human Companion", powerLevel: 60.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Magical Princess", occupation: "Princess", powerLevel: 100.0)
    }
    
    func updateViews(with character: Character) {
        self.characterImageView.image = character.displayImage()
        self.nameLabel.text = character.name
        self.occupationLabel.text = character.occupation
        self.speciesLabel.text = character.species
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
        
    }

  
    
    
   

}

