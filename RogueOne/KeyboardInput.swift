//
//  KeyboardInput.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import Cocoa

// MARK: - Lookup key pressed & return function

func functionForKeyDown(theEvent: NSEvent, inout entity: PC?) -> () {
    let key = theEvent.keyCode
    switch key {
    case 123:
        entity?.move(Direction.Left, distance: 1)
    case 124:
        entity?.move(Direction.Right, distance: 1)
    case 125:
        entity?.move(Direction.Down, distance: 1)
    case 126:
        entity?.move(Direction.Up, distance: 1)
    default:
        print(key.description)
    }
}