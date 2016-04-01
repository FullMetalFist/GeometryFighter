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
    var cameraNode: SCNNode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupScene()
        self.setupCamera()
        self.spawnShape()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func setupView() {
        scnView = self.view as! SCNView
        // 1
        scnView.showsStatistics = true
        // 2
        scnView.allowsCameraControl = true
        // 3
        scnView.autoenablesDefaultLighting = true
    }
    
    func setupScene() {
        scnScene = SCNScene()
        scnView.scene = scnScene
        scnScene.background.contents = "GeometryFighter.scnassets/Textures/Background_Diffuse.png"
    }
    
    func setupCamera() {
        // 1
        cameraNode = SCNNode()
        // 2
        cameraNode.camera = SCNCamera()
        // 3
        cameraNode.position = SCNVector3(x: 0, y: 5, z: 10)
        // 4
        scnScene.rootNode.addChildNode(cameraNode)
    }
    
    func spawnShape() {
        // 1
        var geometry: SCNGeometry
        // 2
        switch ShapeType.random() {
        default:
            // 3
            //geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
            //geometry = SCNPyramid(width: 1.0, height: 1.0, length: 1.0)
            //geometry = SCNCone(topRadius: 0.0, bottomRadius: 1.0, height: 1.0)
            //geometry = SCNTorus(ringRadius: 1.5, pipeRadius: 0.5)
            geometry = SCNCylinder(radius: 1.0, height: 2.0)
        }
        
        geometry.materials.first?.diffuse.contents = UIColor.random()
        
        // 4
        let geometryNode = SCNNode(geometry: geometry)
        geometryNode.physicsBody = SCNPhysicsBody(type: .Dynamic, shape: nil)
        
        // 1
        let randomX = Float.random(min: -2, max: 2)
        let randomY = Float.random(min: 10, max: 18)
        // 2
        let force = SCNVector3(x: randomX, y: randomY, z: 0)
        // 3
        let position = SCNVector3(x: 0.05, y: 0.05, z: 0.05)
        // 4
        geometryNode.physicsBody?.applyForce(force, atPosition: position, impulse: true)
        
        // 5
        scnScene.rootNode.addChildNode(geometryNode)
    }
}