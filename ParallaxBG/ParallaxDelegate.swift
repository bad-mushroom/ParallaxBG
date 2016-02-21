//
//  ParallaxBGDelegate.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.
//  Copyright © 2016 2DSquirrel. All rights reserved.
//

import SpriteKit

@objc protocol ParallaxDelegate
{
    var parallaxSprites: [ParallaxSprite] { get set }
    
    func addParallaxSprite(textureName: String, speed: Double, size: CGSize, zIndex: CGFloat)
    
    optional func removeParallaxSprite(ps: ParallaxSprite)
    optional func startParallaxScrolling()
    optional func stopParallaxScrolling()
}
