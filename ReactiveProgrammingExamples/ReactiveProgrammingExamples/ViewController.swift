//
//  ViewController.swift
//  ReactiveProgrammingExamples
//
//  Created by Serhat Sezer on 9.04.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTF: UITextField!
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTF
            .rx
            .controlEvent([UIControlEvents.editingChanged])
            .asObservable().subscribe { text in
                print("text changing... \(self.searchTF!.text ?? "")")
        }.disposed(by: disposeBag)
        
    }

}

