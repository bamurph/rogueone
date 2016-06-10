//
//  SpriteRepresentable.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import SpriteKit
import Foundation

protocol SpriteRepresentable: Positionable {
    var node: SKNode {get set}
    
}