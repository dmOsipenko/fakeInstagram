//
//  ProfileViewController.swift
//  FakeInstagram
//
//  Created by Дмитрий Осипенко on 25.09.21.
//

import UIKit


class ProfileViewController: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    @IBOutlet weak var statusLable: UILabel!
    
    weak var delegate: SubscribeProtocol?
    var profile: Profile? = nil
    var isSubscribe: Bool = false
    var id: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let profile = profile else {return}
        avatarImage.image = profile.photo
        nameLable.text = profile.name
        statusLable.text = isSubscribe ? "Пользователь \(profile.name) в списке ваших друзей" : "Вы не подписаны на пользователя \(profile.name)"
        statusLable.backgroundColor = isSubscribe ? .green : .red
    }
    
    
}

