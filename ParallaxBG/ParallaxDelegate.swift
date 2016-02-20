//
//  ParallaxBGDelegate.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.
//  Copyright © 2016 2DSquirrel. All rights reserved.
//

import SpriteKit

protocol ParallaxDelegate
{
    var parallaxBackgrounds: [ParallaxSprite] { get set }
    func addParallaxBackgroundSprite(textureName: String, speed: Double, size: CGSize)
}
