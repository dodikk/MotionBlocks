#import <Foundation/Foundation.h>

@interface RMWeakRef : NSObject

-(id)initWithImpl:( id )impl_;

@property ( nonatomic, weak, readonly ) id impl;

@end
