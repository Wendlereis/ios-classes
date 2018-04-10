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
}
