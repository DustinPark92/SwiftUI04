//
//  CircleImageView.swift
//  SwiftUI04
//
//  Created by Dustin on 2021/02/01.
//

import SwiftUI


struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        Image("1")
            .resizable()
            .scaledToFill()
            .frame(width:300,height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(Circle().foregroundColor(.black)).opacity(0.3)
            .overlay(
                Circle().stroke(Color.green, lineWidth: 10)
                .padding()
                .opacity(0.7)
            ) //원 윤곽선을 그린다.
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
                .padding(30)
            ) //원 윤곽선을 그린다.
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
            ) //원 윤곽선을 그린다.
            .overlay(
               Text("박병호")
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            ) //원 윤곽선을 그린다.
            //.clipped()
            //.edgesIgnoringSafeArea(.all)
    }
}


struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}


