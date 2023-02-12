//
//  Screen.swift
//  homework
//
//  Created by mavluda on 13/2/23.
//

import Foundation

class Screen: CellDelegate{
    var cell: Cell!
    
    init(){
        cell = Cell(delegate: self)
    }
    
    private var productsArray = [Product(name: "Cola", cost: 50),Product(name: "Bread", cost: 15),Product(name: "Milk", cost: 80),Product(name: "Cheese", cost: 300)]
    
    private var addedProducts = [Product]()
    
    private var totalCost = 0
    
    func chooseProduct() -> Product?{
        var modelToReturn: Product? = nil
        print("Choose product")
        for i in 0...productsArray.count - 1{
            print("#\(i + 1). \(productsArray[i].name). Cost - \(productsArray[i].cost) KGS")
        }
        print("Enter product's number or its name")
        let readline = readLine()!
        var found = false
        if Int(readline) != nil{
            if Int(readline)! - 1 >= 0 && Int(readline)! - 1 <= productsArray.count - 1 {
                found = true
                modelToReturn = productsArray[Int(readline)! - 1]
            }else{
                print("Incorrect number")
            }
        }else{
            for i in 0...productsArray.count - 1{
                if productsArray[i].name.lowercased() == readline.lowercased(){
                    found = true
                    modelToReturn = productsArray[i]
                }
            }
            if found == false{
                print("Incorrect name")
            }
        }
        if modelToReturn != nil{
            addedProducts.append(modelToReturn!)
            print("You added \(modelToReturn!.name).\(modelToReturn!.cost) KGS to your bag")
            print("Your bag:")
            for i in 0...addedProducts.count - 1{
                print("#\(i + 1). \(addedProducts[i].name). Cost - \(addedProducts[i].cost) KGS")
                totalCost += addedProducts[i].cost
            }
            print("Total: \(addedProducts.count) products")
            return modelToReturn
        }else{
            print("Try again!")
            return nil
        }
        
    }
    
    func getTotal(){
        print("Total sum:\(totalCost) KGS")
    }
}
