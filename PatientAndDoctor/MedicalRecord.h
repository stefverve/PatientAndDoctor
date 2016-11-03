//
//  MedicalRecord.h
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Rx.h"

@interface MedicalRecord : NSObject 

+ (id)sharedMedicalRecord;

- (BOOL)checkMedicalRecord:(Patient*)patient
                          :(Rx*)rx;
- (void)addMedicalRecord:(Patient*)patient
                        :(Rx*)rx;
- (void)printMedicalRecord:(Patient*)patient;

@end
