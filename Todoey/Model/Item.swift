//
//  Item.swift
//  Todoey
//
//  Created by Nurbek Baibolov on 3/19/19.
//  Copyright © 2019 Nurbek Baibolov. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: NSDate = NSDate()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")

}
