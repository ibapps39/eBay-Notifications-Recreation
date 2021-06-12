//
//  ContentView.swift
//  eBay Notifications Recreation
//
//  Created by Ian Brown on 5/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedTab = myTabs.actNow
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Notifications")
                        .font(.title).bold()
                    Spacer()
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .trailing)
                    Spacer()
                }.padding()
                
                Divider()
                
                HStack {
                    Button("Act now") {
                        onTapGesture {
                            self.selectedTab = .actNow
                        }
                    }
                    .font(.title2)
                    .animation(.easeIn)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(.leading, 50)
                    Spacer()
                    Button("See more") {
                        onTapGesture {
                            self.selectedTab = .seeMore
                        }
                    }
                    .font(.title2)
                    .animation(.easeIn)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(.trailing, 50)
                }
                Divider()
                Spacer()
            }
            if selectedTab == .actNow {
                actNow()
            }
            if selectedTab == .seeMore {
                seeMore()
            }
        }.colorScheme(colorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct actNow: View {
    var body: some View {
        VStack {
            Image(systemName: "bell")
                .resizable()
                .renderingMode(.original)
                .frame(width: 200, height: 200, alignment: .center)
            Text("You're all caught up!")
                .font(.title).bold()
        }
    }
}
struct seeMore : View {
    
    var body : some View {
        VStack {
            Image(systemName: "bell")
                .resizable()
                .renderingMode(.original)
                .frame(width: 200, height: 200, alignment: .center)
            Text("You're all caught up!")
                .font(.title).bold()
        }
    }
}

enum myTabs {
    case actNow
    case seeMore
}


