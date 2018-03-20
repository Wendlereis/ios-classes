//
//  main.m
//  PokeApp
//
//  Created by Usuário Convidado on 19/03/2018.
//  Copyright © 2018 WendlerEis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" eTipo:@"Water" eCP:50];
        Pokemon *charmander = [[Pokemon alloc]initWithNome:@"Charmander" eTipo:@"Fire" eCP:60];
        
        NSLog(@"My very first pokemon: %@, %@, %d", squirtle.Nome, squirtle.Tipo, squirtle.CP);
        
        [charmander atacarInimigo:squirtle];
        
        [charmander evoluir:@"Chameleon"];
        NSLog(@"Meu pokemon evoluido: %@", charmander.Nome);
        
        [charmander atacarInimigo:squirtle];
    }
    return 0;
}
