//
//  TelaBoaNotaViewController.swift
//  NavController
//
//  Created by Usuário Convidado on 14/05/2018.
//  Copyright © 2018 weisCorp. All rights reserved.
//

import UIKit

class TelaBoaNotaViewController: UIViewController {

    @IBOutlet weak var lblNota: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        if sender.isOn {
            lblNota.text = "SIM"
        }
        else {
            lblNota.text = "NAO"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
