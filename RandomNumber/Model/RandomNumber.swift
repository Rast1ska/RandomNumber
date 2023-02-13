//
//  RandomNumber.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 09.02.2023.
//

import Foundation

struct RandomNumber {
    var minNumber: Int
    var maxNumber: Int
    
    var getRandomNumber: Int {
        Int.random(in: minNumber...maxNumber)
    }
}
