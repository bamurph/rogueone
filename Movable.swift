//
//  Movable.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import Foundation


enum Direction {
    case Left, Right, Up, Down
}

protocol Movable: Positionable, SpriteRepresentable {
    mutating func move(direction: Direction, distance: Int) 
}

extension Movable {
    mutating func move(direction: Direction, distance: Int) {
        switch direction {
        case .Left:
            position = Point(x: position.x - distance, y: position.y)
        case .Right:
            position = Point(x: position.x + distance, y: position.y)
        case .Down:
            position = Point(x: position.x, y: position.y - distance)
        case .Up:
            position = Point(x: position.x, y: position.y + distance)
        }

        node.move(direction, distance: distance)
    }



}