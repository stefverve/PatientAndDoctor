//
//  main.m
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p = [[Patient alloc] initWithAge:31 name:@"Bob Dole" hasMedCard:TRUE symptoms:[NSMutableSet setWithArray:@[@"jaundice", @"rickets", @"headache"]]];
        Doctor *d = [[Doctor alloc] initWithName:@"Dr. Dolan" spec:@"Phlebotomist" patients:[NSMutableSet new]];
        [p visitDoctor:d];
    }
    return 0;
}
