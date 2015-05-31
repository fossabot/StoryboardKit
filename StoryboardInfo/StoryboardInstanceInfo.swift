//
//  StoryboardInstanceInfo.swift
//  StoryboardInfo
//
//  Created by Ian on 5/3/15.
//  Copyright (c) 2015 Adorkable. All rights reserved.
//

import Foundation

import SWXMLHash

public class StoryboardInstanceInfo: NSObject {
    private var scenes = Array<SceneInfo>()
    
    public class SceneInfo: NSObject {
        let sceneId : String
        
        var viewController : ViewControllerInstanceInfo?
        var placeHolder : AnyObject?
        
        init(sceneId : String) {
            self.sceneId = sceneId
            
            super.init()
        }
    }
    
    // TODO: validate that it isn't a dup
    func add(#scene : SceneInfo) {
        self.scenes.append(scene)
    }
}