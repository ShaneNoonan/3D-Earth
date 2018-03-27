//
//  EarthNode.swift
//  3DEarth
//
//  Created by Shane Noonan on 27/03/2018.
//  Copyright © 2018 Shane Noonan. All rights reserved.
//

import SceneKit

class EarthNode: SCNNode {

    override init() {
        super .init()
        
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180), around: SCNVector3(x: 0, y:1, z: 0) , duration: 8)
        let repeatAction = SCNAction.repeatForever(action)
        
        self.runAction(repeatAction)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
    }
}