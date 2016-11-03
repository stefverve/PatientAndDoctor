//
//  Rx.h
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

@interface Rx : NSObject

@property NSString * patient;
@property NSString * doctor;
@property NSString * medName;

- (instancetype)initWithPatient:(NSString*)patientName
                         doctor:(NSString*)doctorName
                        medName:(NSString*)medName;

@end
