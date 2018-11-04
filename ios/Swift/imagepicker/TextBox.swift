//
//  TextBox.swift
//  imagepicker
//
//  Created by Frank on 11/3/18.
//  Copyright © 2018 Sara Robinson. All rights reserved.
//

import Foundation
import SwiftyJSON

class TextBox: NSObject {
    var content: NSString
    var margin: Int
    var p1: [Int]
    var p2: [Int]
    var p3: [Int]
    var p4: [Int]
    
    init(jsonPtLst: [JSON]?, text: NSString) {
        self.content = text
        let p1Json = jsonPtLst![0]
        let p2Json = jsonPtLst![1]
        let p3Json = jsonPtLst![2]
        let p4Json = jsonPtLst![3]
        self.p1 = [p1Json["x"].int, p1Json["y"].int] as! [Int]
        self.p2 = [p2Json["x"].int, p2Json["y"].int] as! [Int]
        self.p3 = [p3Json["x"].int, p3Json["y"].int] as! [Int]
        self.p4 = [p4Json["x"].int, p4Json["y"].int] as! [Int]
        self.margin = self.p4[1] - self.p1[1]
    }
    
    func getX() -> Int {
        return self.p1[0]
    }
    
    func getY() -> Int {
        return self.p1[1]
    }
    
    func getMargin() -> Int {
        return self.margin
    }
    
    public override var description: String {
        return self.content as String + " "
            //+ "("
            //+ self.p1[0]
            //+ ", "
            //+ self.p1[1]
            //+ ")"
    }
    
}
