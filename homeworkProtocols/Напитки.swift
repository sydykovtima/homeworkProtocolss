import Foundation
struct Beverages:Tovar {
    var name: String
    
    var cost: Int
    
    var srok: Double
    
    var weight: Int
    
    func showInfo() {
        print("напиток -  \(name)\nцена - \(cost)сом\nсрок годности - \(srok)\nвес -  \(weight)литр")
    }
    
    
}
