//
//  ChatMessage.h
//  Ten-minutes-IOS
//
//  Created by yoghourt on 10/4/14.
//  Copyright (c) 2014 genio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatMessage : NSObject

typedef enum {
    MessageFrom,
    MessageTo
}ChatMessageType;

@property (nonatomic,assign) ChatMessageType messageType;
@property (nonatomic, copy) NSString *content;

@end
