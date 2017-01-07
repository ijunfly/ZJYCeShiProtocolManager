//
//  ZJYProtocolManager.m
//  ZJYCeShiProtocolManager
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 JunFly. All rights reserved.
//

#import "ZJYCeShiProtocolManager.h"

@interface ZJYCeShiProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation ZJYCeShiProtocolManager

+ (ZJYCeShiProtocolManager *)sharedInstance
{
    static ZJYCeShiProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}



@end
