//
//  ContentView.swift
//  GridCalendar
//
//  Created by MAC on 25/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        struct Day: Identifiable {
            let id = UUID()
            let value: Int
        }
        struct Month {
            let name: String
            let numberOfDays: Int
            var days: [Day]
         
            init(name: String, numberOfDays: Int) {
                self.name = name
                self.numberOfDays = numberOfDays
                self.days = []
         
                for n in 1...numberOfDays {
                    self.days.append(Day(value: n))
                }
         
            }
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
