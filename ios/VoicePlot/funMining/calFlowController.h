//
//  calFlowController.h
//  funMining
//
//  Created by Yuan Xingliang on 7/28/12.
//
//

#import <Foundation/Foundation.h>

@interface calFlowController : NSObject {
@public
    NSMutableArray* the_function_array;
    NSMutableArray* the_sub_operations;
@private
    double the_idx_a;
    double the_idx_b;
    double the_interval;
    NSMutableArray* x_coordinates;
}

/*
 @brief check whether there is operation or not in function_array
 */
-(bool) check_operation;

/*
 @brief implement add
 */
-(NSMutableArray*) add: (id) operand1 add:(id) operand2;

/*
 @brief implement sub
 */
-(NSMutableArray*) sub: (id) operand1 sub:(id) operand2;

/*
 @brief implement mul
 */
-(NSMutableArray*) mul: (id) operand1 mul:(id) operand2;

/*
 @brief implement divde
 */
-(NSMutableArray*) div: (id) operand1 div:(id) operand2;

/*
 @brief implement exp
 */
-(NSMutableArray*) exp: (id) operand1 exp:(id) operand2;

/*
 @brief replace operation string by subOperation object in target_array Range
 */
-(void) replace:(NSMutableArray*) target_array
                  inRange:(NSRange) range by:(NSMutableArray*) y_cds;

/*
 @brief extract one operation from sub operations and calculate it
 */
-(bool) do_operation;

/*
 @brief input the string equation, obtain the arithmetic flow and output x y array
 */
-(NSMutableArray*) cal_flow: (NSMutableArray*) fun_array from: (double) idx_a
                         to:(double) idx_b interval:(double) interval;

@end
