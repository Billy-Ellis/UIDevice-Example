#import "RootViewController.h"
#import <sys/utsname.h>

@implementation RootViewController

- (void)viewDidLoad{

[super viewDidLoad];

//created by Billy Ellis (@bellis1000)

//os version label

self.view.backgroundColor = [UIColor whiteColor];

UILabel *versionLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,10,100,50)];

versionLabel.text = [[UIDevice currentDevice]systemVersion];

[self.view addSubview:versionLabel];



//device hardware label

UILabel *deviceLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,60,100,50)];


struct utsname systemInfo;
uname(&systemInfo);

NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];

deviceLabel.text = deviceString;


[self.view addSubview:deviceLabel];

//device name

UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,110,100,50)];

nameLabel.text = [[UIDevice currentDevice]name];

[self.view addSubview:nameLabel];


     
}

@end
