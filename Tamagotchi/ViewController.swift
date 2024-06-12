//
//  ViewController.swift
//  Tamagotchi
//
//  Created by t2023-m0032 on 6/7/24.
//

import UIKit
import SnapKit

var buttonClicked = 0

class ViewController: UIViewController {
        
    let tableView = UITableView()
    
    let navigationcontroller = UINavigationController(rootViewController: DetailViewController())
    
//    static var image0 = "1-9"
//    static var image1 = "2-9"
//    static var image2 = "3-9"
//    
//    static var whatView = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHirarchy()
        configureLayout()
        configureUI()
        print(#function)
        
    }
    func configureHirarchy() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TamagotchiTableViewCell.self, forCellReuseIdentifier: "TamagotchiTableViewCell")
        //view.addSubview(tableViewCell)
    }
    func configureLayout() {
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view)
        }
        tableView.rowHeight = 150
    }
    func configureUI() {
        view.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        navigationItem.title = "다마고치 선택하기"
        tableView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255, alpha: 1)
        tableView.separatorStyle = .none
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TamagotchiTableViewCell", for: indexPath) as! TamagotchiTableViewCell
        
        if indexPath.row == 0 {
            cell.firstImageButton.setImage(UIImage(named: "1-9"), for: .normal)
            cell.firstLabelButton.setTitle("따끔따끔 다마고치", for: .normal)
            
            cell.secondImageButton.setImage(UIImage(named: "2-9"), for: .normal)
            cell.secondLabelButton.setTitle("방실방실 다마고치", for: .normal)
            
            cell.thirdImageButton.setImage(UIImage(named: "3-9"), for: .normal)
            cell.thirdLabelButton.setTitle("반짝반짝 다마고치", for: .normal)
            
            cell.firstImageButton.addTarget(self, action: #selector(firstButtonClicked), for: .touchUpInside)
            cell.firstLabelButton.addTarget(self, action: #selector(firstButtonClicked), for: .touchUpInside)
            cell.secondImageButton.addTarget(self, action: #selector(secondButtonClicked), for: .touchUpInside)
            cell.secondLabelButton.addTarget(self, action: #selector(secondButtonClicked), for: .touchUpInside)
            cell.thirdImageButton.addTarget(self, action: #selector(thirdButtonClicked), for: .touchUpInside)
            cell.thirdLabelButton.addTarget(self, action: #selector(thirdButtonClicked), for: .touchUpInside)
        }
        else {
            cell.firstImageButton.setImage(UIImage(named: "noImage"), for: .normal)
            cell.firstLabelButton.setTitle("준비중이에요", for: .normal)
            
            cell.secondImageButton.setImage(UIImage(named: "noImage"), for: .normal)
            cell.secondLabelButton.setTitle("준비중이에요", for: .normal)
            
            cell.thirdImageButton.setImage(UIImage(named: "noImage"), for: .normal)
            cell.thirdLabelButton.setTitle("준비중이에요", for: .normal)
        }
        
        return cell
    }
    @objc func firstButtonClicked() {
        //3.회면 띄우기
        navigationcontroller.modalPresentationStyle = .overFullScreen
        present(navigationcontroller, animated: true)
        buttonClicked = 0
        print(#function,buttonClicked)
        

    }
    @objc func secondButtonClicked() {
        navigationcontroller.modalPresentationStyle = .overFullScreen
        present(navigationcontroller, animated: true)
        buttonClicked = 1
        print(#function,buttonClicked)

    }
    @objc func thirdButtonClicked() {
        navigationcontroller.modalPresentationStyle = .overFullScreen
        present(navigationcontroller, animated: true)
        buttonClicked = 2
        print(#function,buttonClicked)

    }
    
    
}
