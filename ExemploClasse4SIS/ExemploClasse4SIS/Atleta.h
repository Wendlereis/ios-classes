//
//  Atleta.h
//  ExemploClasse4SIS
//
//  Created by Usuário Convidado on 26/02/2018.
//  Copyright © 2018 Wendler Eis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atleta : NSObject {
    NSString *nome;
    int idade;
}

-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;

-(void)setIdade:(int)_idade;
-(int)getIdade;

@end
