//
//  ContentView.swift
//  Leonitus
//
//  Created by Matthew Ross on 6/21/20.
//  Copyright © 2020 Matthew Ross. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: People.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \People.firstName, ascending: true)]) var people: FetchedResults<People>
    
    @ObservedObject var viewRouter = ViewRouter()
    @ObservedObject var pop = Pop()
    
    @State private var offset = CGSize.zero
    @State private var isUserSwiping: Bool = false
    
    var itemsPerRow = 3
    
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
    
    var body: some View {
        
        let dragGesture1 = DragGesture()
            .onChanged { value in self.offset = value.translation}
            .onEnded {_ in
                pop.popMenu = "pop1"
            }
        
        let pressGesture1 = LongPressGesture(minimumDuration: 1)
            .onEnded {_ in
                self.pop.popMenu = "NoPop" }
        
        let dragGesture2 = DragGesture()
            .onChanged { value in self.offset = value.translation}
            .onEnded {_ in
                pop.popMenu = "pop2"
            }
        
        let pressGesture2 = LongPressGesture(minimumDuration: 1)
            .onEnded {_ in
                self.pop.popMenu = "NoPop" }
        
        let dragGesture3 = DragGesture()
            .onChanged { value in self.offset = value.translation}
            .onEnded {_ in
                pop.popMenu = "pop3"
            }
        
        let pressGesture3 = LongPressGesture(minimumDuration: 1)
            .onEnded {_ in
                self.pop.popMenu = "NoPop" }
        
        let dragGesture4 = DragGesture()
            .onChanged { value in self.offset = value.translation}
            .onEnded {_ in
                pop.popMenu = "pop4"
            }
        
        let pressGesture4 = LongPressGesture(minimumDuration: 1)
            .onEnded {_ in
                self.pop.popMenu = "NoPop" }
        
        let combined1 = dragGesture1.sequenced(before: pressGesture1)
        let combined2 = dragGesture2.sequenced(before: pressGesture2)
        let combined3 = dragGesture3.sequenced(before: pressGesture3)
        let combined4 = dragGesture4.sequenced(before: pressGesture4)
        
            VStack {
                Spacer()
                if self.viewRouter.currentView == "home" {
                    VStack {
                        GridView()
                            .contentShape(Rectangle())
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        offset = value.translation
                                    }
                                    .onEnded { _ in
                                        if offset.width > 15 {
                                            viewRouter.currentView = "calendar"
                                        } else {
                                            offset = .zero
                                        }
                                    }
                            )
                    }
                }
                else if self.viewRouter.currentView == "calendar" {
                    Text("Calendar")
                }
                else if self.viewRouter.currentView == "map" {
                    Text("Visits")
                }
                else if self.viewRouter.currentView == "settings" {
                    Text("Settings")
                }
                Spacer()
                ZStack {
                    if self.pop.popMenu == "pop1" {
                    Pop1()
                        .offset(x: -158, y: -84)
                    }
                        
                    else if self.pop.popMenu == "pop2" {
                    Pop2()
                        .offset(x: -53, y: -84)
                    }
                        
                    else if self.pop.popMenu == "pop3"{
                    Pop3()
                        .offset(x: 56, y: -84)
                    }
                        
                    else if self.pop.popMenu == "pop4" {
                    Pop4()
                        .offset(x: 158, y: -84)
                    }
                    
                    HStack {
                        Button(action: {
                            self.viewRouter.currentView = "home"; self.pop.popMenu = "NoPop"
                            }) {
                                
                                ZStack {

                                    Image(systemName: "person.crop.square")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "home" ? 1 : 0.3)
                        
                                    if self.viewRouter.currentView == "home" {
                                       
                                        Image(systemName: "person.crop.square")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 28, height: 28)
                                        .foregroundColor(Color("Light"))
                                        .opacity(self.viewRouter.currentView == "home" ? 1 : 0.3)
                                        .gesture(combined1)
                                        
                                       RoundedRectangle(cornerRadius: 25, style: .continuous)
                                       .fill(Color("Accent"))
                                       .frame(width: 25, height: 5)
                                       .offset(x: 0, y: 22)
                                       .onTapGesture { self.pop.popMenu = "NoPop" }
                                       .onLongPressGesture(minimumDuration: 0.3) { self.pop.popMenu = "pop1"}
                                    }
                                }
                            }.animation(.easeInOut(duration: 0.25))
                        
                            Spacer(minLength: 0)
                            
                            Button(action: {
                                
                                self.viewRouter.currentView = "calendar"; self.pop.popMenu = "NoPop"
                                
                            }) {
                                
                                ZStack {
                                    
                                    Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 30)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "calendar" ? 1 : 0.3)
                                    
                                    if self.viewRouter.currentView == "calendar" {
                                        
                                        
                                    Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 30)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "calendar" ? 1 : 0.3)
                                    .gesture(combined2)
                                    
                                    
                                   RoundedRectangle(cornerRadius: 25, style: .continuous)
                                   .fill(Color("Accent"))
                                   .frame(width: 25, height: 5)
                                   .offset(x: 0, y: 22)
                                   .onTapGesture { self.pop.popMenu = "NoPop" }
                                   .onLongPressGesture(minimumDuration: 0.3) { self.pop.popMenu = "pop2" }
                                }
                            }
                        }.animation(.easeInOut(duration: 0.25))
                            
                            Spacer(minLength: 0)
                            
                            Button(action: {
                                
                                self.viewRouter.currentView = "map"; self.pop.popMenu = "NoPop"
                                
                            }) {
                                
                                ZStack {
                                    
                                    Image(systemName: "mappin.and.ellipse")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 30)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "map" ? 1 : 0.3)
                                    
                                    if self.viewRouter.currentView == "map" {
                                        
                                        
                                    Image(systemName: "mappin.and.ellipse")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 30)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "map" ? 1 : 0.3)
                                    .gesture(combined3)
                                    
                                    
                                   RoundedRectangle(cornerRadius: 25, style: .continuous)
                                   .fill(Color("Accent"))
                                   .frame(width: 25, height: 5)
                                   .offset(x: 0, y: 22)
                                   .onTapGesture { self.pop.popMenu = "NoPop" }
                                   .onLongPressGesture(minimumDuration: 0.3) { self.pop.popMenu = "pop3" }
                                }
                            }
                        }.animation(.easeInOut(duration: 0.25))
                            
                            Spacer(minLength: 0)
                            
                            Button(action: {
                                
                               self.viewRouter.currentView = "settings"; self.pop.popMenu = "NoPop"
                                
                            }) {
                                
                                ZStack {
                                    
                                    Image(systemName: "square.grid.2x2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 30)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "settings" ? 1 : 0.3)
                                    
                                    if self.viewRouter.currentView == "settings" {
                                        
                                        
                                    Image(systemName: "square.grid.2x2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 28, height: 30)
                                    .foregroundColor(Color("Light"))
                                    .opacity(self.viewRouter.currentView == "settings" ? 1 : 0.3)
                                    .gesture(combined4)
                                    
                                    
                                   RoundedRectangle(cornerRadius: 25, style: .continuous)
                                   .fill(Color("Accent"))
                                   .frame(width: 25, height: 5)
                                   .offset(x: 0, y: 22)
                                   .onTapGesture { self.pop.popMenu = "NoPop" }
                                   .onLongPressGesture(minimumDuration: 0.3) { self.pop.popMenu = "pop4" }
                                }
                            }
                        }.animation(.easeInOut(duration: 0.25))
                        }
                        .offset(x: 0, y: 10)
                        .padding(.horizontal, 35)
                        .padding(.top, 12)
                        .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 15)
                        .background(Color("Dark"))
                }
            }.edgesIgnoringSafeArea(.bottom)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PlusMenu: View {
    var body: some View {
        HStack(spacing: 50) {
            ZStack {
                Circle()
                    .foregroundColor(Color.blue)
                    .frame(width: 70, height: 70)
                Image(systemName: "camera")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .foregroundColor(Color.blue)
                    .frame(width: 70, height: 70)
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
        }
            .transition(.scale)
    }
}
