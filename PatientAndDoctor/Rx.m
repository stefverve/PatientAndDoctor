//
//  Rx.m
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Rx.h"

@implementation Rx

- (instancetype)initWithPatient:(NSString*)patientName
                         doctor:(NSString*)doctorName
                        medName:(NSString*)medName {
    self = [super init];
    if (self) {
        _patient = patientName;
        _doctor = doctorName;
        _medName = medName;
    }
    return self;
}

@end
