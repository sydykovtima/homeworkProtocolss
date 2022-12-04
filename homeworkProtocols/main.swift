import Foundation
protocol Car {
    var mark:String{get set}
    var model:String {get set}
    var year:Int {get set}
    var manufacturer:String {get set}
    var country:String {get set}
    func showInfo()
}

struct Jeep:Car {
    var manufacturer: String
    
    var country: String
    
    var mark: String
    
    var model: String
    
    var year: Int
    var speed:Int
    var benefis:String
    
    func showInfo() {
        print("машина - \(mark)\nмодель - \(model)\nгод - \(year)\nразгоняется до - \(speed)\nпреимущества - \(benefis)\nпроизводитель - \(manufacturer)\nстрана - \(country)")
    }
    
    
}
struct Crossover:Car{
    var manufacturer: String
    
    var country: String
    
    var mark: String
    
    var model: String
    
    var year: Int
    var speed:Int
    var benefis:String
    func showInfo() {
        print("машина - \(mark)\nмодель - \(model)\nгод - \(year)\nразгоняется до - \(speed)\nпреимущества - \(benefis)\nпроизводитель\(manufacturer)\nстрана - \(country)")
    }
    
    
}
struct Pickup:Car {
    var manufacturer: String
    
    var country: String
    
    var mark: String
    
    var model: String
    
    var year: Int
    var speed:Int
    var benefis:String
    
    func showInfo() {
        print("машина - \(mark)\nмодель - \(model)\nгод - \(year)\nразгоняется до - \(speed)\nпреимущества - \(benefis)\nпроизводитель - \(manufacturer)\nстрана - \(country)")
    }
    
    
}
var car = Jeep(manufacturer: "Sydykov Tima", country: "Japan", mark: "Lexus", model: "lx570", year: 2012, speed: 240, benefis: "Больщой комфортный в основном для бизнесменов")
var car1 = Crossover(manufacturer: "Sydykov Tima", country: "Japan", mark: "Kia", model: "Rio", year: 2020, speed: 220, benefis: "кроссовер можно сказать полу джип")
var car2 = Pickup(manufacturer: "Sydykov Tima", country: "Americ", mark: "Mazda", model: "BT-50", year: 2020, speed: 240, benefis: "Можно сказать монстр трак плохие дороги не по чем")
var array:[Car] = [car,car1,car2]
for i in array {
    i.showInfo()
}



var soap = SoapWasher(name: "Мыло", cost: 120, srok: 27.07, weight: 210)
var pena = SoapWasher(name: "Пена", cost: 150, srok: 30.04, weight: 200)
var brushTooth = SoapWasher(name: "Зубная щетка", cost: 17, srok: 31.12, weight: 17)
var toothPaste = SoapWasher(name: "Зубная паста", cost: 50, srok: 12.12, weight: 150)
var poam = SoapWasher(name: "Порошок", cost: 250, srok: 20.04, weight: 950)

var socket = Tech(name: "Розетка", cost:50, srok: 12.12, weight: 100)
var conditioner = Tech(name: "Кондиционер", cost: 12000, srok: 2060.04, weight: 120000)
var fridge = Tech(name: "Холодильник", cost: 24000, srok: 2050.03, weight: 130000)
var provod = Tech(name: "Провод", cost: 120, srok: 2080.06, weight: 100)
var plate = Tech(name: "Плита", cost: 10000, srok: 2077.12 , weight: 12000)

var cola = Beverages(name: "Cola", cost: 100, srok: 2023.12, weight: 1)
var fanta = Beverages(name: "Fanta", cost: 120, srok: 2024.01, weight: 2)
var sprite = Beverages(name: "Spite", cost: 120, srok: 2023.03, weight: 2)
var nitro = Beverages(name: "Nitro", cost: 65, srok: 2023.05, weight: 1)
var flesh = Beverages(name: "Flesh", cost: 70, srok: 2023.04, weight: 1)

var shawarma = Food(name: "Шаурма", cost: 160, srok: 2022.12, weight: 150)
var samsy = Food(name: "Cамсы", cost: 80, srok: 2022.12, weight: 100)
var bread = Food(name: "хлеб", cost: 23, srok: 2022.12, weight: 50)
var lagman = Food(name: "Лагман", cost: 120, srok: 2023.01, weight: 200)
var sendwich = Food(name: "Сендвич", cost: 70, srok: 2022.12, weight: 70)
var array1:[Tovar] = [soap, pena, brushTooth, toothPaste, poam, socket, conditioner, fridge, provod, plate, cola, fanta, sprite, nitro, flesh, shawarma, samsy, bread, lagman, sendwich]
for i in array1 {
    i.showInfo()
}

print("имя")
var name = readLine()!
print("фамилия")
var surename = readLine()!
print("дата заказа")
let dataZakaza = readLine()!
print("время заказа")
let timeZakaza = readLine()!
print("название товара")
let nameTovar = readLine()!
print("кол-во товара")
let colvo = readLine()!
print("отправить")
let country = readLine()!

var array2 = ["Turkey", "USA", "France"]

func info(nameTovar: String, colvo: String, send: String){
    var price = 0
    var time = 0
    var tovarr = 0
    
    
    for tovar in array1 {
        if tovar.name == nameTovar {
            tovarr = Int(colvo)! * tovar.cost
        }
    }
    
    if array2.contains(send) {
        price = 1000
        time = 12
    }
    
    let obshayaSumma = tovarr + price
    print("Имя Клиента - \(name)\nФамилия клиента - \(surename)\nдата заказа - \(dataZakaza)\nвремя заказа - \(timeZakaza)\nназвание товара -\(nameTovar)\nвремя доставки - \(time) часов\nцена за доставку - \(price)\n цена за товар - \(tovarr)\nобщая сумма - \(obshayaSumma)")
    
    func rate(){
        print("оцените")
        let rate1 = readLine()!
        
        
        if let rate2 = Int(rate1) {
            if rate2 < 1 || rate2 > 5 {
                print("Оцените от 1 до 5 ")
                rate()
            } else {
                print("ваша оценка \(rate1)")

            }
        } else {
            print("Оцените от 1 до 5")
            rate()
        }
    }
    
    rate()
    

 
    
}

info(nameTovar: nameTovar, colvo: colvo, send: country)


