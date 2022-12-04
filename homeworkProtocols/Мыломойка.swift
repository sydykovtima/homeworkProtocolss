import Foundation
struct SoapWasher:Tovar{

    var name: String
    
    var cost: Int
    
    var srok: Double
    
    var weight: Int
    
    func showInfo() {
        print("\nтовар -  \(name)\nцена - \(cost)сом\nсрок годности - \(srok)\nвес -  \(weight) грамм")
    }
    
    
}
