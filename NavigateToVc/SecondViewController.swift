//
//  SecondViewController.swift
//  NavigateToVc
//
//  Created by Macbook on 25/06/2021.
//

import UIKit

class SecondViewController: UIViewController {
    var nameTxt:String? = nil
    var phoneTxt:String? = nil

    @IBOutlet weak var phonelbl: UILabel!
    @IBOutlet weak var namelbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        namelbl.text = nameTxt
        phonelbl.text = phoneTxt
        
        
    }
    
    @IBAction func backHomeTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func MoveThird(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
}
