//
//  Pokemon.h
//  PokeApp
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 WendlerEis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject

@property (nonatomic, retain) NSString *Nome;
@property (nonatomic, retain) NSString *Tipo;
@property (nonatomic) int CP;

-(Pokemon *) initWithNome:(NSString *)_Nome
                    eTipo:(NSString *)_Tipo
                      eCP:(int)_CP;

-(void) atacarInimigo:(Pokemon *)inimigo;
-(Pokemon *) evoluir:(NSString *)evolucao;
@end
