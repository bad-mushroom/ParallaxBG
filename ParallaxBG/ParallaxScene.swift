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
    var parallaxBackgrounds = [ParallaxSprite]()
    var currentBackgroundPositionX: Int = -1
    
    override func didMoveToView(view: SKView)
    {
        anchorPoint = CGPointMake(0.5, 0.5)

        addParallaxBackgroundSprite("parallaxBackground1", speed: 0.0, size: frame.size)
        addParallaxBackgroundSprite("parallaxBackground2", speed: 3.25, size: frame.size)
        addParallaxBackgroundSprite("parallaxBackground3", speed: 4.50, size: frame.size)
    }
    
    override func update(currentTime: CFTimeInterval)
    {
        for ps : ParallaxSprite in parallaxBackgrounds {
            ps.update(frame)
        }
    }

    func addParallaxBackgroundSprite(textureName: String, speed: Double, size: CGSize)
    {
        for i in 0...1 {
            let ps = ParallaxSprite(textureName: textureName, speed: speed, size: size, secondary: i)
            addChild(ps)
            parallaxBackgrounds.append(ps)
        }

    }
}
