//
//  listdetailView.swift
//  github_1
//
//  Created by victor on 19/09/23.
//

import SwiftUI

struct listdetailView: View {
    
    var programmer:Programmer
    
    var body: some View {
        VStack{
            programmer.image.resizable()
                .scaledToFit()
                .frame(width: 200
                       , height: 200).clipShape(Circle()).overlay(Circle().stroke(Color .black,lineWidth: 4)).shadow( radius: 5)
            Text(programmer.name).font(.largeTitle)
            Text(programmer.language)
                .font(.title)
            
            Spacer()
        }
    }
}

struct listdetailView_Previews: PreviewProvider {
    static var previews: some View {
        listdetailView(programmer: Programmer(id:1,name: "Victor",language: "C,C++",image: Image(systemName: "person.fill"),favorite: true))
    }
}
