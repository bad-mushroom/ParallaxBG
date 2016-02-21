//
//  ParallaxBGDelegate.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.

import SpriteKit

@objc protocol ParallaxDelegate
{
    var parallaxSprites: [ParallaxSprite] { get set }
    
    func addParallaxSprite(textureName: String, duration: Double, size: CGSize, zIndex: CGFloat)
    
    optional func removeParallaxSprite(ps: ParallaxSprite)
    optional func startParallaxScrolling()
    optional func stopParallaxScrolling()
}
