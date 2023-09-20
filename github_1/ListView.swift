//
//  ListView.swift
//  github_1
//
//  Created by victor on 19/09/23.
//

import SwiftUI

private let programmers = [Programmer(id:1,name: "Victor",language: "C,C++",image: Image(systemName: "person"),favorite: true),
                        
                           Programmer(id:2,name: "BINI",language: "Java,C++",image: Image("brit"),favorite: false)
                           ,Programmer(id:3,name: "INI",language: "Java,C++",image: Image("brit"),favorite: true)
]


struct ListView: View {
    
    @State private var showFavoritas = false
    
    private var filteredProgramers: [Programmer]{
        return programmers.filter{programmer in
            return !showFavoritas || programmer.favorite
        }
    }
    var body: some View {
        
        
        VStack {
            Toggle(isOn: $showFavoritas) {
                Text("Mostrar favoritos")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.yellow)
            }.padding()
        
            NavigationView{
            List(filteredProgramers, id: \.id){
                programmer in
                NavigationLink(destination: listdetailView(programmer: programmer)){
                    RowUIView(programmer: programmer)
                }
                
            
            }
            .navigationTitle("Programadores")
            }
        }
        
        
    }
    }


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
