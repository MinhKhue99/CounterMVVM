    //
    //  ContentView.swift
    //  CounterMVVM
    //
    //  Created by Phạm Minh Khuê on 13/11/2022.
    //

import SwiftUI

struct ContentView: View {

    @ObservedObject private var counterViewModel: CounterViewModel

    init() {
        counterViewModel = CounterViewModel()
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(counterViewModel.premium ? "PREMIUM" : "")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 200, height: 100)
                .foregroundColor(.green)

            Spacer()

            Text("\(counterViewModel.value)")
                .font(.largeTitle)

            Spacer()

            Button(action: {
                self.counterViewModel.increment()
            }, label: {
                Text("Increment")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(color: .blue.opacity(0.3),radius: 10, x: 0.0, y: 10.0)
            })
            .padding()
        }
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
