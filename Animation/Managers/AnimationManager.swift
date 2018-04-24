//
//  AnimationManager.swift
//  Animation
//
//  Created by Kshitij Suthar on 2018-04-23.
//  Copyright © 2018 Kshitij Suthar. All rights reserved.
//
import CoreGraphics
import UIKit

class AnimationManager {
    
    class var ScreenBounds: CGRect {
        return UIScreen.main.bounds
    }
    
    class var Top:CGPoint {
        return CGPoint(x: ScreenBounds.midX, y: ScreenBounds.minY)
    }
    
    class var Right:CGPoint {
        return CGPoint(x: 10.0, y: 10.0)
    }
    
    class var Bottom:CGPoint {
        return CGPoint(x: 10.0, y: 10.0)
    }
    
    class var Left:CGPoint {
        return CGPoint(x: 10.0, y: 10.0)
    }
}
