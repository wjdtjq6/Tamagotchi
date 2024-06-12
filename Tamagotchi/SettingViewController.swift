//
//  SettingViewController.swift
//  Tamagotchi
//
//  Created by t2023-m0032 on 6/12/24.
//

import UIKit
import SnapKit

class SettingViewController: UIViewController {

    let tableView = UITableView()
    let images: [String] = ["pencil","moon.fill","arrow.clockwise"]
    let lables: [String] = ["내 이름 설정하기", "다마고치 변경하기", "데이터 초기화"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: "SettingTableViewCell")
        navigationItem.title = "설정"
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        tableView.rowHeight = 50
        tableView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
    }
    


}
extension SettingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as! SettingTableViewCell
        cell.uiImageView.image = UIImage(systemName: images[indexPath.row])
        cell.settingLabel.text = lables[indexPath.row]
        cell.greaterthanImage.image = UIImage(systemName: "greaterthan")
        if indexPath.row == 0 {
            cell.nicknameLabel.text = "고래밥"
        }
        return cell
    }
    
    
}
