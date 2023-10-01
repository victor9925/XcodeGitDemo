//
//  StateObjectView.swift
//  github_1
//
//  Created by victor on 20/09/23.
//

import SwiftUI
//se especifica que si va a utar es observavbleObject
//sus propiedades deben usar notacion published

class UserData: ObservableObject{
   @Published var name="yo"
   @Published var age = 33
    }

struct StateObjectView: View {
    @State private var value = 0
    @State private var selection : Int?
    
    
    
     @StateObject var User = UserData()
    
    var body: some View {
        NavigationView{
        VStack {
            Button("Actualizar datos"){
                User.name = "jaja"
                User.age = 10
            }
            Text("Mi nombre es \(User.name) y Mi edad \(User.age) ")
            
            NavigationLink(destination: ObservedObjectView(user:User),tag: 2,selection: $selection){
                Button("Ir a binding view"){
                    selection = 2
                }
                
            }
        }
        .navigationTitle("StateView")
        }
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
