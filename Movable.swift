//
//  Movable.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import Foundation

protocol Movable: Positionable {
    mutating func move(direction: Direction, distance: Int)
}