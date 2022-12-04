import Foundation
protocol Tovar {
    var name:String {get set}
    var cost:Int {get set}
    var srok:Double {get set}
    var weight:Int {get set}
    func showInfo()
}
