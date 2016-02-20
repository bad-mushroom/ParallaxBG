//
//  ParallaxScene.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.
//  Copyright © 2016 2DSquirrel. All rights reserved.
//

import SpriteKit

class ParallaxScene: SKScene, ParallaxBGDelegate
{
    var parallaxBackgrounds = [ParallaxSprite]()
    
    override func didMoveToView(view: SKView)
    {
        anchorPoint = CGPointMake(0.5, 0.5)
        
        let parallaxBackground1 = ParallaxSprite(textureName: "parallaxBackground1", speed: 0.0, size: frame.size)
        let parallaxBackground2 = ParallaxSprite(textureName: "parallaxBackground2", speed: 0.75, size: frame.size)
        let parallaxBackground3 = ParallaxSprite(textureName: "parallaxBackground3", speed: 1.5, size: frame.size)

        addParallaxChild(parallaxBackground1)
        addParallaxChild(parallaxBackground2)
        addParallaxChild(parallaxBackground3)
    }
    
    override func update(currentTime: CFTimeInterval)
    {
        for ps : ParallaxSprite in parallaxBackgrounds {
            ps.update();
        }
    }
    
    func addParallaxChild(parallaxSprite: ParallaxSprite)
    {
        addChild(parallaxSprite)
        
        parallaxBackgrounds.append(parallaxSprite)
    }
    
}
