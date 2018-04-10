//
//  ViewController.swift
//  EscondeExibe
//
//  Created by Usuário Convidado on 26/02/2018.
//  Copyright © 2018 Wendler Eis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func esconderView(_ sender: Any) {
        UIView.beginAnimations(nil, context: nil)
        myView.alpha = 0
        UIView.commitAnimations()
    }
    
    @IBAction func exibirView(_ sender: Any) {
        UIView.beginAnimations(nil, context: nil)
        myView.alpha = 1
        UIView.commitAnimations()
    }
    
    @IBOutlet weak var myView: UIView!
}
