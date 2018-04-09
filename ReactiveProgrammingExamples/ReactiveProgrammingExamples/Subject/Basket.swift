//
//  Basket.swift
//  ReactiveProgrammingExamples
//
//  Created by Serhat Sezer on 9.04.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class Basket {
    private let bag = DisposeBag()
    var basketSubject = PublishSubject<String>()
    
    init() { }
    
    public func add(_ productName: String) {
        basketSubject.onNext(productName)
    }
    
}
