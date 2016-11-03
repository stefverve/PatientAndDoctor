//
//  MedicalRecord.m
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "MedicalRecord.h"

@implementation MedicalRecord {
    NSMutableDictionary *medicalRecord;
}

#pragma mark - Singleton Methods

+ (id)sharedMedicalRecord{
    static MedicalRecord *sharedMedicalRecord = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMedicalRecord = [[self alloc] init];
    });
    return sharedMedicalRecord;
}

#pragma mark - Inits

- (instancetype)init {
    if (self = [super init]) {
        medicalRecord = [NSMutableDictionary new];
    }
    return self;
}

- (BOOL)checkMedicalRecord:(Patient*)patient
                          :(Rx*)rx {
    if (![medicalRecord.allKeys containsObject:patient]) {
        if (![medicalRecord[patient] containsObject:rx.medName]) {
            return FALSE;
        }
    }
    return TRUE;
}

- (void)addMedicalRecord:(Patient*)patient
                        :(Rx*)rx {
    if (![medicalRecord.allKeys containsObject:patient.name]) {
        [medicalRecord setValue:[NSMutableSet setWithObject:rx] forKey:patient.name];
    } else {
        [medicalRecord[patient.name] addObject:rx];
    }
}

- (void)printMedicalRecord:(Patient*)patient {
    NSMutableString *currentRecord = [[NSMutableString alloc] init];
    [currentRecord appendFormat:@"\nPatient: %@", patient.name];
    for (Rx *i in medicalRecord[patient.name]) {
        [currentRecord appendFormat:@"\n  Prescription given for %@", i.medName];
    }
    NSLog(@"%@",currentRecord);
}


@end
