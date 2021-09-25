//
//  ViewController.swift
//  FakeInstagram
//
//  Created by Дмитрий Осипенко on 8.04.21.
//

import UIKit


protocol  SubscribeProtocol: AnyObject {
    func subscribeUser(id: Int)
    func unsubscribeUser(id: Int)
}

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var profileArray = Profile.allProfile
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        tableView.delegate = self
        tableView.dataSource = self
       
        let nib = UINib(nibName: String(describing: InstagramCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: InstagramCell.self))
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let profile = ProfileViewController()
        profile.profile = profileArray[indexPath.row]
        guard let cell = tableView.cellForRow(at: indexPath) as? InstagramCell else {return}
        if cell.isSubscribe == false {
            profile.isSubscribe = false
        }else {
            profile.isSubscribe = true
        }
        profile.delegate = self
        profile.id = indexPath.row
        present(profile, animated: true, completion: nil)
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InstagramCell.self), for: indexPath)
        guard let instaCell = cell as? InstagramCell else {return cell}
        instaCell.delegate = self
        instaCell.id = indexPath.row
        let profile = profileArray[indexPath.row]
        instaCell.setupWith(profile: profile)
        return instaCell
    }
}


extension ViewController: SubscribeProtocol {
    func subscribeUser(id: Int) {
        print("Подписка на id: \(id)")
      
    }
    
    func unsubscribeUser(id: Int) {
        print("Отписка от id: \(id)")
    }
    
}
