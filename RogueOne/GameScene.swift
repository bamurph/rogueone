//
//  GameScene.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright (c) 2016 Constellation Software. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {

    var pc: PC?
    var entities: SKNode?
    var characterNode: SKLabelNode?

    override func didMoveToView(view: SKView) {
        guard let entities = childNodeWithName("Entities") else {
            fatalError("Could not find entities node")
        }
        guard let characterNode = entities.childNodeWithName("Character") else {
            fatalError("Could not find character node")
        }

        pc = PC(node: characterNode, position: Point(x: 0, y: 0))

    }
    
    override func mouseDown(theEvent: NSEvent) {
        /* Called when a mouse click occurs */
        

    }


    override func keyDown(theEvent: NSEvent) {
        functionForKeyDown(theEvent, entity: &pc)
    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
