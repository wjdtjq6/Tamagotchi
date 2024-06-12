//
//  SettingTableViewCell.swift
//  Tamagotchi
//
//  Created by t2023-m0032 on 6/12/24.
//

import UIKit
import SnapKit

class SettingTableViewCell: UITableViewCell {

    let uiImageView = UIImageView()
    let settingLabel = UILabel()
    let greaterthanImage = UIImageView()
    let nicknameLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(uiImageView)
        contentView.addSubview(settingLabel)
        contentView.addSubview(greaterthanImage)
        contentView.addSubview(nicknameLabel)
        contentView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        uiImageView.snp.makeConstraints { make in
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(15)
            make.leading.equalTo(contentView.safeAreaLayoutGuide).inset(25)
            make.width.equalTo(20)
        }
        uiImageView.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        settingLabel.snp.makeConstraints { make in
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(15)
            make.leading.equalTo(uiImageView.snp_trailingMargin).offset(25)
            make.width.equalTo(150)
        }
        settingLabel.font = .boldSystemFont(ofSize: 14)
        
        greaterthanImage.snp.makeConstraints { make in
            make.verticalEdges.trailing.equalTo(contentView.safeAreaLayoutGuide).inset(15)
            make.width.equalTo(15)
        }
        greaterthanImage.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        nicknameLabel.snp.makeConstraints { make in
            make.verticalEdges.equalTo(contentView.safeAreaLayoutGuide).inset(15)
            make.trailing.equalTo(greaterthanImage.snp.leading).offset(50)
            make.width.equalTo(30)
        }
        nicknameLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        nicknameLabel.font = .systemFont(ofSize: 13)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
