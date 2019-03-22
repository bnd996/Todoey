//
//  Category.swift
//  Todoey
//
//  Created by Nurbek Baibolov on 3/19/19.
//  Copyright © 2019 Nurbek Baibolov. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    var items = List<Item>()
}
