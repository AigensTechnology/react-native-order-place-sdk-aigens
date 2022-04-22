//
//  RNOrderPlaceSdkAigens.swift
//  RNOrderPlaceSdkAigens
//
//  Created by 陈培爵 on 2022/4/22.
//
import Foundation
import OrderPlaceSdkPrd
import UIKit
@objc(RNOrderPlaceSdkAigens)
public class RNOrderPlaceSdkAigens: NSObject {

// @objc(addEvent:location:date:)
// func addEvent(_ name: String, location: String, date: NSNumber) -> Void {
//   // Date is ready to use!
// }

    @objc
    static public func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    
    @objc
    public func openByod() -> Void {
        let control = RCTPresentedViewController()
        let url = "http://google.com/"
        DispatchQueue.main.async {
            OrderPlace.openUrl(caller: control!, url: url, options: [:])
        }
        
    }
    
    
}
