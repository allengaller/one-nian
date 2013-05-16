//
//  funMiningControllerController.h
//  funMiningController
//
//  Created by Xingliang Yuan on 7/18/12.
//

#ifndef funMiningController_h
#define funMiningController_h

#import <Foundation/NSString.h>
#import "dictionary.h"

@interface funMiningController : NSObject {
@public
    NSMutableArray* the_function_array;
@private
    NSString* the_source_string;
}

-(void) init_strings: (NSString*) source_string;

/*
 @brief scan text string, transform text to number equation
 */
-(bool) para_scan: (NSString*) target para_dty: (NSString*) parameter; 

-(bool) op0_scan: (NSString*) target op0_dty: (NSString*) op0 
                    op0_sym: (NSString*) op0_sym; 

-(bool) op1_scan: (NSString*) target op1_dty: (NSString*) op1
                    op1_sym: (NSString*) op1_sym; 

-(bool) op2_scan: (NSString*) target op2_dty: (NSString*) op2
                    op2_sym: (NSString*) op2_sym; 

-(bool) op3_scan: (NSString*) target op3_dty: (NSString*) op3
                    op1_sym: (NSString*) op1_sym; 

-(bool) op4_scan: (NSString*) target op4_dty: (NSString*) op4
                    op4_sym: (NSString*) op4_sym; 

-(bool) sd_scan: (NSString*) target sd_dty: (NSString*) sd
                    sd_sym: (NSString*) sd_sym; 

/*
 @brief output math equation string based on segmentation: 
 handle operation priority
 */
-(NSMutableArray*) fun_mining: (NSString*) source;

@end

#endif
