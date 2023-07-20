//
//  ToDoItem.swift
//  goal_tracker_h
//
//  Created by Jargalan Enkh-Otgon on 2023.07.20.
//

import Foundation

class ToDoItem: Identifiable{
    var id = UUID()
    var title = ""
    init(title : String) {
        self.title = title
    }
}
