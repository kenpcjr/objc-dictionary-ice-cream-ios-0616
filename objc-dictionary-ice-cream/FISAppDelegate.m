//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *iceCreamPrefs = @{@"Joe" : @"Peanut Butter and Chocolate",
                                    @"Tim" : @"Natural Vanilla",
                                    @"Sophie" : @"Mexican Chocolate",
                                    @"Deniz" : @"Natural Vanilla",
                                    @"Tom" : @"Mexican Chocolate",
                                    @"Jim" : @"Natural Vanilla",
                                    @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *prefMatches = [[NSMutableArray alloc]init];
    for (NSString *key in iceCreamPrefs) {
        if ([iceCreamPrefs[key] isEqualToString:iceCream]) {
            [prefMatches addObject:key]; }
    }
    return prefMatches;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc]init];
    for (NSString *key in iceCreamByName) {
        NSArray *names = [self namesForIceCream: iceCreamByName[key]];
        NSNumber *prefCount = @([names count]);
        NSString *iceCreamName = iceCreamByName[key];
        countsOfIceCream[iceCreamName] = prefCount;
    }
    return countsOfIceCream;
}


@end
