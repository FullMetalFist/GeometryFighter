//
//  GameViewController.swift
//  GeometryFighter
//
//  Created by Michael Vilabrera on 3/28/16.
//  Copyright (c) 2016 Giving Tree. All rights reserved.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {
    
    var scnView: SCNView!
    var scnScene: SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupScene()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func setupView() {
        scnView = self.view as! SCNView
    }
    
    func setupScene() {
        scnScene = SCNScene()
        scnView.scene = scnScene
    }
}