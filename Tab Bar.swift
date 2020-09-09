//
//  Tab Bar.swift
//  Testing Preview
//
//  Created by Matthew Ross on 8/9/20.
//

import SwiftUI

struct Tab_Bar: View {
    
    @State var index = 99
    @Namespace private var animation1
    @Namespace private var animation2
    @Namespace private var animation3
    @State private var isFlipped = false
    @State private var isFlipped2 = false
    @State private var isFlipped3 = false
    @State private var timeUp = false

    
    var body: some View {
        
        VStack {
            
            Spacer(minLength: 0)
            
            HStack(spacing: 0) {
                
                if isFlipped2 == true {
                
                Button {
                    
                    withAnimation(Animation.easeIn(duration: 0.35)) {
                        index = 0; isFlipped = false; isFlipped2 = true; isFlipped3 = false
                    }
                    
                } label: {
                    
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 30, height: 29)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .opacity(index == 0 ? 1 : 0)
                        .padding(8)
                        .background(Color("DarkBack"))
                        .cornerRadius(7)
                        .offset(x: 15)
                        //.shadow(radius: 2)
                        //.transition(.scale)
                        .matchedGeometryEffect(id: "SquareFour", in: animation2, properties: .position)
                        .zIndex(20)
                        
 
                    Text(index == 0 ? "People" : "")
                        .frame(width: 80, height: 45)
                        .foregroundColor(.white)
                        .background(Color("DarkBack"))
                        //.padding(.leading, -5)
                        //.padding(.trailing, -20)
                        .opacity(index == 0 ? 1 : 0)
                        .cornerRadius(8)
                        .offset(x: -5)
                        .shadow(radius: 2)
                        //.onHover(perform: { hovering in
                        //    isFlipped3 = true; isFlipped2 = false; isFlipped = false
                        //})
                        //.transition(.asymmetric(insertion: AnyTransition.slide.animation(.easeInOut), removal: .offset(x: -15, y: 0)))
                        .matchedGeometryEffect(id: "SquareThree", in: animation2, properties: .position, anchor: .center)
                        //.zIndex(10)
    
                            }
                } else {
                    
                Button {
                    withAnimation(Animation.easeIn(duration: 0.35)) {
                        index = 0; isFlipped = false; isFlipped2 = true; isFlipped3 = false
                    }
                } label: {
                        
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 30, height: 29)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(index == 0 ? .clear : .white)
                        .padding(8)
                        .background(index == 0 ? Color.clear : Color("DarkBack"))
                        .cornerRadius(7)
                        .offset(x: 15, y: 0)
                        //.transition(.asymmetric(insertion: AnyTransition.scale(scale: 1, anchor: .center).animation(.easeInOut), removal: .opacity))
                        .matchedGeometryEffect(id: "SquareFour", in: animation2, properties: .position)
                        //.zIndex(20)
                    
                    Rectangle()
                        .frame(width: 30, height: 29)
                        .background(Color.clear)
                        .opacity(0.0)
                        .offset(x: -35)
                        .matchedGeometryEffect(id: "SquareThree", in: animation2, properties: .position)
                        //.zIndex(20)
    
                        }
                    }
                
                Spacer(minLength: 0)
                
                Button {

                    withAnimation(Animation.easeIn(duration: 0.25)) {
                        index = 1; isFlipped = true; isFlipped2 = false; isFlipped3 = false
                    }
                    
                } label: {
                    
                    HStack {
                        
                        if isFlipped {
                        
                        Text(index == 1 ? "Home" : "")
                            .frame(width: 90, height: 45)
                            .foregroundColor(.white)
                            .background(Color("DarkBlue"))
                            .padding(.leading, -10)
                            .padding(.trailing, -12)
                            .opacity(index == 1 ? 1 : 0)
                            .cornerRadius(8)
                            //.onHover(perform: { hovering in
                            //    isFlipped = true; isFlipped2 = false; isFlipped3 = false
                            //})
                            .transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .scale(scale: 0.6, anchor: .center)), removal: .scale(scale: 0.85, anchor: .trailing)))
                            .matchedGeometryEffect(id: "SquareOne", in: animation1, properties: .size)
                        
  
                            
                        } else {
                            
                        Image(systemName: "circle.grid.hex.fill")
                            .resizable()
                            .frame(width: 30, height: 29)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.white.opacity(index == 1 ? 0 : 1))
                            .padding(8)
                            .background(Color("DarkBack").opacity(index == 1 ? 0 : 1))
                            .cornerRadius(7)
                            .transition(.asymmetric(insertion: AnyTransition.scale.combined(with: .opacity), removal: .scale))
                            .matchedGeometryEffect(id: "SquareOne", in: animation1)

                        }
                    }
                }
                
                Spacer(minLength: 0)
                
                if isFlipped3 == true {
                
                Button {
                    
                    withAnimation(Animation.easeIn(duration: 0.35)) {
                        index = 2; isFlipped = false; isFlipped2 = false; isFlipped3 = true
                    }
                    
                } label: {
 
                    Text(index == 2 ? "People" : "")
                        .frame(width: 80, height: 45)
                        .foregroundColor(.white)
                        .background(Color("DarkBack"))
                        //.padding(.leading, -5)
                        //.padding(.trailing, -10)
                        .opacity(index == 2 ? 1 : 0)
                        .cornerRadius(8)
                        .offset(x: 10)
                        //.onHover(perform: { hovering in
                        //    isFlipped3 = true; isFlipped2 = false; isFlipped = false
                        //})
                        //.transition(.asymmetric(insertion: AnyTransition.offset(x: -15, y: 20), removal: .opacity))
                        .matchedGeometryEffect(id: "SquareFive", in: animation3, properties: .position, anchor: .trailing)
                        //.zIndex(10)
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 29)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .opacity(index == 2 ? 1 : 0)
                        .padding(8)
                        .background(index == 2 ? Color("DarkBack") : Color.clear)
                        .cornerRadius(7)
                        .offset(x: -13)
                        //.shadow(radius: 2)
                        //.transition(.scale)
                        .matchedGeometryEffect(id: "SquareSix", in: animation3, properties: .size)
                        .zIndex(20)
    
                            }
                } else {
                    
                Button {
                    withAnimation(Animation.easeIn(duration: 0.35)) {
                        index = 2; isFlipped = false; isFlipped2 = false; isFlipped3 = true
                    }
                } label: {
                        
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 30, height: 29)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(index == 2 ? .clear : .white)
                        .padding(8)
                        .background(index == 2 ? Color.clear : Color("DarkBack"))
                        .cornerRadius(7)
                        .offset(x: 25, y: 0)
                        //.transition(.asymmetric(insertion: AnyTransition.scale(scale: 1, anchor: .center).animation(.easeInOut), removal: .opacity))
                        .matchedGeometryEffect(id: "SquareSix", in: animation3, properties: .size, anchor: .leading)
                        //.zIndex(20)
                    
                    Rectangle()
                        .frame(width: 30, height: 29)
                        .background(Color.clear)
                        .opacity(0.0)
                        .offset(x: -20)
                        .matchedGeometryEffect(id: "SquareFive", in: animation3, properties: .position, anchor: .leading)
                        //.zIndex(20)
    
                    }
                }
            }
            .padding(.top)
            .padding(.horizontal, 25)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(Color(red: 245/255, green: 245/255, blue: 245/255))
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}

//struct TabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Tab_Bar()
    }
}
