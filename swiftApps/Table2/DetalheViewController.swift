//
//  DetalheViewController.swift
//  Table2
//
//  Created by Usuário Convidado on 20/08/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var lblNomeAnimal: UILabel!
    var nomeAnimal: String = ""
    
    @IBOutlet weak var lblPaisAnimal: UILabel!
    var paisAnimal = ""
    
    @IBOutlet weak var imgAnimal: UIImageView!
    var imagem: UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNomeAnimal.text = nomeAnimal
        lblPaisAnimal.text = paisAnimal
        imgAnimal.image = imagem
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
