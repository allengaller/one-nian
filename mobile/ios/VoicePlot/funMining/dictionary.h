//
//  dictionary.h
//  funMining
//
//  Created by Xingliang Yuan on 7/18/12.
//

#ifndef funMining_dictionary_h
#define funMining_dictionary_h

@interface dictionary : NSObject {
@public
    NSString* parameter;
    
    NSString* op0;
    NSString* op0_sym;
    
    NSString* op1;
    NSString* op1_sym;
    
    NSString* op2;
    NSString* op2_sym;
    
    NSString* op3;
    NSString* op3_sym;
    
    NSString* op4;
    NSString* op4_sym;
    
    NSString* op5;
    NSString* op5_sym;
    
    NSString* sd;
    NSString* sd_sym;
}

-(void) init_dictionary;

@end



#endif
