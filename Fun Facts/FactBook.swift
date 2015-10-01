//
//  FactBook.swift
//  Fun Facts
//
//  Created by teamtreehouse.com as part of their iOS/Android development courses
//  modified by Chris Augg on 9/30/15 to meet the new iOS 9/ Xcode 7 standards.
//

import Foundation

struct FactBook {
    
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2 to 3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built." ]
    
    
    func randomFact() -> String {
       // changed var to let as a constant is more appropriate than a variable
       // because there is no need to change anyting once they are set.
       let unsignedArrayCount = UInt32(factsArray.count)
       let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
       let randomNumber = Int(unsignedRandomNumber)
       
       return factsArray[randomNumber]
        
    }
}
