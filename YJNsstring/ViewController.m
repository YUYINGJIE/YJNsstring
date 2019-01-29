//
//  ViewController.m
//  YJNsstring
//
//  Created by huahaniOSCode on 2019/1/29.
//  Copyright © 2019年 YJ. All rights reserved.
//

#import "ViewController.h"
#import "YJNSStringCategory/NSString+YJCategory.h"
@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *Onelable;
@property (weak, nonatomic) IBOutlet UILabel *twolable;
@property (weak, nonatomic) IBOutlet UITextField *textfieldone;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int a = 1;
    // 小例子  1---->>01    1----->>001 时钟秒表  很方便 相信大家都知道,不知道的就总结一下
    NSString*str = [NSString stringWithFormat:@"%02d",a];
    _textfieldone.delegate = self;
    NSLog(@"%@",str);
}

//
- (IBAction)BtnoneClick:(id)sender {
   NSString*str1 =[NSString YJ_substring:_Onelable.text ToIndex:2];
    NSLog(@"截取掉下标2之前的字符串------:%@",str1);
}

- (IBAction)BtnTwoClick:(id)sender {
    
  NSString*str2 = [NSString YJ_substring:_Onelable.text FromIndex:4];
    NSLog(@"截取掉下标4之后的字符串------:%@",str2);
    
}

- (IBAction)BtnthreeClick:(id)sender {
    
    NSString*str3= [NSString YJ_string:_Onelable.text rangeOfString:@"字符"];
    NSLog(@"匹配字符串------:%@",str3);
}

- (IBAction)BtnfourClick:(id)sender {
    
   NSArray*array1 =[NSString YJ_string:@"ds asda sd" componentsSeparatedByString:@"d"];
    NSLog(@"分割字符串------:%@",array1);

}
- (IBAction)BtnfiveClick:(id)sender{
    
    NSArray*array = @[@"2",@"a",@"1"];
    NSString* str5 =[NSString YJ_array:array componentsJoinedByString:@","];
    NSLog(@"字符串拼接------:%@",str5);

}

- (IBAction)BtnsixClick:(id)sender {
    
    NSMutableAttributedString * mutabstr = [NSString YJ_string:_Onelable.text setAttributedText:@"字符串" setColor:[UIColor redColor] setStringsize:12];
    [_Onelable setAttributedText:mutabstr];
    
}

- (IBAction)BtnseventhClick:(id)sender{
    NSString*str7 = [NSString YJ_string:_Onelable.text insertString:@"123" atIndex:2];
    _Onelable.text = str7;
    NSLog(@"字符串插入------:%@",str7);

}

- (IBAction)BtneighthClick:(id)sender{
    
     NSRange range={2,2};
    NSString*str8 = [NSString YJ_string:_Onelable.text replaceCharactersInRange:range withstring:@"测试一下"];
    _Onelable.text = str8;

    NSLog(@"字符覆盖------:%@",str8);
   

}


- (IBAction)BtnnineClick:(id)sender {
    
    NSString*str9 = [NSString YJ_uppercaseString:_twolable.text];
    _twolable.text = str9;
    NSLog(@"%@",str9);
    
}

- (IBAction)BtnTenClick:(id)sender{
    
    NSString*str10 = [NSString YJ_lowercaseString:_twolable.text];
    _twolable.text = str10;
    NSLog(@"%@",str10);
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSMutableString *futureString = [NSMutableString stringWithString:textField.text];
    [futureString insertString:string atIndex:range.location];
    NSInteger flag = 0;
    // 这个可以自定义,保留到小数点后两位,后几位都可以
    const NSInteger limited = 3;
    for (NSInteger i = futureString.length - 1; i >= 0; i--) {
        if ([futureString characterAtIndex:i] == '.') {
            // 如果大于了限制的就提示
            if (flag > limited) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"最多保留三位小数" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                [alert show];
                return NO;
            }
            break;
        }
        flag++;
    }
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

@end
