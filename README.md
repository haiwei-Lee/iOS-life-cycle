# iOS-life-cycle
探索iOS启动APP，退出后台（锁屏，按home键，双击），重新点击进入APP，viewController push present的时候的生命周期的执行先后顺序


1.启动APP

  --application:didFinishLaunchingWithOptions:
    --viewDidLoad
      --viewWillAppear:
        --viewWillLayoutSubviews
          --viewDidLayoutSubviews
            --viewDidAppear:
              --applicationDidBecomeActive:
              
  APP加载->根视图加载->APP处于活跃
  
2.点击home键，APP进入后台

  --applicationWillResignActive:
    --applicationDidEnterBackground:
   
   APP将要不活跃->APP进入后台 （根视图不参与其中）
   
   
3.点击APP桌面图标，使APP进入前台

   --applicationWillEnterForeground:
    -- applicationDidBecomeActive:
    
  APP将要进入前台->APP处于活跃 （根视图不参与其中）
  
4.APP锁屏 （同2）

  --applicationWillResignActive:
    --applicationDidEnterBackground:
    
5.APP解锁（同3）

  --applicationWillEnterForeground:
    --applicationDidBecomeActive:
    
6.双击Home键，APP进入卡片列表

  --applicationWillResignActive:
  APP进入不活跃状态

7.杀死程序

  --applicationWillResignActive:
    --applicationDidEnterBackground:
      --applicationWillTerminate

  APP将不活跃->APP进入后台->APP将要销毁

8.APP从卡片状态，恢复

  --applicationDidBecomeActive:

  APP将要活跃

9.APP从卡片状态，切换到别的APP

  --applicationDidEnterBackground:

  APP进入后台


---------------------------------------------------------

viewController 之间的跳转

1.vc1 present (push) vc2

  按钮点击跳转，执行present

  --vc2-- viewDidLoad
  
    --v1-- viewWillDisappear:
    
      --v2-- viewWillAppear:
      
        --v2-- viewWillLayoutSubviews
        
          --v2-- viewDidLayoutSubviews
          
            --v2-- viewDidAppear:
            
              --v1-- viewDidDisappear:
              
                --v1-- present completion
                /*---------------------------------
                [self presentViewController:[LhwTestViewController new] animated:YES completion:^{
       
        NSLog(@"present completion");
    }];//
    -------------------------------------------------*/

2.vc2 dismiss (pop) vc1

  --v2-- viewWillDisappear:
  
    --v1-- viewWillAppear:
    
      --v1-- viewDidAppear:
      
       --v2-- viewDidDisappear:
       
        --v2-- dismiss completion

  //*------------------------------------------------------
  [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"dismiss completion");
    }];
  -----------------------------------------------------*/


  
