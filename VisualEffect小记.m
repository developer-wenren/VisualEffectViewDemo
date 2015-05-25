//
//  VisualEffect小记.m
//  
//
//  Created by zjsruxxxy3 on 15/5/25.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


使用步骤:

    1.创建一个 UIVisualEffectView,选择适合的虚拟效果,并且设置它的Position&Size

    2.在 "contentView" 属性上添加 想要显示在VisualEffectView上的子视图,如按钮，图片之类的。

    3.给自己选择合适自己的父视图,addSubview:VisualEffectView

探索:
    利用Reveal视图分析工具可以看出 "UIVisualEffectView" 有三个子视图：

//        UIVisualEffectBackdropView;
//        UIVisualEffectFilterView; (模糊作用的地方)
//        UIVisualEffectContentView;(子视图添加到地方)


注意点:

    1.任何子视图必须添加到 UIVisualEffectView 的contentView属性上,而不是直接 UIVisualEffectView addSubViews;

    2.使用 UIVisualEffectView 避免 设置透明度少于 1.0, 否则会使自己和父视图"显示不正常甚至不显示"。

    3.使用遮罩(Masks),可以为其效果视图的contentView上,但给其效果视图的父视图添加遮罩会使效果失去作用,并且"Crash".

    4.在使用VisualEffectView 使用快照时必须捕捉 整个屏幕或者窗口使得Effect可见。

