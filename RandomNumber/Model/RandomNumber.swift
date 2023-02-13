//
//  RandomNumber.swift
//  RandomNumber
//
//  Created by Ильфат Салахов on 09.02.2023.
//

import Foundation

struct RandomNumber {
    let minNumber: Int
    let maxNumber: Int
    
    var getRandomNumber: Int {
        Int.random(in: minNumber...maxNumber)
    }
}
