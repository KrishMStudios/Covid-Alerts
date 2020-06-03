//
//  ContentView.swift
//  CoronaVirusTracker
//
//  Created by Alfian Losari on 04/03/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import SwiftUI

private struct Tab: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            StatsView()
                .tabItem {
                    Tab(imageName: "chart.pie.fill", text: "Data")
            }
            .tag(0)
            
            ContainerMapView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem {
                    Tab(imageName: "mappin.and.ellipse", text: "Maps")
            }
            .tag(1)
            
            AdviceView()
                .tabItem {
                    Tab(imageName: "lightbulb.fill", text: "Tips")
            }
            .tag(2)
            
            AboutView()
                .tabItem {
                    Tab(imageName: "person.2.fill", text: "About Us")
            }
            .tag(3)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
