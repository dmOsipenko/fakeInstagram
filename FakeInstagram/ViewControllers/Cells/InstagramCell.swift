
import UIKit

class InstagramCell: UITableViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    
    
    weak var delegate: SubscribeProtocol?
    var isSubscribe: Bool = false
    var id: Int = 0

    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    @IBAction func subscribeAction(_ sender: Any) {
        subscribeButton.setTitle(isSubscribe ? "Подписаться" : "Отписаться", for: .normal)
        isSubscribe ? delegate?.unsubscribeUser(id: id) : delegate?.subscribeUser(id: id)
        isSubscribe = !isSubscribe
    }
    
    
    func setupWith(profile: Profile) {
        nameLable.text = profile.name
        avatarImage.image = profile.photo
    }
}
