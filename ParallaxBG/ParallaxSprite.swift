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
    var scrollDirection: Int = 1
    
    required init(coder: NSCoder)
    {
        fatalError("NSCoding not supported")
    }
    
    init(textureName: String, speed: Double, size: CGSize, secondary: Int)
    {
        let texture = SKTexture(imageNamed: textureName)
    
        super.init(texture: texture, color: SKColor.clearColor(), size: size)
    
        parallaxSpeed = speed
        name = textureName

        // Force static background behind others
        if (parallaxSpeed == 0.0) {
            zPosition = -1
        }

        position = CGPointMake(self.size.width * CGFloat(secondary), CGRectGetMidY(frame))
    }

    func update(sceneRect: CGRect)
    {
        if (parallaxSpeed > 0) {
            
            // Scroll Right
            if (scrollDirection >= 0) {
                position.x += CGFloat(parallaxSpeed)
                
                if (CGRectGetMinX(frame) >= CGRectGetMaxX(sceneRect)) {
                    position.x = -self.size.width
                }
                
            // Scroll Left
            } else {
                position.x -= CGFloat(parallaxSpeed)

                if (CGRectGetMaxX(frame) <= CGRectGetMinX(sceneRect)) {
                     position.x = self.size.width
                }
            }
        }
    }
}
