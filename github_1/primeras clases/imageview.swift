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
                
                
                
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.brown)
                    .frame(width: 400
                       , height: 20)
              
                
                Image("brit").resizable()
                    .scaledToFit()
                    .frame(width: 50
                       , height: 20).background(Color.green).clipShape(Circle())
                    .offset(x:-70)
                
                Image("brit").resizable()
                    .scaledToFit()
                    .frame(width: 50
                       , height: 20).background(Color.gray).clipShape(Circle())
                    .offset(x:-330)
                
                
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
