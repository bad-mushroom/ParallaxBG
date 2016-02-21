//
//  ViewController.swift
//  ParallaxBG
//
//  Created by Chris Sprague on 2/20/16.

import UIKit
import SpriteKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let parallaxScene = ParallaxScene(size: view.bounds.size)
        let parallaxSceneView = view as! SKView
        
        parallaxSceneView.showsFPS = true
        parallaxSceneView.showsNodeCount = true
        parallaxSceneView.ignoresSiblingOrder = true
        parallaxScene.scaleMode = .AspectFill
        
        parallaxSceneView.presentScene(parallaxScene)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

