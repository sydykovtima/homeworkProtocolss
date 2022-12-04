import Foundation
struct Food:Tovar {
    var name: String
    
    var cost: Int
    
    var srok: Double
    
    var weight: Int
    
    func showInfo() {
        print("\nтовар -  \(name)\nцена - \(cost)сом\nсрок годности - \(srok)\nвес -  \(weight) грамм")
    }
    
    
}
