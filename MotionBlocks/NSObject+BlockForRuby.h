#import <Foundation/Foundation.h>

@interface NSObject (BlockForRuby)

-(id)objc_BlockSend:( NSArray* )args_;
-(void)objc_BlockSend_Noreturn:( NSArray* )args_;


typedef void(^Callback2)( id arg1, id arg2 );
-(void)block_ExecuteWithCallback2:( Callback2 )callback_;

@end
