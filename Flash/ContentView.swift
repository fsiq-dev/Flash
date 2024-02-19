//
//  ContentView.swift
//  Flash
//
//  Created by felps on 19/02/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var selectedTab: Int? = nil
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedTab {
                case 0: NavigationView {
                    VStack{
                        Text("frist screen")
                    }
                }
                case 2: NavigationView{
                    VStack{
                        Text("second screen")
                    }
                }
                default:
                    NavigationView {
                        VStack {
                            Text("Home")
                        }
                    }
                }
            }
            Spacer()
            
            TabView(tab: $selectedTab)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

