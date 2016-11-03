//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
#import "Rx.h"

@implementation Patient

- (instancetype)initWithAge:(int)age
                       name:(NSString*)name
                 hasMedCard:(BOOL)hasMedCard
                   symptoms:(NSMutableSet*)symptoms {
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
        _hasMedCard = hasMedCard;
        _symptoms = symptoms;
    }
    return self;
}

- (NSString*)askDoctorName:(Doctor*)doctor {
    return doctor.name;
}

- (NSString*)askDoctorSpec:(Doctor*)doctor {
    return doctor.spec;
}

- (void)visitDoctor:(Doctor*)doctor {
    [doctor acceptPatient:self];
    [doctor requestMedication:self];
}


@end
