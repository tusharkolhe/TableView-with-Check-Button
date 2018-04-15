//
//  ViewController.h
//  TKTableViewWIthSelectionBtn
//
//  Created by Tushar Kolhe on 15/04/18.
//  Copyright © 2018 Tushar Kolhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain)NSMutableArray *users;
@property(nonatomic,retain)NSMutableArray *userId;
@property(nonatomic,retain)NSMutableArray *arrayOfSelectedIndex;
@property(nonatomic,retain)NSMutableString *showBtnStatus;


@end

