//
//  UuBarTableViewCell.h
//  FinancialManagementAssistant
//
//  Created by MAXMFJ on 15/2/6.
//  Copyright (c) 2015年 Boxer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UUChart.h"
@interface UuBarTableViewCell : UITableViewCell<UUChartDataSource>
@property (nonatomic,strong)UILabel       *labOne;
@property (nonatomic,strong)UILabel       *labTwo;
@property (nonatomic,strong)UILabel       *labThree;
@property (nonatomic,strong)UILabel       *labFour;
@property (nonatomic,strong)UILabel       *labFive;
@property (nonatomic,strong)UILabel       *labSix;
@end
