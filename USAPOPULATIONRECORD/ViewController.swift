//
//  ViewController.swift
//  USAPOPULATIONRECORD
//
//  Created by Vikram Kunwar on 17/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet  weak var imageLogo : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        imageLogo.isHidden = true
        do
        {
            sleep(2)
        }
        let vc = storyboard?.instantiateViewController(withIdentifier: "YearVC") as! YearVC
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

