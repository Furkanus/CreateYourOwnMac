//
//  ViewController.swift
//  CreateYourOwnMac
//
//  Created by Furkan Hanci on 11/9/20.
//

import UIKit
class ViewController: UIViewController {
    let button = UIButton()
    
    @IBOutlet var MacProLbl: UIView!
    @IBOutlet weak var MacProButton: UIButton!
    @IBOutlet weak var MacMiniLbl: UILabel!
    @IBOutlet weak var MacMiniButton: UIButton!
    @IBOutlet weak var MacbookAirLbl: UILabel!
    @IBOutlet weak var MacbookAirButton: UIButton!
    @IBOutlet weak var MacbookProLbl: UILabel!
    @IBOutlet weak var iMacLbl: UILabel!
    @IBOutlet weak var MacBookProButton: UIButton!
    @IBOutlet weak var iMacButton: UIButton!
    @IBOutlet weak var welcomeLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iMacButton.layer.borderWidth = 2.0
        iMacButton.layer.masksToBounds = false
        iMacButton.layer.borderColor = UIColor.blue.cgColor
       // iMacButton.layer.cornerRadius = image.frame.size.width / 2
        iMacButton.layer.cornerRadius = iMacButton.frame.width / 3
        iMacButton.clipsToBounds = true
        
        MacBookProButton.layer.borderWidth = 2.0
        MacBookProButton.layer.masksToBounds = false
        MacBookProButton.layer.borderColor = UIColor.blue.cgColor
        MacBookProButton.layer.cornerRadius = iMacButton.frame.width / 3
        MacBookProButton.clipsToBounds = true
        
        MacbookAirButton.layer.borderWidth = 2.0
        MacbookAirButton.layer.masksToBounds = false
        MacbookAirButton.layer.borderColor = UIColor.blue.cgColor
        MacbookAirButton.layer.cornerRadius = iMacButton.frame.width / 3
        MacbookAirButton.clipsToBounds = true
        
        
        MacMiniButton.layer.borderWidth = 2.0
        MacMiniButton.layer.masksToBounds = false
       MacMiniButton.layer.borderColor = UIColor.blue.cgColor
        MacMiniButton.layer.cornerRadius = iMacButton.frame.width / 3
        MacMiniButton.clipsToBounds = true
        
        
        MacProButton.layer.borderWidth = 2.0
        MacProButton.layer.masksToBounds = false
       MacProButton.layer.borderColor = UIColor.blue.cgColor
    MacProButton.layer.cornerRadius = iMacButton.frame.width / 3
        MacProButton.clipsToBounds = true
        
        
    }

    @IBAction func iMacAction(_ sender: UIButton) {
       performSegue(withIdentifier: "iMacVC", sender: nil)
    }
    @IBAction func MacbookProAction(_ sender: UIButton) {
        performSegue(withIdentifier: "macbookproVC", sender: nil)
        
    }
    @IBAction func MacbookAirAction(_ sender: UIButton) {
        performSegue(withIdentifier: "macbookairVC", sender: nil)
        
    }
    @IBAction func MacMiniAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "macminiVC", sender: nil)
        
    }
    @IBAction func MacProAction(_ sender: UIButton) {
        performSegue(withIdentifier: "macproVC", sender: nil)
        
    }
    
 
    
}

