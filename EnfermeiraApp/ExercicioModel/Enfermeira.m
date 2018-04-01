//
//  Enfermeira.m
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 WendlerEis. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

-(Enfermeira *) initWithNone:(NSString *)_Nome eCoren:(int)_Coren eSalario:(float)_Salario ePlantao:(bool)_Plantao {
    self = [super init];
    
    if (self) {
        self.Nome = _Nome;
        self.Salario = _Salario;
        self.Coren = _Coren;
        self.Plantao = _Plantao;
    }
    
    return self;
}

-(void) medicarComQuantidade:(int)quantidade eNomeRemedio:(NSString *)remedio {
    NSLog(@"A enfermeira %@ medicou com %@ na qtd %d", self.Nome, remedio, quantidade);
}

-(NSString *) verificaFebre:(NSString *)nome eTemperatura:(float)temperatura {
    NSString *mensagem;
    
    if (temperatura > 36) {
        mensagem = [NSString stringWithFormat:@"O paciente %@ esta com febre", nome];
    }
    else {
        mensagem = [NSString stringWithFormat:@"O paciente %@ esta suave", nome];
    }
    
    return mensagem;
}

@end
