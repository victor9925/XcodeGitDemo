//
//  ContentView.swift
//  github_1
//
//  Created by victor on 15/08/23.
//

import SwiftUI





struct mainview: View {
    var body: some View {
        VStack(spacing: 0
               ) {
            Text("First commit")
                .font(.title)
                .foregroundColor(Color.white)
                .background(Color.cyan)
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(10)
                
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray)
                    .padding(20)
                
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                    .padding(35)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.brown)
                    .padding(.bottom, 150)
                    .padding(.top,150)
                
                Text("Dentro de dos Spaces")
                    .font(.body)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.leading)
                    .padding()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                
            }
                
            Spacer()
            
            HStack {
                Text("este es mi primer playground")
                
                Spacer()
                
                Text("Este es mi primer playground")
                    .font(.body)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
            }
        }
               .padding()
               .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
