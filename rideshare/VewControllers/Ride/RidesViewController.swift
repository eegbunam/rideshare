//
//  RidesViewController.swift
//  rideshare
//
//  Created by Ebuka Egbunam on 8/3/21.
//

import Foundation
import UIKit


class RidesViewController : UIViewController {
    
    lazy var ridesTable : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UINib(nibName: "RideCell", bundle: nil), forCellReuseIdentifier: "RideCell")
        return tableView
    }()
    
    lazy var leftButtons : [UIBarButtonItem] = {
        
        let leftbarItems = [UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(goToProfile))]
        return leftbarItems
        
    }()
    
    lazy var rightButtons : [UIBarButtonItem] = {
        
        let rightbarItems = [UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(goToSettings))]
        return rightbarItems
        
    }()
    

    override func viewDidLoad() {
        setUpNaviagtion()
        title = "Rides"
        ridesTable.delegate = self
        ridesTable.dataSource = self
        setUpViewLayout()
        
    }
    
    
    @objc private func goToSettings(){
        print("go to settings ")
    }
    @objc private func goToProfile(){
        print("going to profile")
        
    }
    private func setUpNaviagtion(){
        
        navigationController?.navigationBar.topItem?.rightBarButtonItems = rightButtons
        navigationController?.navigationBar.topItem?.leftBarButtonItems = leftButtons
        
    }
    
    
    private func setUpViewLayout(){
        
        let stackView = UIStackView(arrangedSubviews: [ridesTable])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8)

        ])
                
        
    }
    
    
}

extension RidesViewController :  UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ridesTable.dequeueReusableCell(withIdentifier: "RideCell") as! RideCellTableViewCell
        cell.backgroundColor = .blue
        return cell
    }
    
    
}

