//
//  main.m
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 WendlerEis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Iniciando objeto sem construtor
        Enfermeira *e = [[Enfermeira alloc]init];
        e.Nome = @"Ana";
        e.Coren = 123456;
        e.Salario = 4000;
        e.Plantao = YES;
        
        //Iniciando objeto com construtor
        Enfermeira *e2 = [[Enfermeira alloc] initWithNone:@"Wendler" eCoren:654321 eSalario:3000 ePlantao:NO];
        
        //Chamada de metodo
        [e medicarComQuantidade:2 eNomeRemedio:@"Dipirona"];
        
        //Log do retorno do metodo
        NSLog(@"%@", [e verificaFebre: e.Nome eTemperatura:38]);
        
        NSLog(@"%@", [e verificaFebre: e2.Nome eTemperatura:30]);
    }
    
    return 0;
}
