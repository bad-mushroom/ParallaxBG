//
//  ParallaxScene.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.
//  Copyright © 2016 2DSquirrel. All rights reserved.
//

import SpriteKit

class ParallaxScene: SKScene, ParallaxDelegate
{
    var parallaxSprites = [ParallaxSprite]()
    var currentBackgroundPositionX: Int = -1
    
    override func didMoveToView(view: SKView)
    {
        anchorPoint = CGPointMake(0.5, 0.5)

        addParallaxSprite("parallaxBackground1", duration: 100, size: frame.size, zIndex: 0)
        addParallaxSprite("parallaxBackground2", duration: 50, size: frame.size, zIndex: 1)
        addParallaxSprite("parallaxBackground3", duration: 25, size: frame.size, zIndex: 2)
        
        startParallaxScrolling()
    }
    
    // MARK: Parallax Delegate Methods
    
    func addParallaxSprite(textureName: String, duration: Double, size: CGSize, zIndex: CGFloat)
    {
        for i in 0...1 {
            let ps = ParallaxSprite(textureName: textureName, duration: duration, size: size, zIndex: zIndex, secondary: i)
            addChild(ps)
            parallaxSprites.append(ps)
        }
    }
    
    func removeParallaxSprite(ps: ParallaxSprite)
    {
        if let index = parallaxSprites.indexOf(ps) {
            parallaxSprites.removeAtIndex(index)
            ps.removeFromParent()
        }
    }
    
    func startParallaxScrolling()
    {
        for ps: ParallaxSprite in parallaxSprites {
            ps.start()
        }
    }
    
    func stopParallaxScrolling()
    {
        for ps: ParallaxSprite in parallaxSprites {
            ps.stop()
        }
    }
}
