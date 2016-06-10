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

protocol Movable: Positionable {
    mutating func move(direction: Direction, distance: Int)
}

extension Movable {
    func move(direction: Direction, distance: Int) -> Point {
        switch direction {
        case .Left:
            return Point(x: position.x - distance, y: position.y)
        case .Right:
            return Point(x: position.x + distance, y: position.y)
        case .Down:
            return Point(x: position.x, y: position.y - distance)
        case .Up:
            return Point(x: position.x, y: position.y + distance)
        }
    }
    

}