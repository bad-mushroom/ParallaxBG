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
    var scrollDuration: Double = 0.0
    
    required init(coder: NSCoder)
    {
        fatalError("NSCoding not supported")
    }
    
    init(textureName: String, duration: Double, size: CGSize, zIndex: CGFloat, secondary: Int)
    {
        let texture = SKTexture(imageNamed: textureName)
    
        super.init(texture: texture, color: SKColor.clearColor(), size: size)
    
        scrollDuration = duration
        name = textureName
        zPosition = zIndex

        position = CGPointMake(self.size.width * CGFloat(secondary), CGRectGetMidY(frame))
    }

    func start()
    {
        let moveLoop = SKAction.sequence([
                SKAction.moveByX(-self.size.width, y: 0, duration: NSTimeInterval(scrollDuration)),
                SKAction.moveByX(self.size.width, y: 0, duration: 0)])
        let scrollAction = SKAction.repeatActionForever(moveLoop)
        
        runAction(SKAction.repeatActionForever(scrollAction))
    }
    
    func stop()
    {
         removeAllActions()
    }

}
