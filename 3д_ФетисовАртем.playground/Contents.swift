import UIKit

enum Action: String {
    case defaultAction = "Машина готова"
    case startEngine = "Двигатель запущен"
    case stopEngine = "Двигатель остановен"
    case openWindows = "Окна открыты"
    case closeWindows = "Окны закрыты"
    case putInTrunk = "Погрузили в багажник"
    case putOffTrunk = "Выгрузили из багажника"
    case speedSUp = "Скорость увеличилась на"
    case speedDown = "Скорость уменьшилась на"
    case speedNotChanged = "Скорость не изменилась"
    case carMoove = "Машина едет"
    case carStop = "Машина стоит"

}


struct SportCar {
    let brand: String
    let year: Int
    let bodyVolume: Double
    let engineStatus: Bool
    let windowStatus: Bool
    let trunkStatus: Bool
    var manageAction: Action
    var speedStatus: Double = 0
    var km: Double {
        didSet {
            if (km > 0){
                self .manageAction = Action.carMoove
            } else {
                self .manageAction = Action.carStop
            }
            printInfo(text: self .manageAction.rawValue)
            
            if (oldValue > km){
                self .speedStatus = oldValue - km
                self .speedInfo(text: Action.speedDown.rawValue)
            }else if (oldValue < km){
                self .speedStatus = km - oldValue
                self .speedInfo(text: Action.speedSUp.rawValue)
            } else {
                self .speedStatus = km
                self .speedInfo(text: Action.speedNotChanged.rawValue)
            }
            
        }
    }
    
    
        
    func speedInfo(text: String){
        print("\(text) \(self .speedStatus)")
    }
    
    func printInfo(text: String){
        print(text)
    }
    
    init() {
        km = 0.0
        brand = "Ferarri"
        year = 2010
        bodyVolume = 500.00
        engineStatus = false
        windowStatus = true
        trunkStatus = true
        manageAction = .defaultAction
        printInfo(text: "Машина собрана")
    }
    
}

struct TrunkCar {
    let brand: String
    let year: Int
    let bodyVolume: Double
    let engineStatus: Bool
    let windowStatus: Bool
    let trunkStatus: Bool
    
}

var sportCarStruct = SportCar()
sportCarStruct.km = 100.00
sportCarStruct.km = 110.00
sportCarStruct.km = 80.0
sportCarStruct.km = 0.0




