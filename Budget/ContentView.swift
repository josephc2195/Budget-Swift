//
//  ContentView.swift
//  Budget
//
//  Created by Joseph Chica on 2/20/20.
//  Copyright © 2020 Joseph Chica. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var billButton = false
    @State private var foodButton = false
    @State private var entButton = false
    @State private var billsAnamation: CGFloat = 1
    @State private var foodAnamation: CGFloat = 1
    @State private var entAnamation: CGFloat = 1
    @State private var cat = ""
    var body: some View {
        
        ZStack {
            Image("blue").resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Budget")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    
                
                Spacer()
                
                Button(" BILLS ") {
                    self.billButton.toggle()
                    self.billsAnamation += 70
                    self.cat = "Bills"
                }
                .font(.largeTitle)
                .background(Color.green)
                .cornerRadius(13)
                .scaleEffect(billsAnamation)
                .animation(.easeIn)

                Spacer()
                
                Button(" FOOD ") {
                    self.foodButton.toggle()
                    self.foodAnamation += 330
                    self.cat = "Food"
                }
                .font(.largeTitle)
                .background(Color.gray)
                .cornerRadius(13)
                .scaleEffect(foodAnamation)
                .animation(.easeIn)
                
                Spacer()
                
                Button(" ENTERTAINMENT  ") {
                    self.entButton.toggle()
                    self.entAnamation += 999
                    self.cat = "Entertainment"
                }
                .font(.largeTitle)
                .background(Color.yellow)
                .cornerRadius(13)
                .scaleEffect(entAnamation)
                .animation(.easeIn)
                
               Spacer()
                
                if billButton {
                    Category(cat: self.$cat)
                }
                
                if foodButton {
                    Category(cat: self.$cat)
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


