//
//  ContentView.swift
//  github_1
//
//  Created by victor on 15/08/23.
//

import SwiftUI





struct mainview: View {
    var body: some View {
        VStack {
            Text("First commit")
                .font(.title)
                .foregroundColor(Color.green)
            
            Text("este es mi primer playground")

            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
