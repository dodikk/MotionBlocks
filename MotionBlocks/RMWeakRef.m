#import "RMWeakRef.h"

@implementation RMWeakRef

-(id)init
{
    [ self doesNotRecognizeSelector: _cmd ];
    return nil;
}

-(id)initWithImpl:( id )impl_
{
    self = [ super init ];
    if ( nil == self )
    {
        return nil;
    }
    
    self->_impl = impl_;
    
    return self;
}

@end
