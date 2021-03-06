//
//  OCHamcrest - HCStringEndsWith.mm
//  Copyright 2012 hamcrest.org. See LICENSE.txt
//
//  Created by: Jon Reid
//

#import "HCStringEndsWith.h"

#import "HCDescription.h"


@implementation HCStringEndsWith

+ (id)stringEndsWith:(NSString *)aString
{
    return [[[self alloc] initWithSubstring:aString] autorelease];
}

- (BOOL)matches:(id)item
{
    if (![item respondsToSelector:@selector(hasSuffix:)])
        return NO;
    
    return [item hasSuffix:substring];
}

- (NSString *)relationship
{
    return @"ending with";
}

@end


#pragma mark -

OBJC_EXPORT id<HCMatcher> HC_endsWith(NSString *aString)
{
    return [HCStringEndsWith stringEndsWith:aString];
}
