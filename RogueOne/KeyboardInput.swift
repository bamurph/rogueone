//
//  KeyboardInput.swift
//  RogueOne
//
//  Created by Ben Murphy on 6/10/16.
//  Copyright © 2016 Constellation Software. All rights reserved.
//

import Cocoa

// MARK: - Lookup key pressed & return function

func functionForKeyDown(theEvent: NSEvent) -> () {
    let key = theEvent.keyCode
    switch key {
    case 123:
        print("Left")
    case 124:
        print("Right")
    case 125:
        print("Down")
    case 126:
        print("Up")
    default:
        print(key.description)

    }
}