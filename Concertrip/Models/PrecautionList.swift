//
//  PrecautionList.swift
//  Concertrip
//
//  Created by 양어진 on 11/01/2019.
//  Copyright © 2019 양어진. All rights reserved.
//

import Foundation
import ObjectMapper

struct PrecautionList : Mappable {
    var cautionCode : Int?
    var cautionName : String?
    var cautionImg : String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        cautionCode <- map["code"]
        cautionName <- map["name"]
        cautionImg <- map["img"]
    }
    
}
//{
//    "code": 101,
//    "name": "7세 이상",
//    "img": "https://s3.ap-northeast-2.amazonaws.com/concertrip-main/sample.jpg"
//}
