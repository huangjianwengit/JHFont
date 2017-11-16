//
//  UILabel+Font.m
//  JHFont
//
//  Created by Jivan on 2017/11/16.
//  Copyright © 2017年 Jivan. All rights reserved.
//

#import "UILabel+Font.h"
#import <objc/runtime.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define scale  SCREEN_WIDTH / 320.0f //比例根据自己情况设置。


@implementation UILabel (Font)

+ (void)load{
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
    
    Method iwf = class_getInstanceMethod([self class], @selector(initWithFrame:));
    Method myIwf = class_getInstanceMethod([self class], @selector(myInitWithFrame:));
    method_exchangeImplementations(iwf, myIwf);
}

- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        //部分不像改变字体的 把tag值设置成333跳过
           CGFloat fontSize = self.font.pointSize;
        if(self.tag != 333){
         
            self.font = [UIFont systemFontOfSize:scale*(fontSize)];
        }else{
             self.font = [UIFont systemFontOfSize:fontSize];
        }
    }
    return self;
}


- (id)myInitWithFrame:(CGRect)frame
{
    [self myInitWithFrame:frame];
    
    if (self) {
        
        //部分不像改变字体的 把tag值设置成333跳过
        CGFloat fontSize = self.font.pointSize;
        if(self.tag != 333){
            
            self.font = [UIFont systemFontOfSize:scale*(fontSize)];
        }else{
            self.font = [UIFont systemFontOfSize:fontSize];
        }
    }
    return self;
    
    
}


@end
