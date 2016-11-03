//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Stefan Verveniotis on 2016-11-03.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor, Rx;

@interface Patient : NSObject

@property int age;
@property NSString * name;
@property BOOL hasMedCard;
@property NSMutableSet * symptoms;

- (instancetype)initWithAge:(int)age
                       name:(NSString*)name
                 hasMedCard:(BOOL)hasMedCard
                   symptoms:(NSMutableSet*)symptoms;

- (NSString*)askDoctorName:(Doctor*)doctor;
- (NSString*)askDoctorSpec:(Doctor*)doctor;
- (void)visitDoctor:(Doctor*)doctor;

@end
