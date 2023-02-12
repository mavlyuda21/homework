//
//  Cell.swift
//  homework
//
//  Created by mavluda on 13/2/23.
//

import Foundation

protocol CellDelegate{
    func chooseProduct() -> Product?
}

class Cell{
    var delegate: CellDelegate? = nil
    
    init(delegate: CellDelegate) {
        self.delegate = delegate
    }
}
