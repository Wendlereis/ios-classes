//
//  Pokemon.m
//  PokeApp
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 WendlerEis. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(Pokemon *) initWithNome:(NSString *)_Nome eTipo:(NSString *)_Tipo eCP:(int)_CP {
    self = [super init];
    
    if(self) {
        self.Nome = _Nome;
        self.Tipo = _Tipo;
        self.CP = _CP;
    }
    
    return self;
}

-(void) atacarInimigo:(Pokemon *)inimigo {
    NSLog(@"O Pokemon: %@ sofreu um ataque de %dCP do Pokemon: %@", inimigo.Nome, self.CP, self.Nome);
}

-(Pokemon *) evoluir:(NSString *)evolucao {
    NSLog(@"O Pokemon %@ evoluiu para %@", self.Nome, evolucao);
    
    self.Nome = evolucao;
    
    return self;
}

@end
