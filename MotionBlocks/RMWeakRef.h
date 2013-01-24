#import <Foundation/Foundation.h>

@interface RMWeakRef : NSObject

-(id)initWithTarget:( id )impl_;
+(id)refWithTarget:(id)target_;

@property ( nonatomic, weak, readonly ) id target;

@end
