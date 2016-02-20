//
//  ParallaxScene.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.
//  Copyright © 2016 2DSquirrel. All rights reserved.
//

import SpriteKit

class ParallaxScene: SKScene
{
    var parallaxBackgrounds : [ParallaxSprite]!
    
    override func didMoveToView(view: SKView)
    {
        anchorPoint = CGPointMake(0.5, 0.5)
        
        let parallaxBackground1 = ParallaxSprite(textureName: "parallaxBackground1", speed: 0.0, size: frame.size)
        let parallaxBackground2 = ParallaxSprite(textureName: "parallaxBackground2", speed: 1.0, size: frame.size)
        
        addChild(parallaxBackground1)
        addChild(parallaxBackground2)
        
        parallaxBackgrounds = [parallaxBackground1,parallaxBackground2]
    }
    
    override func update(currentTime: CFTimeInterval)
    {
        for ps : ParallaxSprite in parallaxBackgrounds {
            ps.update();
        }
    }
    
}
