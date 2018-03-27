//
//  ViewController.swift
//  3DEarth
//
//  Created by Shane Noonan on 27/03/2018.
//  Copyright © 2018 Shane Noonan. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let scene = SCNScene()
        
        // Camera
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        scene.rootNode.addChildNode(cameraNode)
        
        // Lights
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 2)
        scene.rootNode.addChildNode(lightNode)
        
        // Stars
        let stars = SCNParticleSystem(named: "StarsParticle.scnp", inDirectory: nil)!
        scene.rootNode.addParticleSystem(stars)
        
        // Earth
        let earth = EarthNode()
        scene.rootNode.addChildNode(earth)
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
        
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
        sceneView.allowsCameraControl = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

