//
//  MRSEncounter.m
//  OpenMRS-iOS
//
//  Created by Parker Erway on 12/2/14.
//

#import "MRSEncounter.h"
#import "MRSHelperFunctions.h"

@implementation MRSEncounter

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        for (NSString *key in [MRSHelperFunctions allPropertyNames:self]) {
            if (![MRSHelperFunctions isNull:[aDecoder decodeObjectForKey:key]]) {
                [self setValue:[aDecoder decodeObjectForKey:key] forKey:key];
            }
        }
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    for (NSString *key in [MRSHelperFunctions allPropertyNames:self]) {
        if (![MRSHelperFunctions isNull:[self valueForKey:key]]) {
            [aCoder encodeObject:[self valueForKey:key] forKey:key];        }
    }
}

@end
