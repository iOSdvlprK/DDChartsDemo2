//
//  ContentView.swift
//  DDChartsDemo2
//
//  Created by joe on 12/28/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    let min = 0.0
    let max = 1000.0
    
    var body: some View {
        VStack {
            Text("Welcome to Charts!")
                .font(.largeTitle)
            
            Chart {
                BarMark(
                    x: .value("Day", "Sun"),
                    y: .value("Sales", 100)
                )
                .annotation {
                    Image(systemName: "figure.walk.circle.fill")
                        .foregroundStyle(Color.blueViolet)
                        .font(.title)
                        .fontWeight(.bold)
                }
                BarMark(
                    x: .value("Day", "Mon"),
                    y: .value("Sales", 250)
                )
                .annotation(position: .bottom, alignment: .center) {
                    Image(systemName: "figure.dance")
                        .foregroundStyle(Color.blueViolet)
                        .font(.title)
                        .fontWeight(.bold)
                }
                BarMark(
                    x: .value("Day", "Tue"),
                    y: .value("Sales", 75.3)
                )
                .annotation(position: .top, alignment: .center) {
                    Image(systemName: "figure.dance")
                        .foregroundStyle(Color.blueViolet)
                        .font(.title)
                        .fontWeight(.bold)
                }
                BarMark(
                    x: .value("Day", "Wed"),
                    y: .value("Sales", 850)
                )
                .annotation(position: .leading, alignment: .center) {
                    Image(systemName: "figure.fishing")
                        .foregroundStyle(Color.orangeRed)
                        .font(.title)
                        .fontWeight(.bold)
                }
                BarMark(
                    x: .value("Day", "Thu"),
                    y: .value("Sales", 450)
                )
                .annotation(position: .trailing, alignment: .center) {
                    Image(systemName: "figure.fishing")
                        .foregroundStyle(Color.orangeRed)
                        .font(.title)
                        .fontWeight(.bold)
                }
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 20.23)
                )
                .annotation(position: .bottom, alignment: .center) {
                    Circle().stroke(lineWidth: 3)
                }
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 320)
                )
                .annotation {
                    Rectangle()
                        .fill(Color.red)
                }
            }
            .chartYScale(domain: min...max)
            .chartXAxis {
                AxisMarks(position: .bottom)
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
