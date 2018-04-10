//
//  ViewController.swift
//  Exemplo Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Wendler Eis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAtleta: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtIMC: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCalcular(_ sender: Any) {
        let pessoa = Pessoa()
        pessoa.nome = txtAtleta.text
        pessoa.altura = Double(txtAltura.text!)
        pessoa.peso = Double(txtPeso.text!)
        
        pessoa.calcularIMC()
        
        txtIMC.text = "\(pessoa.imc)"
    }
}
