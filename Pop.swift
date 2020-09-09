//
//  Pop.swift
//  Leonitus
//
//  Created by Matthew Ross on 6/21/20.
//  Copyright © 2020 Matthew Ross. All rights reserved.
//

import SwiftUI

struct Pop1 : View {
    @ObservedObject var pop = Pop()
    
    private var animationIn: Animation {
        Animation
            .spring(dampingFraction: 0.6)
            .speed(1.5)
            .delay(0.02)
    }
    private var animationOut: Animation {
        Animation
            .spring()
            .speed(1.9)
    }
    
    var body : some View {
        VStack{
            

                
                Button(action: {
            
                    
                }) {
                    Text("ADD")
                        .frame(width: 80, height: 15)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .background(Color("Dark"))
                        .foregroundColor(Color("Light"))
                        .border(Color("Dark"))
                        .cornerRadius(5)

                    }
                

                Button(action: {
                    
                }) {
                    Text("EDIT")
                        .frame(width: 80, height: 15)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .background(Color("Dark"))
                        .foregroundColor(Color("Light"))
                        .border(Color("Dark"))
                        .cornerRadius(5)

                        }
                    
                    
                }
                .background(Color("Dark"))
                .cornerRadius(5)
                .shadow(radius: 5)
                .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 1))
                .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
            }
        }

struct Pop2 : View {

var body : some View {
    VStack{
        
        ZStack {
            
            Button(action: {
                
            }) {
                Text("ADD")
                .frame(width: 80, height: 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(Color("Dark"))
                .foregroundColor(Color("Light"))
                .border(Color("Dark"))
                .cornerRadius(5)
                }
            }
        ZStack {
            Button(action: {
                
            }) {
                Text("EDIT")
                .frame(width: 80, height: 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(Color("Dark"))
                .foregroundColor(Color("Light"))
                .border(Color("Dark"))
                .cornerRadius(5)
                }
                }
            }
            .background(Color("Dark"))
            .cornerRadius(5)
            .shadow(radius: 5)
            .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 1))
            .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
        }
    }

struct Pop3 : View {

var body : some View {
    VStack{
        
        ZStack {
            
            Button(action: {
                
            }) {
                Text("ADD")
                .frame(width: 80, height: 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(Color("Dark"))
                .foregroundColor(Color("Light"))
                .border(Color("Dark"))
                .cornerRadius(5)
                }
            }
        ZStack {
            Button(action: {
                
            }) {
                Text("EDIT")
                .frame(width: 80, height: 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(Color("Dark"))
                .foregroundColor(Color("Light"))
                .border(Color("Dark"))
                .cornerRadius(5)
                }
                }
            }
            .background(Color("Dark"))
            .cornerRadius(5)
            .shadow(radius: 5)
            .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 1))
            .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
        }
    }

struct Pop4 : View {

var body : some View {
    VStack{
        
        ZStack {
            
            Button(action: {
                
            }) {
                Text("ADD")
                .frame(width: 80, height: 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(Color("Dark"))
                .foregroundColor(Color("Light"))
                .border(Color("Dark"))
                .cornerRadius(5)
                }
            }
        ZStack {
            Button(action: {
                
            }) {
                Text("EDIT")
                .frame(width: 80, height: 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .background(Color("Dark"))
                .foregroundColor(Color("Light"))
                .border(Color("Dark"))
                .cornerRadius(5)
                }
                }
            }
            .background(Color("Dark"))
            .cornerRadius(5)
            .shadow(radius: 5)
            .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 1))
            .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
        }
    }

//struct Pop_Previews: PreviewProvider {
//    static var previews: some View {
//        Pop()
//    }
//}
