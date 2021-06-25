//
//  ViewController.swift
//  NavigateToVc
//
//  Created by Macbook on 25/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func BtnPressed(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.nameTxt = nameTxt.text
        secondVC.phoneTxt = phoneTxt.text
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    

}

