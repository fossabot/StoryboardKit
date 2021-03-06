//
//  ClassInfoTests.swift
//  StoryboardKit
//
//  Created by Ian on 6/29/15.
//  Copyright (c) 2015 Adorkable. All rights reserved.
//

import XCTest

import StoryboardKit

class ClassInfoTests: XCTestCase {

    func testInit() {
        let classInfo = ClassInfo(className: nil)
        
        XCTAssertEqual(classInfo.infoClassName, ClassInfo.defaultClass, "ClassInfo class name should be \"\(ClassInfo.defaultClass)\", was \"\(classInfo.infoClassName)\"")
    }

    func testInitCustomClassName() {
        let className = "Blah-dee Blah Blah"
        
        let classInfo = ClassInfo(className: className)

        XCTAssertEqual(classInfo.infoClassName, className, "ClassInfo class name should be \"\(className)\", was \"\(classInfo.infoClassName)\"")
    }
    
    func testDebugDescription() {
        let classInfo = ClassInfo(className: nil)

        let debugDescription = classInfo.debugDescription
        
        XCTAssertNotNil(debugDescription.rangeOfString("Class: "), "ClassInfo's debug description should include the class: \(debugDescription)")
    }
}
