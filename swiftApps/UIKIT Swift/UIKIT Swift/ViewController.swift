//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Wendler Eis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var meuStepper: UIStepper!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKm: UILabel!
    @IBOutlet weak var lblRota: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            print("Você selecionou o 1º botao")
            break
        case 1:
            print("Você selecionou o 2º botao")
            break
        case 2:
            print("Você selecionou o \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
            break
        default:
            break
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = String(Int(meuStepper.value))
    }
    
    @IBAction func slideValueChanged(_ sender: UISlider) {
        lblKm.text = String(Int(sender.value))
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    @IBAction func btnSalvar(_ sender: Any) {
        var tipo: String
        var mensagem: String
        
        if (meuSegmento.selectedSegmentIndex >= 0) {
            tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
            mensagem = "O Veiculo \(tipo) do ano \(lblAno.text!) foi salvo com sucesso"
        }
        else {
            tipo = ""
            mensagem = "Antes de salvar escolha um veiculo"
        }
        
        let alerta = UIAlertController(
            title: "Atencao",
            message: mensagem,
            preferredStyle: UIAlertControllerStyle.alert
        )
        
        alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func informarRota(_ sender: UIButton) {
        let alerta = UIAlertController(
            title: "Forma para receber a rota",
            message: "Faca sua escolha",
            preferredStyle: UIAlertControllerStyle.actionSheet
        )
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertActionStyle.default,
            handler: {(sms) in self.lblRota.text = sms.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertActionStyle.default,
            handler: {(email) in self.lblRota.text = email.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertActionStyle.cancel,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
}
