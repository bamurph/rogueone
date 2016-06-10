//
//  PC
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import Foundation
import SpriteKit

class PC: Movable, SpriteRepresentable {

    var node: SKNode
    var position: Point

    init() {
        self.position = Point(x: 0, y: 0)
        self.node = SKNode.init()
    }

    init(node: SKNode, position: Point) {
        self.node = node
        self.position = position
    }

}
