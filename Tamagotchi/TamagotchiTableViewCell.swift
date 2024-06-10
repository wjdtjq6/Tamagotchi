//
//  TamagotchiTableViewCell.swift
//  Tamagotchi
//
//  Created by t2023-m0032 on 6/7/24.
//

import UIKit
import SnapKit

class TamagotchiTableViewCell: UITableViewCell {
    
    let firstImageButton = UIButton()
    let firstLabelButton = UIButton()
    let secondImageButton = UIButton()
    let secondLabelButton = UIButton()
    let thirdImageButton = UIButton()
    let thirdLabelButton = UIButton()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(firstImageButton)
        contentView.addSubview(firstLabelButton)
        contentView.addSubview(secondImageButton)
        contentView.addSubview(secondLabelButton)
        contentView.addSubview(thirdImageButton)
        contentView.addSubview(thirdLabelButton)
        configureLayout()
        backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureLayout() {
        firstImageButton.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide).offset(10)
            make.leading.equalTo(contentView.safeAreaLayoutGuide).offset(10)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        firstLabelButton.snp.makeConstraints { make in
            make.top.equalTo(firstImageButton.snp_bottomMargin).offset(10)
            make.leading.equalTo(contentView.safeAreaLayoutGuide).offset(10)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
        
        secondImageButton.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide).offset(10)
            //make.bottom.equalTo(contentView.safeAreaLayoutGuide).offset(-10)
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        secondLabelButton.snp.makeConstraints { make in
            make.top.equalTo(secondImageButton.snp_bottomMargin).offset(10)
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
        
        thirdImageButton.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide).offset(10)
            make.trailing.equalTo(contentView.safeAreaLayoutGuide).offset(-10)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        thirdLabelButton.snp.makeConstraints { make in
            make.top.equalTo(thirdImageButton.snp_bottomMargin).offset(10)
            make.trailing.equalTo(contentView.safeAreaLayoutGuide).offset(-10)
            make.width.equalTo(100)
            make.height.equalTo(20)
        }
        firstLabelButton.titleLabel?.font = .boldSystemFont(ofSize: 13)
        firstLabelButton.titleLabel?.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        firstLabelButton.setTitleColor(UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1), for: .normal)
        firstLabelButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        firstLabelButton.layer.borderWidth = 1
        firstLabelButton.layer.cornerRadius = 5
        
        secondLabelButton.titleLabel?.font = .boldSystemFont(ofSize: 13)
        secondLabelButton.titleLabel?.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        secondLabelButton.setTitleColor(UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1), for: .normal)
        secondLabelButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        secondLabelButton.layer.borderWidth = 1
        secondLabelButton.layer.cornerRadius = 5
        
        thirdLabelButton.titleLabel?.font = .boldSystemFont(ofSize: 13)
        thirdLabelButton.titleLabel?.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        thirdLabelButton.setTitleColor(UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1), for: .normal)
        thirdLabelButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        thirdLabelButton.layer.borderWidth = 1
        thirdLabelButton.layer.cornerRadius = 5
    }
}
