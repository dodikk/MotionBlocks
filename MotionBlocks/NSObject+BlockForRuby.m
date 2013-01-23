#import "NSObject+BlockForRuby.h"

@implementation NSObject (BlockForRuby)


#pragma mark -
#pragma mark return id
-(id)objc_BlockSend1:( id )arg_
{
    typedef id(^Block1)( id arg_ );
    
    Block1 block_ = (Block1)self;
    return block_( arg_ );
}

-(id)objc_BlockSend0
{
    typedef id(^Block0)();
    Block0 block_ = (Block0)self;
    return block_();
}

-(id)objc_BlockSend:( NSArray* )args_
{
    switch ( [ args_ count ] )
    {
        case 0:
            return [ self objc_BlockSend0 ];
            break;
        case 1:
            return [ self objc_BlockSend1: args_[0] ];
            break;
            
        default:
            NSAssert( NO, @"Too many arguments for the current implementation" );
            break;
    }

    return nil;
}

#pragma mark -
#pragma mark noreturn
-(void)objc_BlockSend1_Noreturn:( id )arg_
{
    typedef void(^Block1)( id arg_ );
    
    Block1 block_ = (Block1)self;
    block_( arg_ );
}

-(void)objc_BlockSend0_Noreturn
{
    typedef void(^Block0)();
    Block0 block_ = (Block0)self;
    block_();
}

-(void)objc_BlockSend_Noreturn:( NSArray* )args_
{
    switch ( [ args_ count ] )
    {
        case 0:
            [ self objc_BlockSend0_Noreturn ];
            break;
        case 1:
            [ self objc_BlockSend1_Noreturn: args_[0] ];
            break;
            
        default:
            NSAssert( NO, @"Too many arguments for the current implementation" );
            break;
    }
}

@end
