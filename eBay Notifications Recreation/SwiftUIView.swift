//
//  SwiftUIView.swift
//  eBay Notifications Recreation
//
//  Created by Ian Brown on 5/13/21.
//

import SwiftUI


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct SwiftUIView: View {
    
    @State var selectedTab = Tabs.FirstTab
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "airplane")
                        .foregroundColor(selectedTab == .FirstTab ? Color.red : Color.black)
                    Text("First tab")
                }
                .onTapGesture {
                    self.selectedTab = .FirstTab
                }
                Spacer()
                VStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(selectedTab == .SecondTab ? Color.red : Color.black)
                    Text("Second tab")
                }
                .onTapGesture {
                    self.selectedTab = .SecondTab
                }
                Spacer()
                VStack {
                    Image(systemName: "cart.fill")
                        .foregroundColor(selectedTab == .ThirdTab ? Color.red : Color.black)
                    Text("Third tab")
                }
                .onTapGesture {
                    self.selectedTab = .ThirdTab
                }
                Spacer()
            }
            .padding(.bottom)
            .background(Color.green.edgesIgnoringSafeArea(.all))
            
            Spacer()
            
            if selectedTab == .FirstTab {
                FirstTabView()
            } else if selectedTab == .SecondTab {
                SecondTabView()
            } else {
                ThirdTabView()
            }
        }
    }
}

struct FirstTabView : View {
    
    var body : some View {
        VStack {
            Text("FIRST TAB VIEW")
        }
    }
}

struct SecondTabView : View {
    
    var body : some View {
        Text("SECOND TAB VIEW")
    }
}

struct ThirdTabView : View {
    
    var body : some View {
        Text("THIRD TAB VIEW")
    }
}

enum Tabs {
    case FirstTab
    case SecondTab
    case ThirdTab
}
