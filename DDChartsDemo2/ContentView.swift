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
    @State var isLegendVisible: Bool = false
    
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
                .foregroundStyle(by: .value("Day", "Sunday"))
                
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
                .foregroundStyle(by: .value("Day", "Monday"))
                
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
                .foregroundStyle(by: .value("Day", "Tuesday"))
                
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
                .foregroundStyle(by: .value("Day", "Wednesday"))
                
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
                .foregroundStyle(by: .value("Day", "Sunday"))
                
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 60.23)
                )
                .annotation(position: .bottom, alignment: .center) {
                    Circle().stroke(lineWidth: 3)
                }
                .foregroundStyle(by: .value("Day", "Monday"))
                
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 70)
                )
                .annotation(position: .bottom, alignment: .center) {
                    Circle().stroke(lineWidth: 3)
                }
                .foregroundStyle(by: .value("Day", "Wednesday"))
                
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 320)
                )
                .annotation {
                    Rectangle()
                        .fill(Color.red)
                }
                .foregroundStyle(by: .value("Day", "Sat #1"))
                
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 400)
                )
                .annotation {
                    Rectangle()
                        .fill(Color.red)
                }
                .foregroundStyle(by: .value("Day", "Sat #2"))
            }
            .chartYScale(domain: min...max)
            .chartXAxis {
                AxisMarks(position: .bottom)
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            .chartLegend(isLegendVisible ? .visible : .hidden)
//            .chartLegend(position: .leading, alignment: .center, spacing: 50)
            .padding()
            
            Button(action: {
                withAnimation {
                    isLegendVisible.toggle()
                }
            }, label: {
                Image(systemName: isLegendVisible ? "eye" : "eye.slash")
            })
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
