//
//  DetailViewController.swift
//  Tamagotchi
//
//  Created by t2023-m0032 on 6/8/24.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {

    let uiView = UIView()
    var tamaImage = UIImageView()
    let tamaLabel = UILabel()
    let separatorView = UIView()
    let descriptionLabel = UILabel()
    let cancleButton = UIButton()
    let startButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHirarchy()
        configureLayout()
        configureUI()
        
    }
    func configureHirarchy() {
        view.addSubview(uiView)
        view.addSubview(tamaImage)
        view.addSubview(tamaLabel)
        view.addSubview(separatorView)
        view.addSubview(descriptionLabel)
        view.addSubview(cancleButton)
        view.addSubview(startButton)
        
        cancleButton.addTarget(self, action: #selector(cancleButtonDismiss), for: .touchUpInside)
        startButton.addTarget(self, action: #selector(startButtonClicked), for: .touchUpInside)

    }
    @objc func cancleButtonDismiss() {
        dismiss(animated: true)
        //데이터 리로드?
    }
    @objc func startButtonClicked() {
        let mvc = MainViewController()
        
        navigationController?.pushViewController(mvc, animated: true)
    }
    func configureLayout() {
        uiView.snp.makeConstraints { make in
            make.verticalEdges.equalTo(view.safeAreaLayoutGuide).inset(130)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
        }
        tamaImage.snp.makeConstraints { make in
            make.top.equalTo(uiView.snp_topMargin).offset(50)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        tamaLabel.snp.makeConstraints { make in
            make.top.equalTo(tamaImage.snp_bottomMargin).offset(15)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(110)
            make.height.equalTo(25)
        }
        separatorView.snp.makeConstraints { make in
            make.top.equalTo(tamaLabel.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(250)
            make.height.equalTo(1)
        }
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(separatorView.snp_bottomMargin).inset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(250)
            make.height.equalTo(200)
        }
        cancleButton.snp.makeConstraints { make in
            make.leading.equalTo(uiView.snp_leadingMargin).inset(-10)
            make.trailing.equalTo(uiView.snp_centerXWithinMargins)
            make.bottom.equalTo(uiView.snp_bottomMargin).inset(-10)
            make.height.equalTo(50)
        }
        startButton.snp.makeConstraints { make in
            make.leading.equalTo(uiView.snp_centerXWithinMargins)
            make.trailing.equalTo(uiView.snp_trailingMargin).inset(-10)
            make.bottom.equalTo(uiView.snp_bottomMargin).inset(-10)
            make.height.equalTo(50)
        }
    }
    func configureUI() {
        view.backgroundColor = .black.withAlphaComponent(0.5)//UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 0.5)
        
        uiView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        uiView.layer.cornerRadius = 10
        if ViewController.whatView == 0 {
            tamaImage.image = UIImage(named: UserDefaults.standard.string(forKey: "meal")!)
            tamaLabel.text = "따끔따끔 다마고치"
            descriptionLabel.text = "저는 따끔따끔 다마고치입니다. 키는 100km 몸무게는 150톤이에요 성격은 화끈하고 날라다닙니당~! 열심히 잘 먹고 잘 클 자신은 있답니당 방실방실!"
        }
        else if ViewController.whatView == 1 {
            tamaImage.image = UIImage(named: ViewController.image1)
            tamaLabel.text = "방실방실 다마고치"
            descriptionLabel.text = "저는 방실방실 다마고치입니다. 키는 100km 몸무게는 150톤이에요 성격은 화끈하고 날라다닙니당~! 열심히 잘 먹고 잘 클 자신은 있답니당 방실방실!"
        }
        else {
            tamaImage.image = UIImage(named: ViewController.image2)
            tamaLabel.text = "반짝반짝 다마고치"
            descriptionLabel.text = "저는 반짝반짝 다마고치입니다. 키는 100km 몸무게는 150톤이에요 성격은 화끈하고 날라다닙니당~! 열심히 잘 먹고 잘 클 자신은 있답니당 방실방실!"
        }
        
        tamaLabel.font = .boldSystemFont(ofSize: 13)
        tamaLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        tamaLabel.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        tamaLabel.layer.borderWidth = 1
        tamaLabel.layer.cornerRadius = 5
        tamaLabel.textAlignment = .center
        
        separatorView.backgroundColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        descriptionLabel.textAlignment = .center
        
        cancleButton.setTitle("취소", for: .normal)
        cancleButton.titleLabel?.font = .systemFont(ofSize: 15)
        cancleButton.setTitleColor(UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1), for: .normal)
        cancleButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        cancleButton.layer.borderWidth = 1
        cancleButton.layer.cornerRadius = 10
        
        startButton.setTitle("시작하기", for: .normal)
        startButton.titleLabel?.font = .systemFont(ofSize: 15)
        startButton.setTitleColor(UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1), for: .normal)
        startButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        startButton.layer.borderWidth = 1
        startButton.layer.cornerRadius = 10
    }

}
