//
//  ObservedObjectView.swift
//  github_1
//
//  Created by victor on 20/09/23.
//

import SwiftUI

struct ObservedObjectView: View {
   
    @ObservedObject var user:UserData
    
    var body: some View {
        
        VStack {
           // Text("El valor actual es \(value) ")
            Button("Actualizar datos"){
                user.name = "Briney Schleusner"
                user.age = 23
                
            }
            Text("Mi nombre es \(user.name) y Mi edad \(user.age) ")
            
    }
}
}
struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView(user: UserData())
    }
}
