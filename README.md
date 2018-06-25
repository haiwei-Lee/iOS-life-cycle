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


  
