//
//  ParallaxSprite.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.
//  Copyright © 2016 2DSquirrel. All rights reserved.
//

import SpriteKit

class ParallaxSprite: SKSpriteNode
{
    var parallaxSpeed: Double = 0.0
    var scrollDirection: Int = -1
    
    required init(coder: NSCoder)
    {
        fatalError("NSCoding not supported")
    }
    
    init(textureName: String, speed: Double, size: CGSize)
    {
        let texture = SKTexture(imageNamed: textureName)
        
        super.init(texture: texture, color: SKColor.clearColor(), size: size)
        
        parallaxSpeed = speed
        name = textureName
        position = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame))
        
        if (parallaxSpeed == 0.0) {
            zPosition = -1
        }
    }
    
    func update()
    {
        if (parallaxSpeed > 0) {
            if (scrollDirection >= 0) {
                position.x += CGFloat(parallaxSpeed);
            } else {
                position.x -= CGFloat(parallaxSpeed);
            }

        }
    }
}
