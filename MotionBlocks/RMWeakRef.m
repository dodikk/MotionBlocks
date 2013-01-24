#import "RMWeakRef.h"

@implementation RMWeakRef

-(id)init
{
    [ self doesNotRecognizeSelector: _cmd ];
    return nil;
}

-(id)initWithTarget:( id )impl_
{
    self = [ super init ];
    if ( nil == self )
    {
        return nil;
    }
    
    self->_target = impl_;
    
    return self;
}

+(id)refWithTarget:(id)target_
{
    return [ [ self alloc ] initWithTarget: target_ ];
}

@end
