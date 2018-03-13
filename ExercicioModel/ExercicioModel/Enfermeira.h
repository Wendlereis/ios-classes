//
//  Enfermeira.h
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 WendlerEis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject

//Criando GET/SETS
@property(nonatomic, retain) NSString *Nome;
@property(nonatomic) int Coren;
@property(nonatomic) float Salario;
@property(nonatomic) bool Plantao;

//Definicao do metodo que retorna String e passagem de dois parametros
-(NSString *) verificaFebre:(NSString *) nome eTemperatura:(float) temperatura;

//Definicao de metodo void com passagem de 2 parametros
-(void) medicarComQuantidade:(int) quantidade eNomeRemedio:(NSString *) remedio;

//Definicao do construtor da classe Enfermeira
-(Enfermeira *) initWithNone:(NSString *) _Nome
                      eCoren:(int) _Coren
                    eSalario:(float) _Salario
                    ePlantao:(bool) _Plantao;
@end
