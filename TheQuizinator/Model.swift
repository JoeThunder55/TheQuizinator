//
//  Model.swift
//  TheQuizinator
//
//  Created by Aaron on 11/7/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

struct Questions: Codable {
    let id: Int
    let name: String
    let question: String
    let answer: String
    let link: String
    let imageUrl: String
}
