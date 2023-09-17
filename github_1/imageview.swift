//
//  imageview.swift
//  github_1
//
//  Created by victor on 12/09/23.
//

import SwiftUI

struct imageview: View {
    var body: some View {
        VStack{
            HStack {
                Image("brit").resizable()
                    .scaledToFit()
                    .frame(width: 50
                       , height: 20).background(Color.gray).clipShape(Circle())
                Spacer()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.brown)
                    .frame(width: 200
                       , height: 20)
                Spacer()
                
                Image("brit").resizable()
                    .scaledToFit()
                    .frame(width: 50
                       , height: 20).background(Color.green).clipShape(Circle())
                
            }.padding(.top,0)
            
            Spacer()
            
            Image("brit").resizable().scaledToFit()
        }
        
        
    }
}

struct imageview_Previews: PreviewProvider {
    static var previews: some View {
        imageview()
    }
}
