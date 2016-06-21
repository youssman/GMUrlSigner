//
//  GMUrlSigner.h
//  GMUrlSigner
//
//  Created by youssman on 23/03/2015.
//  Copyright (c) 2015. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GMUrlSigner : NSObject
- (NSString *) signUrl:(NSString *) url withThisKey:(NSString*) key;
@end
