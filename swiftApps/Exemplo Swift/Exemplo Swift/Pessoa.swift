//
//  Pessoa.swift
//  Exemplo Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Wendler Eis. All rights reserved.
//

import Foundation

class Pessoa {
    var nome:String!
    var peso:Double!
    var altura:Double!
    var imc:Double!
    
    init() { }
    
    init(nome:String, peso:Double) { }
    
    //void
    func calcularIMC() {
        imc = peso / (altura * altura)
    }
    
    //return double
    //func calcularIMC() -> Double {
    //    return peso / altura * altura
    //}
}
