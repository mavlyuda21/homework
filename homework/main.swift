//
//  main.swift
//  homework
//
//  Created by mavluda on 13/2/23.
//

import Foundation


//Домашнее задание.
//
//Подготовиться к тесту. Создать Класс Screeen, Создать класс Сell. Создать класс Product. В классе Screen добавить объект cell, а также массив продуктов. С помощью протокола-делегата реализовать выбор товаров. Выбранные товары должны добавляться в пустой массив товаров в main. При каждом добавлении должно распечатываться кол-во выбранных товаров, выбранный товар и цена. В самом конце посчитать сумму за все товары. Шаблон взять с урока.

var screen = Screen()

var products = [Product]()


while true{
    var modelToAdd: Product? = screen.cell.delegate?.chooseProduct()
    
    if modelToAdd != nil{
        products.append(modelToAdd!)
    }else{
        continue
    }
    print("Would you continue adding products?(y/n)")
    let readline = readLine()!
    if readline == "y" || readline == "n"{
        if readline == "y"{
            continue
        }else{
            print("Bye")
            screen.getTotal()
            break
        }
    }else{
        continue
    }
}

