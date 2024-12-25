//
//  main.swift
//  GrokkingAlgorithms
//
//  Created by Joao Filipe Reis Justo da Silva on 25/12/24.
//

import Foundation

let list: [Int] = [1, 3, 4, 8, 20, 2, 45, 60, 46, 72, 902, 92, 12]
let searchedValue: Int = 12

let searchAlgorithm: SearchAlgorithms = SearchAlgorithms()
let sortAlgorithm: SortAlgorithms = SortAlgorithms()

var sortedArray: [Int] = sortAlgorithm.selectionSort(list)
print(sortedArray)

var resultString: String
if let result = searchAlgorithm.binarySearch(in: sortedArray, searchFor: searchedValue) {
    resultString = String(result)
} else {
    resultString = "not found"
}

print("Result on position: \(resultString)")

