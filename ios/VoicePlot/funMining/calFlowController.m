//
//  calFlowController.m
//  funMining
//
//  Created by Yuan Xingliang on 7/28/12.
//
//

#import "calFlowController.h"

@implementation calFlowController

/*
 @brief check whether there is operation or not
 */
-(bool) check_operation
{
    if ([the_function_array count] == 1 &&
        [[the_function_array objectAtIndex:0] isKindOfClass:[NSMutableArray class]]) {
        return true;
    }
    return false; //still has subOperations
}

-(NSMutableArray*) add: (id) operand1 add:(id) operand2
{
    double result = 0;
    NSMutableArray* temp = [NSMutableArray arrayWithObject :@"1"];
    
    // x + number
    if ([operand1 isKindOfClass:[NSMutableArray class]] &&
        ![operand2 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i ++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
                        + [operand2 doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    
    // number + x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             ![operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand2 count]; i++) {
            result = [[operand2 objectAtIndex:i] doubleValue]
                        + [operand1 doubleValue];
            [operand2 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand2;
    }
    
    // x + x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             [operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            + [[operand2 objectAtIndex:i] doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    return temp;
}

-(NSMutableArray*) sub: (id) operand1 sub:(id) operand2
{
    double result = 0;
    NSMutableArray* temp = [NSMutableArray arrayWithObject :@"1"];
    
    // x - number
    if ([operand1 isKindOfClass:[NSMutableArray class]] &&
        ![operand2 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i ++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            - [operand2 doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    
    // number - x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             ![operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand2 count]; i++) {
            result = [[operand2 objectAtIndex:i] doubleValue]
            - [operand1 doubleValue];
            [operand2 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand2;
    }
    
    // x - x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             [operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            - [[operand2 objectAtIndex:i] doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    return temp;
}

-(NSMutableArray*) mul: (id) operand1 mul:(id) operand2
{
    double result = 0;
    NSMutableArray* temp = [NSMutableArray arrayWithObject :@"1"];
    
    // x * number
    if ([operand1 isKindOfClass:[NSMutableArray class]] &&
        ![operand2 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i ++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            * [operand2 doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    
    // number * x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             ![operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand2 count]; i ++) {
            result = [[operand2 objectAtIndex:i] doubleValue]
            * [operand1 doubleValue];
            [operand2 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand2;
    }
    
    // x * x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             [operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i ++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            * [[operand2 objectAtIndex:i] doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    return temp;
}

-(NSMutableArray*) div: (id) operand1 div:(id) operand2
{
    double result = 0;
    NSMutableArray* temp = [NSMutableArray arrayWithObject :@"1"];
    
    // x / number
    if ([operand1 isKindOfClass:[NSMutableArray class]] &&
        ![operand2 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i ++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            / [operand2 doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    
    // number / x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             ![operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand2 count]; i++) {
            result = [[operand2 objectAtIndex:i] doubleValue]
            / [operand1 doubleValue];
            [operand2 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand2;
    }
    
    // x / x
    else if ([operand2 isKindOfClass:[NSMutableArray class]] &&
             [operand1 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i++) {
            result = [[operand1 objectAtIndex:i] doubleValue]
            / [[operand2 objectAtIndex:i] doubleValue];
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    return temp;
}

-(NSMutableArray*) exp: (id) operand1 exp:(id) operand2
{
    double result = 0;
    NSMutableArray* temp = [NSMutableArray arrayWithObject :@"1"];
    
    // x ^ number
    if ([operand1 isKindOfClass:[NSMutableArray class]] &&
        ![operand2 isKindOfClass:[NSMutableArray class]]) {
        for (int i = 0; i < [operand1 count]; i ++) {
            result = pow([[operand1 objectAtIndex:i] doubleValue], [operand2 doubleValue]);
            [operand1 replaceObjectAtIndex:i
                                withObject:[NSNumber numberWithDouble: result]];
        }
        return operand1;
    }
    
    return temp;
}

/*
 @brief replace operation string by subOperation object
 */
-(void) replace:(NSMutableArray*) target_array
                  inRange:(NSRange) range by:(NSMutableArray*) y_cds;
{
    [target_array replaceObjectsInRange:range withObjectsFromArray:y_cds];
}

/*
 @brief extract one operation from sub operations and calculate it
 */
-(bool) do_operation {
    
    //get an highest priority op
    NSInteger op_index = NSNotFound;
    
    //check exp
    op_index = [the_sub_operations indexOfObject: @"^"];
    if (op_index != NSNotFound) {
        //replace the operation by results
        [the_sub_operations replaceObjectAtIndex:op_index -1 withObject:
         [self exp:[the_sub_operations objectAtIndex:op_index -1]
               exp:[the_sub_operations objectAtIndex:op_index + 1]]];
        [the_sub_operations removeObjectAtIndex:op_index];
        [the_sub_operations removeObjectAtIndex:op_index];
        return true;
    }
    
    //check divide
    op_index = [the_sub_operations indexOfObject: @"/"];
    if (op_index != NSNotFound) {
        //replace the operation by results
        [the_sub_operations replaceObjectAtIndex:op_index -1 withObject:
         [self div:[the_sub_operations objectAtIndex:op_index -1]
               div:[the_sub_operations objectAtIndex:op_index + 1]]];
        [the_sub_operations removeObjectAtIndex:op_index];
        [the_sub_operations removeObjectAtIndex:op_index];
        return true;
    }
    
    //check mul
    op_index = [the_sub_operations indexOfObject: @"*"];
    if (op_index != NSNotFound) {
        //replace the operation by results
        [the_sub_operations replaceObjectAtIndex:op_index -1 withObject:
         [self mul:[the_sub_operations objectAtIndex:op_index -1]
               mul:[the_sub_operations objectAtIndex:op_index + 1]]];
        [the_sub_operations removeObjectAtIndex:op_index];
        [the_sub_operations removeObjectAtIndex:op_index];
        return true;
    }
    
    //check add
    op_index = [the_sub_operations indexOfObject: @"+"];
    if (op_index != NSNotFound) {
        //replace the operation by results
        [the_sub_operations replaceObjectAtIndex:op_index -1 withObject:
         [self add:[the_sub_operations objectAtIndex:op_index -1]
               add:[the_sub_operations objectAtIndex:op_index + 1]]];
        [the_sub_operations removeObjectAtIndex:op_index];
        [the_sub_operations removeObjectAtIndex:op_index];
        return true;
    }
    
    //check sub
    op_index = [the_sub_operations indexOfObject: @"-"];
    if (op_index != NSNotFound) {
        //replace the operation by results
        [the_sub_operations replaceObjectAtIndex:op_index -1 withObject:
         [self sub:[the_sub_operations objectAtIndex:op_index -1]
               sub:[the_sub_operations objectAtIndex:op_index + 1]]];
        [the_sub_operations removeObjectAtIndex:op_index];
        [the_sub_operations removeObjectAtIndex:op_index];
        return true;
    }
    
    return false;
}

/*
 @brief input the string equation, obtain the arithmetic flow and output x y array
 */
-(NSMutableArray*) cal_flow: (NSMutableArray*) fun_array from: (double) idx_a
                         to:(double) idx_b interval:(double) interval;
{
    /*
     The idea is to find x; do the operation closest to x and get the new x;
     */
    the_idx_a = idx_a;
    the_idx_b = idx_b;
    the_interval = interval;
    the_function_array = fun_array;
    
    //Initial x coordinates array
    the_sub_operations = [[NSMutableArray alloc] init];
    x_coordinates = [[NSMutableArray alloc] init];
    
    for (double i = the_idx_a; i <= the_idx_b; i = i + the_interval) {
        [x_coordinates addObject:[NSNumber numberWithDouble:i]]; //x
    }
    
    // Currently only support "y = ..."; Get sub_operations
    [the_function_array removeObjectAtIndex:0];
    [the_function_array removeObjectAtIndex:0];
    
    //replace x by y_coordinates array
    while ([the_function_array indexOfObject:@"x"] != NSNotFound) {
        NSMutableArray* x_ctd = [[NSMutableArray alloc] init];
        [x_ctd setArray:x_coordinates];
        [the_function_array replaceObjectAtIndex:
         [the_function_array indexOfObject:@"x"] withObject:x_ctd];
    }
    
    while(![self check_operation]) {
        //locate '(' in the_funtion_array;
        NSInteger bracket_idx = [the_function_array indexOfObject:@"("];
        
        if (bracket_idx == NSNotFound) {
            [the_sub_operations setArray:the_function_array];
            while ([self do_operation]) {
                ;
            }
            [the_function_array setArray:the_sub_operations];
        }
        else {
            //extract sub_operation within brackets from the_function_array
            NSInteger right_bracket_idx = [the_function_array indexOfObject:@")"];
            NSRange range = NSMakeRange(bracket_idx + 1, right_bracket_idx - bracket_idx - 1);
            
            // Get sub_operations;
            [the_sub_operations setArray:[the_function_array subarrayWithRange:range]];
            
            while ([self do_operation]) {
                ;
            }
            
            //replace sub_operations by result of operations in brackets
            for (int i = bracket_idx; i < right_bracket_idx; i++) {
                [the_function_array removeObjectAtIndex:bracket_idx];
            }
            
            NSMutableArray* temp = [[NSMutableArray alloc] init];
            temp = [the_sub_operations objectAtIndex:0];
            [the_function_array replaceObjectAtIndex:bracket_idx
                            withObject:temp];
        }
    }
    
    return [the_function_array objectAtIndex:0]; //y coordinates
}

@end
