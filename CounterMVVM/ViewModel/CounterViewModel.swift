    //
    //  CounterViewModel.swift
    //  CounterMVVM
    //
    //  Created by Phạm Minh Khuê on 13/11/2022.
    //

import Foundation

class CounterViewModel: ObservableObject {

    @Published private var counter: Counter = Counter()

    var value: Int {
        counter.value
    }

    var premium: Bool {
        counter.isPremium
    }

    func increment() {
        counter.increment()
    }

}
