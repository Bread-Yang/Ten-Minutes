//
//  ChatMessage.m
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/4/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import "ChatMessage.h"

@implementation ChatMessage

-(void) setDict:(NSDictionary *) dict {
    self.content = dict[@"content"]; 
    self.messageType = [dict[@"type"] intValue];
}

@end
