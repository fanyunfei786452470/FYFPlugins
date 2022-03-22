//
//  FYFPlugin100000.swift
//  FBSnapshotTestCase
//
//  Created by 范云飞 on 2022/3/22.
//

import UIKit
import FYFWebController

@objc(FYFPlugin100000)
open class FYFPlugin100000: FYFBasePlugin {

    //MARK: - KSJSInvokeNativeDelegate
    func serverInvoke(param: Any?) {
        print("i am 100000插件， 主要负责网络请求")
    }
}
