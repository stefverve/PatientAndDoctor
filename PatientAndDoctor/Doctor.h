//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient, Rx, MedicalRecord;

@interface Doctor : NSObject

@property NSString * name;
@property NSString * spec;
@property NSMutableSet * patients;
@property NSDictionary * knowledge;

- (instancetype)initWithName:(NSString*)name
                        spec:(NSString*)spec
                    patients:(NSMutableSet*)patients;

- (NSString *)askPatientName:(Patient*)patient;
- (int)askPatientAge:(Patient*)patient;
- (NSMutableSet *)askSymptoms:(Patient*)patient;
- (void)acceptPatient:(Patient*)patient;
- (void)requestMedication:(Patient*)patient;

@end
