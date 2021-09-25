
import Foundation
import UIKit

struct Profile {
    var name: String
    var photo: UIImage?
    
    static var allProfile: [Profile] = [
    Profile(name: "Дима", photo: UIImage(named: "1")),
    Profile(name: "Оля", photo: UIImage(named: "2")),
    Profile(name: "Ира", photo: UIImage(named: "3")),
    Profile(name: "Люба", photo: UIImage(named: "4")),
    Profile(name: "Вика", photo: UIImage(named: "5")),
    Profile(name: "Петя", photo: UIImage(named: "6")),
    Profile(name: "Катя", photo: UIImage(named: "7")),
    Profile(name: "Сергей", photo: UIImage(named: "8")),
    Profile(name: "Стас", photo: UIImage(named: "9")),
    Profile(name: "Женя", photo: UIImage(named: "10"))
    ]
}
