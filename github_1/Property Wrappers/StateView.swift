//
//  StateView.swift
//  github_1
//
//  Created by victor on 20/09/23.
//

import SwiftUI

  

struct StateView: View {
    //@State es usado cuando hay propiedade s que van a
    //cambiar su valor
    //la propiedad pertenece a la view que la usa
    @State private var value = 0
    @State private var selection : Int?
    
    var body: some View {
        
        NavigationView{
        VStack {
            Text("El valor actual es \(value) ")
            Button("Suma 1"){
                
                value += 1
            }
            NavigationLink(destination: BindingView(value:$value),tag: 2,selection: $selection){
                Button("Ir a binding view"){
                    selection = 2
                }
                
            }
        }
        .navigationTitle("StateView")
        }
        
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
