//
//  funMiningController.m
//  funMiningController
//
//  Created by Xingliang Yuan on 7/18/12.
//

#include <stdio.h>

#import "funMiningController.h"

@implementation funMiningController

-(void) init_strings: (NSString*) source_string
{
    the_source_string = source_string;
    the_function_array = [[NSMutableArray alloc] init];
}

-(bool) para_scan: (NSString*) target para_dty: (NSString*) parameter
{
    NSRange range = [parameter rangeOfString:target];
    
    if (range.length !=0) {
        [the_function_array addObject:target];
        return true;
    }
    
    return false;
}

-(bool) op0_scan: (NSString*) target op0_dty: (NSString*) op0 
                    op0_sym: (NSString*) op0_sym
{
    NSRange range = [op0 rangeOfString:target];

    if (range.length !=0) {
        range = NSMakeRange(range.location, 1);  
        target = [op0_sym substringWithRange:range];
        [the_function_array addObject:target];
        return true;
    }
    
    return false;
}

-(bool) op1_scan: (NSString*) target op1_dty: (NSString*) op1
                    op1_sym: (NSString*) op1_sym 
{
    NSRange range = [op1 rangeOfString:target];
    
    if (range.length !=0) {
        range = NSMakeRange(range.location, 1);  
        target = [op1_sym substringWithRange:range];
        [the_function_array addObject:target];
        return true;
    }
    
    return false;
}

-(bool) op2_scan: (NSString*) target op2_dty: (NSString*) op2
                    op2_sym: (NSString*) op2_sym
{
    NSRange range = [op2 rangeOfString:target];
    
    if (range.length !=0) {
        range = NSMakeRange(range.location, 2);
        target = [op2_sym substringWithRange:range];
        [the_function_array addObject:target];
        return true;
    }
    
    return false;
}

-(bool) op3_scan: (NSString*) target op3_dty: (NSString*) op3
                    op1_sym: (NSString*) op1_sym 
{
    NSRange range = [op3 rangeOfString:target];
    
    if (range.length !=0) {
        //insert right_bracket
        [the_function_array addObject:@")"];
        
        //look through op1_sym to insert left bracket
        for (int i = [the_function_array count] - 1; i > 0; i --) {
            target = [the_function_array objectAtIndex:i]; 
            range = [op1_sym rangeOfString:target];
            if (range.length != 0) {
                [the_function_array insertObject:@"(" atIndex:i + 1];
                return true;
            }
        }
    }
    
    return false;
}

-(bool) op4_scan: (NSString*) target op4_dty: (NSString*) op4
                    op4_sym: (NSString*) op4_sym; 
{
    return false;
}

-(bool) sd_scan: (NSString*) target sd_dty: (NSString*) sd
                    sd_sym: (NSString*) sd_sym; 
{
    NSRange range = [sd rangeOfString:target];
    
    if (range.length !=0) {
        range = NSMakeRange(range.location, 1);
        target = [sd_sym substringWithRange:range];
        [the_function_array addObject:target];
        return true;
    }
    
    return false;
}

/*
 @brief output math equation string based on segmentation: 
 handle operation priority
 */
-(NSMutableArray*) fun_mining:(NSString*)source
{
    dictionary *dty_obj =[[dictionary alloc] init];
    [dty_obj init_dictionary];
    
    [self init_strings:source];
    int length = [the_source_string length];
    
    for (int i = 0; i < length; i ++) {
        NSRange rang = NSMakeRange(i, 1);  
        NSString * target = [the_source_string substringWithRange:rang];  
        
        if([self para_scan:target para_dty:dty_obj->parameter]) {
            continue;
        }
        
        if([self op0_scan:target op0_dty:dty_obj->op0 op0_sym:dty_obj->op0_sym]) {
            continue;
        }
        
        if([self op1_scan:target op1_dty:dty_obj->op1 op1_sym:dty_obj->op1_sym]) {
            continue;
        }
        
        if([self op2_scan:target op2_dty:dty_obj->op2 op2_sym:dty_obj->op2_sym]) {
            continue;
        }
        
        if([self op3_scan:target op3_dty:dty_obj->op3 op1_sym:dty_obj->op1_sym]) {
            continue;
        }
        
        if([self sd_scan:target sd_dty:dty_obj->sd sd_sym:dty_obj->sd_sym]) {
            continue;
        }

    }
    
    return the_function_array;
}

@end


