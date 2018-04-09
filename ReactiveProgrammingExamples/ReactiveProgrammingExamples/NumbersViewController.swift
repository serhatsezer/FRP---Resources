//
//  NumbersViewController.swift
//  ReactiveProgrammingExamples
//
//  Created by Serhat Sezer on 9.04.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class NumbersViewController: ViewController {
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number3: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func example1() {
        Observable.combineLatest(number1.rx.text.orEmpty, number2.rx.text.orEmpty, number3.rx.text.orEmpty) { textValue1, textValue2, textValue3 -> Int in
            return (Int(textValue1) ?? 0) + (Int(textValue2) ?? 0) + (Int(textValue3) ?? 0)
            }
            .map { $0.description }
            .bind(to: result.rx.text)
            .disposed(by: disposeBag)
    }
    
    func example2() {
        let helloSequence = Observable.just("Hello Rx")
        
        helloSequence.subscribe { event in
            print(event.element) // emit value
        }
        .disposed(by: disposeBag)
        
        let fibonacciSequence = Observable.from([0,1,1,2,3,5,8])
        fibonacciSequence.subscribe { event in
            print("fibonacci \(event.element)")
        }
        .disposed(by: disposeBag)
        
        let dictSequence = Observable.from([1: "Hello", 2: "World"])
        dictSequence.subscribe { event in
            print("key-value pair \(event.element)")
        }
        .disposed(by: disposeBag)
    }
}
