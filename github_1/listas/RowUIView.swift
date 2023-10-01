//
//  RowUIView.swift
//  github_1
//
//  Created by victor on 19/09/23.
//

import SwiftUI

struct RowUIView: View {
    var programmer:Programmer
    
    var body: some View {
        HStack{
            programmer.image
                .resizable()
                .frame(width: 40
                       , height: 40)
                .padding(7)
            VStack(alignment:.leading ){
                Text(programmer.name)
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(Color.blue)
                Text(programmer.language)
                    .font(.callout)
                    .fontWeight(.light)
            }
            Spacer()
            if programmer.favorite{
            Image(systemName: "star.fill").foregroundColor(.yellow)
            }else{Image(systemName: "star")}
        }
        
    }
}

struct RowUIView_Previews: PreviewProvider {
    static var previews: some View {
        RowUIView(programmer: Programmer(id:1,name: "Victor",language: "C,C++",image: Image(systemName: "person.fill"),favorite: false))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
