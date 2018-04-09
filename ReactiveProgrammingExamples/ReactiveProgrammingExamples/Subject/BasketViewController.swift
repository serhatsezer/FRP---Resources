//
//  BasketViewController.swift
//  ReactiveProgrammingExamples
//
//  Created by Serhat Sezer on 9.04.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class BasketViewController: UIViewController {

    private let disposeBag = DisposeBag()
    private let basket = Basket()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        basket.basketSubject.asObserver().subscribe(onNext: { value in
            print("value \(value)")
        }, onError: { error in
            print(error.localizedDescription)
        }, onCompleted: {
            print("completed")
        })
        .disposed(by: disposeBag)
        
    }

    @IBAction func addToCart(_ sender: UIButton) {
        basket.add("Biskevit")
    }
    

}
