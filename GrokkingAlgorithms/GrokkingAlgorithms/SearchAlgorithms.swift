//
//  BinarySearch.swift
//  GrokkingAlgorithms
//
//  Created by Joao Filipe Reis Justo da Silva on 25/12/24.
//

import Foundation

class SearchAlgorithms {
    
    func binarySearch(in array: [Int], searchFor element: Int) -> Int? {
        var low = 0
        var high = array.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            let guess = array[mid]  // Guess the middle item
            
            if guess == element {
                return mid
            } else if guess > element {
                high = mid - 1  // Guess was too high, so high has to be lower
            } else {
                low = mid + 1  // Guess was too low, so low has to be higher
            }
        }
        
        return nil
    }
}
