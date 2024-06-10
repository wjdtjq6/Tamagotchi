//
//  MainViewController.swift
//  Tamagotchi
//
//  Created by t2023-m0032 on 6/8/24.
//

import UIKit
import SnapKit
import TextFieldEffects

class MainViewController: UIViewController {
    
    let bubbleImage = UIImageView()
    let bubbleLabel = UILabel()
    let tamaImage = UIImageView()
    let tamaLabel = UILabel()
    let abilityLabel = UILabel()
    let mealTextField = UITextField()
    let mealSeparator = UIView()
    let mealButton = UIButton(type: .system)
    let waterTextField = UITextField()
    let waterSeparator = UIView()
    let waterButton = UIButton(type: .system)
        
    var mealData: [Int] = [0,0,0]
    var waterData: [Int] = [0,0,0]
    var levelData: [Int] = [0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHirarchy()
        configureLayout()
        configureUI()
        let rightBarButton = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(rightBarButtonClicked))
        rightBarButton.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        navigationItem.rightBarButtonItem = rightBarButton
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        appearance.shadowColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        appearance.shadowImage = UIImage()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        

    }
    func configureHirarchy() {
        view.addSubview(bubbleImage)
        view.addSubview(bubbleLabel)
        view.addSubview(tamaImage)
        view.addSubview(tamaLabel)
        view.addSubview(abilityLabel)
        view.addSubview(mealTextField)
        view.addSubview(mealSeparator)
        view.addSubview(mealButton)
        view.addSubview(waterTextField)
        view.addSubview(waterSeparator)
        view.addSubview(waterButton)
        
        mealTextField.addTarget(self, action: #selector(mealTextFieldExit), for: .editingDidEndOnExit)
        mealButton.addTarget(self, action: #selector(mealButtonClicked), for: .touchUpInside)
        waterTextField.addTarget(self, action: #selector(waterTextFieldExit), for: .editingDidEndOnExit)
        waterButton.addTarget(self, action: #selector(waterButtonClicked), for: .touchUpInside)


    }
    @objc func mealButtonClicked() {
        if mealTextField.text == "" {
            mealData[0] += 1
        }
        else {
            mealData[0] += Int(mealTextField.text!)!
            mealTextField.text = nil
        }
        abilityLabel.text = "LV? \u{2022} 밥알 \(mealData[0])개 \u{2022} 물방울 \(waterData[0])개"
        print(mealData)

    }
    @objc func waterButtonClicked() {
        if waterTextField.text == "" {
            waterData[0] += 1
        }
        else {
            waterData[0] += Int(waterTextField.text!)!
            waterTextField.text = nil
        }
        abilityLabel.text = "LV? \u{2022} 밥알 \(mealData[0])개 \u{2022} 물방울 \(waterData[0])개"
        print(waterData)

    }
    func configureLayout() {
        bubbleImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        bubbleLabel.snp.makeConstraints { make in
            make.edges.equalTo(bubbleImage).inset(15)
            make.width.equalTo(200)
        }
        tamaImage.snp.makeConstraints { make in
            make.top.equalTo(bubbleImage.snp_bottomMargin).offset(10)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(200)
            make.height.equalTo(200)
        }
        tamaLabel.snp.makeConstraints { make in
            make.top.equalTo(tamaImage.snp_bottomMargin).offset(20)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(140)
            make.height.equalTo(30)
        }
        abilityLabel.snp.makeConstraints { make in
            make.top.equalTo(tamaLabel.snp_bottomMargin).offset(20)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(200)
        }
        mealTextField.snp.makeConstraints { make in
            make.top.equalTo(abilityLabel.snp_bottomMargin).offset(50)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        mealSeparator.snp.makeConstraints { make in
            make.top.equalTo(mealTextField.snp_bottomMargin).offset(5)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(mealTextField)
            make.height.equalTo(1)
        }
        mealButton.snp.makeConstraints { make in
            make.top.equalTo(abilityLabel.snp_bottomMargin).offset(50)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(80)
            make.height.equalTo(40)
        }
        waterTextField.snp.makeConstraints { make in
            make.top.equalTo(mealSeparator.snp_bottomMargin).offset(30)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        waterSeparator.snp.makeConstraints { make in
            make.top.equalTo(waterTextField.snp_bottomMargin).offset(5)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(waterTextField)
            make.height.equalTo(1)
        }
        waterButton.snp.makeConstraints { make in
            make.top.equalTo(mealButton.snp_bottomMargin).offset(30)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.width.equalTo(80)
            make.height.equalTo(40)
        }
    }
    func configureUI() {
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        navigationItem.title = "정섭님의 다마고치"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)]
        navigationController?.navigationBar.tintColor  = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        bubbleImage.image = UIImage(named: "bubble")
        bubbleLabel.text = "지금은 13:34 10시까지하면 9시간 남았나..? 끝내보자!!"
        bubbleLabel.textAlignment = .center
        bubbleLabel.numberOfLines = 0
        bubbleLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        bubbleLabel.font = .boldSystemFont(ofSize: 15)

        tamaImage.image = UIImage(named: "1-9")
        
        tamaLabel.text = "방실방실 다마고치"
        tamaLabel.font = .boldSystemFont(ofSize: 15)
        tamaLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        tamaLabel.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        tamaLabel.layer.borderWidth = 1
        tamaLabel.layer.cornerRadius = 5
        tamaLabel.textAlignment = .center
        
        abilityLabel.text = "LV? \u{2022} 밥알 \(mealData[0])개 \u{2022} 물방울 \(waterData[0])개"
        abilityLabel.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        abilityLabel.font = .boldSystemFont(ofSize: 13)
        abilityLabel.textAlignment = .center
        
        if mealTextField.text!.isEmpty {
            mealTextField.placeholder = "밥주떼요"
        }
        mealTextField.textAlignment = .center
        mealTextField.contentVerticalAlignment = .center
        
        mealSeparator.backgroundColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        mealButton.setImage(UIImage(systemName: "drop.circle"), for: .normal)
        mealButton.setTitle(" 밥먹기 ", for: .normal)
        mealButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        mealButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        mealButton.layer.borderWidth = 1
        mealButton.layer.cornerRadius = 10
        mealButton.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        if waterTextField.text!.isEmpty {
            waterTextField.placeholder = "물주떼요"
        }
        waterTextField.textAlignment = .center
        waterTextField.contentVerticalAlignment = .center

        waterSeparator.backgroundColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)

        waterButton.setImage(UIImage(systemName: "leaf.circle"), for: .normal)
        waterButton.setTitle(" 물먹기 ", for: .normal)
        waterButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        waterButton.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        waterButton.layer.borderWidth = 1
        waterButton.layer.cornerRadius = 10
        waterButton.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        

        

    }
    @objc func rightBarButtonClicked() {
        print(#function)
        //go 설정
    }
    @objc func mealTextFieldExit() {
        if (Int(mealTextField.text!) != nil) {
            if !(Int(mealTextField.text!)! > 0 && (Int(mealTextField.text!)! < 50)) {
                mealTextField.text = nil
            }
        }
        else {
            mealTextField.text = nil
        }
        
    }
    @objc func waterTextFieldExit() {
        if (Int(waterTextField.text!) != nil) {
            if !(Int(waterTextField.text!)! > 0 && (Int(waterTextField.text!)! < 50)) {
                waterTextField.text = nil
            }
        }
        else {
            waterTextField.text = nil
        }
    }

}
