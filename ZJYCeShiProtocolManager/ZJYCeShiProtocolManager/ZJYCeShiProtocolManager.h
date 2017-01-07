//
//  ZJYProtocolManager.h
//  ZJYCeShiProtocolManager
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 JunFly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJYCeShiProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
