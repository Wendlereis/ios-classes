//
//  TelaDoisBotoesViewController.swift
//  NavController
//
//  Created by Usuário Convidado on 14/05/2018.
//  Copyright © 2018 weisCorp. All rights reserved.
//

import UIKit

class TelaDoisBotoesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AbrirMensagem(_ sender: Any) {
        let alerta = UIAlertController(title: "Aviso", message: "Maquina de Vencer", preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func AbrirTelaCode(_ sender: Any) {
        self.performSegue(withIdentifier: "abc", sender: nil)
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
