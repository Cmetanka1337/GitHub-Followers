//
//  Constants.swift
//  GHFollowers
//
//  Created by Всеволод Буртик on 16.07.2024.
//

import Foundation
import UIKit

enum SFSymbols {
    static let location = UIImage(systemName: "mappin.and.ellipse")
    static let repos = UIImage(systemName: "folder")
    static let gists = UIImage(systemName: "text.alignleft")
    static let followers = UIImage(systemName: "heart")
    static let following = UIImage(systemName: "person.2")
}

enum Images {
    static let placeholder = UIImage(named: "avatar-placeholder")
    static let imageLogo = UIImage(named: "gh-logo")
    static let emptystateLogo = UIImage(named: "empty-state-logo")
}

enum  ScreenSize {
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
    static let maxLength = max(ScreenSize.width,ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceType {
    static let idiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale = UIScreen.main.nativeScale
    static let scale = UIScreen.main.scale
    
    static let isiPhoneSE = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standart = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoom = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhon8PlusStandart = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoom = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhoneX = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXar = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad = idiom == .phone && ScreenSize.maxLength >= 1024.0
    
    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXar
    }
}
