//
//  MainUIView.swift
//  github_1
//
//  Created by victor on 17/09/23.
//

import SwiftUI

struct MainUIView: View {
    var body: some View {
    
        ScrollView{
        VStack{
            
            MapView()
                .frame(height: 400)
            imageview()
                .frame(height: 400)
                .offset(y:-30)
            Divider()
            mainview()
                .frame(height: 400)
        }
        }
    }
    
    
}

struct MainUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainUIView()
    }
}
