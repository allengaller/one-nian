//
//  dictionary.m
//  funMining
//
//  Created by Xingliang Yuan on 7/21/12.
//

#include "dictionary.h"

@implementation dictionary

-(void) init_dictionary
{
    op0 = @"加减";
    op0_sym = @"+-";
    
    op1 = @"等乘除";
    op1_sym= @"=*/";
    
    op2 = @"平立";
    op2_sym =@"^2^3";
    
    op3 = @"和差";
    
    op4 = @"分";
    op4_sym = @"/";
    
    op5 = @"次";
    op5_sym = @"^";
    
    sd = @"一二三四五六七八九";
    sd_sym = @"123456789";
    
    parameter = @"xyzXYZ";
}

@end