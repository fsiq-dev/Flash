//
//  TabView.swift
//  Flash
//
//  Created by felps on 19/02/24.
//

import SwiftUI

struct TabView: View {
    @Binding var tab: Int?
    
    struct navItem {
            let id: Int
            let icon: String
            let name: String
    }
    
    let nav = [
        navItem(id: 0, icon: "person.2", name:"Perfil"),
        navItem(id: 1, icon: "figure.run", name:"Treinar"),
        navItem(id: 2, icon:"gearshape", name: "Configurar")
    ]
    
    var body: some View {
        Divider()
            .padding(.bottom, 8)
        HStack {
            ForEach(nav, id: \.id) {
                item in
                
                Spacer()
                Button(action: {
                    tab = item.id
                }, label: {
                    VStack {
                        Image(systemName: "\(item.icon)")
                            .font(.system(size: 25, weight: .regular,design: .default))
                            .foregroundColor(tab == item.id ? .black : Color(UIColor.lightGray))
                            .padding(.bottom, 4)
                        Text("\(item.name)")
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .foregroundColor(tab == item.id ? .black : Color(UIColor.lightGray))
                    }
                })
                Spacer()
            
            }
        }
    }
}

