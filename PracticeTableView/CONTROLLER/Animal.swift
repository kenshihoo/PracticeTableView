//
//  Animal.swift
//  PracticeTableView
//
//  Created by Kenshiro on 2021/03/18.
//

import Foundation

struct Animal {
    private(set) public var nameJP : String
    private(set) public var nameEN : String
    private(set) public var imageName : String
    
    init(nameJP: String, nameEN: String, imageName: String) {
        self.nameJP = nameJP
        self.nameEN = nameEN
        self.imageName = imageName
    }
}
