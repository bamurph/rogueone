//
//  SKNode+Representative.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import SpriteKit

extension SKNode: Representative {

    func move(direction: Direction, distance: Int) {
        let t = 0.125
        let d = CGFloat(distance)
        switch direction {
        case .Left:
            self.runAction(SKAction.moveByX(-frame.width * d, y: 0, duration: t))
        case .Right:
            self.runAction(SKAction.moveByX(frame.width * d , y: 0, duration: t))
        case .Down:
            self.runAction(SKAction.moveByX(0, y: -frame.height * d, duration: t))
        case .Up:
            self.runAction(SKAction.moveByX(0, y: frame.height * d, duration: t))
        }
    }
}