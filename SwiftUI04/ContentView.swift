//
//  ContentView.swift
//  SwiftUI04
//
//  Created by Dustin on 2021/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("1")
                    .frame(height:10)
                    .offset(y: -800)
                
                
                CircleImageView()
                HStack {
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://github.com/DustinPark92")
                            .edgesIgnoringSafeArea(.all)
                        ,
                        label: {
                            Text("박병호 깃허브")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(20)
                        })
                    
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://github.com/DustinPark92")
                            .edgesIgnoringSafeArea(.all)
                        ,
                        label: {
                            Text("오픈 카톡방 가기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(20)
                        })
                    
                    
                } //HStack
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
