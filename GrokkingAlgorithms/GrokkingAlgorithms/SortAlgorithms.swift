//
//  SortAlgorithms.swift
//  GrokkingAlgorithms
//
//  Created by Joao Filipe Reis Justo da Silva on 25/12/24.
//

import Foundation

class SortAlgorithms {
    
    func selectionSort(_ array: [Int]) -> [Int] {
        var inputArray = array
        var newArray:[Int] = []
        
        for _ in 0..<array.count - 1 {
            let smallestItemIndex = getSmallestItemAndIndex(inputArray)
            newArray.append(inputArray.remove(at: smallestItemIndex.1))
        }
        
        return newArray
    }
    
    func getSmallestItemAndIndex(_ array: [Int]) -> (Int, Int) {
        var smallestIndex = 0
        var smallestItem = array[smallestIndex]
        
        for i in 1..<array.count - 1 {
            if array[i] < smallestItem {
                smallestIndex = i
                smallestItem = array[i]
            }
        }
        
        return (smallestItem, smallestIndex)
    }
}
