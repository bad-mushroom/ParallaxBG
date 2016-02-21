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
    
    init(textureName: String, speed: Double, size: CGSize, zIndex: CGFloat, secondary: Int)
    {
        let texture = SKTexture(imageNamed: textureName)
    
        super.init(texture: texture, color: SKColor.clearColor(), size: size)
    
        parallaxSpeed = speed
        name = textureName
        zPosition = zIndex

        position = CGPointMake(self.size.width * CGFloat(secondary), CGRectGetMidY(frame))
    }

    func start()
    {
        var moveLoop = SKAction()
        
        if (scrollDirection <= 0) {
            moveLoop = SKAction.moveByX(-self.size.width, y: 0, duration: NSTimeInterval(parallaxSpeed))
        } else {
            moveLoop = SKAction.moveByX(self.size.width, y: 0, duration: NSTimeInterval(parallaxSpeed))
        }
 
        let scrollAction = SKAction.repeatActionForever(moveLoop)
        
        runAction(SKAction.repeatActionForever(scrollAction))
    }
    
    func stop()
    {
         removeAllActions()
    }

}
