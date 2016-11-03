//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "MedicalRecord.h"
#import "Rx.h"

@implementation Doctor

- (instancetype)initWithName:(NSString*)name
                        spec:(NSString*)spec
                    patients:(NSMutableSet*)patients {
    self = [super init];
    if (self) {
        _name = name;
        _spec = spec;
        _patients = patients;
        _knowledge = @{@"jaundice": @"leeches", @"hiccups": @"BOO!", @"headache": @"noogies"};
    }
    return self;
}

- (NSString *)askPatientName:(Patient*)patient {
    return patient.name;
}

- (int)askPatientAge:(Patient*)patient {
    return patient.age;
}

- (NSMutableSet *)askSymptoms:(Patient*)patient {
    return patient.symptoms;
}

- (void)acceptPatient:(Patient*)patient {
    if (patient.hasMedCard) {
        [self.patients addObject:patient];
        NSLog(@"\nPatient %@ has been accepted by %@", patient.name, self.name);
    }
}

- (void)requestMedication:(Patient*)patient {
    if ([self.patients containsObject:patient]) {
        for (NSString *i in self.knowledge.allKeys) {
            if ([patient.symptoms containsObject:i]) {
                Rx *rx = [[Rx alloc] initWithPatient:patient.name doctor:self.name medName:self.knowledge[i]];
                [[MedicalRecord sharedMedicalRecord] addMedicalRecord:patient :rx];
                
            }
        }
        
    }
    [[MedicalRecord sharedMedicalRecord] printMedicalRecord:patient];
}

@end
