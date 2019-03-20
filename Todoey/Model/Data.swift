//
//  Data.swift
//  Todoey
//
//  Created by Nurbek Baibolov on 3/19/19.
//  Copyright © 2019 Nurbek Baibolov. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
