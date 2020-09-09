//
//  Shape.swift
//  Navigation Bar
//
//  Created by Matthew Ross on 9/2/20.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab = "home"
    @Namespace private var animation1
    @Namespace private var animation2
    @Namespace private var animation3
    @Namespace private var animation4
    @State private var isFlipped = false
    @State private var isFlipped2 = false
    @State private var isFlipped3 = false
    @State private var isFlipped4 = false
    
    var body: some View {
        GeometryReader { geometry in
        VStack {
            
            Spacer()

                ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
                    
                    TabView(selection: $selectedTab) {
                        
                        Base()
                            .tag("base")
                        
                        Email()
                            .tag("email")
                        
                        Folder()
                            .tag("folder")
                        
                        Settings()
                            .tag("settings")
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .ignoresSafeArea(.all, edges: .bottom)
                    
                    
                    
                    
                    ZStack {
                        
                    Rectangle()
                        .fill(Color("Tint"))
                        .frame(width: geometry.size.width - 15, height: geometry.size.height/10)
                        .cornerRadius(radius: 35, corners: [.bottomLeft, .bottomRight])
                        .cornerRadius(radius: 5, corners: [.topLeft, .topRight])
                        .padding(.bottom, 5)
                        .padding(.top, 5)
                        .shadow(radius: 15)

                    
                        HStack(spacing: 0) {
                        
                        Spacer(minLength: 0)
                        
                            if selectedTab == "base" {
                                
                            Button {
                                withAnimation {
                                    selectedTab = "base"; isFlipped = false; isFlipped2 = true; isFlipped3 = false; isFlipped4 = false
                                        }
                                    } label: {

                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .antialiased(true)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: geometry.size.width/14, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft])
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                            .matchedGeometryEffect(id: "One", in: animation1, properties: .position)
                                            .zIndex(10)
                                        
                                        Text(selectedTab == "base" ? "Base" : "")
                                            .frame(width: geometry.size.width/10, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 7, corners: [.topRight, .bottomRight])
                                            .offset(x: -10)
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                            .matchedGeometryEffect(id: "Two", in: animation1, properties: .position, anchor: .leading)
                                        }
                            
                                    } else {
                                        
                                        Button {
                                            withAnimation {
                                                selectedTab = "base"; isFlipped = false; isFlipped2 = true; isFlipped3 = false; isFlipped4 = false
                                            }
                                        } label: {
                                        
                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .antialiased(true)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: geometry.size.width/14, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft])
                                            .background(Color("Tint"))
                                            //.border(Color.blue)
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: 3, y: 3)
                                            //.transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .scale(scale: 1, anchor: .center)), removal: .scale))
                                            .matchedGeometryEffect(id: "One", in: animation1, properties: .position)
                                        
                                            Rectangle()
                                                .frame(width: 0, height: 0)
                                                .background(Color.clear)
                                                .opacity(0.0)
                                                .offset(x: -35)
                                                .matchedGeometryEffect(id: "Two", in: animation1, properties: .position)
                                        
                                    }
                                }
                        
                        Spacer(minLength: 0)
                            
                            if selectedTab == "email" {
                                
                            Button {
                                withAnimation {
                                    selectedTab = "email"; isFlipped = true; isFlipped2 = false; isFlipped3 = false
                                        }
                                    } label: {

                                        Text(selectedTab == "email" ? "Email" : "")
                                            .frame(width: geometry.size.width/10, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 7, corners: [.topRight, .bottomRight])
                                            .offset(x: -10)
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                            .matchedGeometryEffect(id: "Three", in: animation2, properties: .position, anchor: .center)
                                        }
                            
                                    } else {
                                        
                                        Button {
                                            withAnimation {
                                                selectedTab = "email"; isFlipped = true; isFlipped2 = false; isFlipped3 = false; isFlipped4 = false
                                            }
                                        } label: {
                                        
                                            Image(systemName: "house.fill")
                                                .resizable()
                                                .antialiased(true)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: geometry.size.width/14, height: geometry.size.height/23, alignment: .center)
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 5)
                                                .padding(.vertical, 1)
                                                .background(Color("Tint"))
                                                .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft])
                                                .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                                .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                                .matchedGeometryEffect(id: "Three", in: animation2)
                                        }
                                    }
                        
                        Spacer(minLength: 0)
                            
                            if selectedTab == "folder" {
                                
                            Button {
                                withAnimation {
                                    selectedTab = "folder"; isFlipped = false; isFlipped2 = false; isFlipped3 = true; isFlipped4 = false
                                        }
                                    } label: {

                                        Text(selectedTab == "folder" ? "Folder" : "")
                                            .frame(width: geometry.size.width/10, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft, .topRight, .bottomRight])
                                            .offset(x: -10)
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                            .matchedGeometryEffect(id: "Four", in: animation3, properties: .position, anchor: .center)
                                        }
                            
                                    } else {
                                        
                                        Button {
                                            withAnimation {
                                                selectedTab = "folder"; isFlipped = false; isFlipped2 = false; isFlipped3 = true; isFlipped4 = false
                                            }
                                        } label: {
                                        
                                            Image(systemName: "house.fill")
                                                .resizable()
                                                .antialiased(true)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: geometry.size.width/14, height: geometry.size.height/23, alignment: .center)
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 5)
                                                .padding(.vertical, 1)
                                                .background(Color("Tint"))
                                                .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft, .topRight, .bottomRight])
                                                .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                                .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                                .matchedGeometryEffect(id: "Four", in: animation3)
                                        }
                                    }

                        
                        Spacer(minLength: 0)
                            
                            if selectedTab == "settings" {
                                
                            Button {
                                withAnimation {
                                    selectedTab = "settings"; isFlipped = false; isFlipped2 = true; isFlipped3 = false; isFlipped4 = true
                                        }
                                    } label: {
                                        
                                        Text(selectedTab == "settings" ? "Settings" : "")
                                            .frame(width: geometry.size.width/10, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 7, corners: [.topRight, .bottomRight])
                                            .offset(x: -10)
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                            .matchedGeometryEffect(id: "Five", in: animation4, properties: .position, anchor: .leading)
                                        
                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .antialiased(true)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: geometry.size.width/14, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft])
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: -3, y: 3)
                                            .matchedGeometryEffect(id: "Six", in: animation4, properties: .position)
                                            .zIndex(10)
                                        }
                            
                                    } else {
                                        
                                        Button {
                                            withAnimation {
                                                selectedTab = "settings"; isFlipped = false; isFlipped2 = false; isFlipped3 = false;
                                                isFlipped4 = true
                                            }
                                        } label: {
                                        
                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .antialiased(true)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: geometry.size.width/14, height: geometry.size.height/23, alignment: .center)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5)
                                            .padding(.vertical, 1)
                                            .background(Color("Tint"))
                                            .cornerRadius(radius: 10, corners: [.topLeft, .bottomLeft])
                                            .background(Color("Tint"))
                                            .shadow(color: Color(red: 38/255, green: 38/255, blue: 38/255), radius: 3, x: -3, y: -3)
                                            .shadow(color: Color(red: 28/255, green: 28/255, blue: 28/255), radius: 3, x: 3, y: 3)
                                            .matchedGeometryEffect(id: "Six", in: animation4, properties: .position)
                                        
                                            Rectangle()
                                                .frame(width: 0, height: 0)
                                                .background(Color.clear)
                                                .opacity(0.0)
                                                .offset(x: -35)
                                                .matchedGeometryEffect(id: "Five", in: animation4, properties: .position)
                                    }
                                }
                            
                        Spacer(minLength: 0)
                    
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                })
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}


//struct BottomBar: Shape {
    //let radius: CGFloat
        
        //func path(in rect: CGRect) -> Path {
            //var path = Path()
            
            //let tl = CGPoint(x: rect.minX, y: rect.minY)
            //let tlc = CGPoint(x: rect.minX - radius, y: rect.minY - radius)
            //let tr = CGPoint(x: rect.maxX, y: rect.minY)
            //let trc = CGPoint(x: rect.maxX - radius, y: rect.maxY - radius)
            //let brs = CGPoint(x: rect.maxX, y: rect.maxY - radius)
            //let brc = CGPoint(x: rect.maxX - radius, y: rect.maxY - radius)
            //let bls = CGPoint(x: rect.minX + radius, y: rect.maxY)
            //let blc = CGPoint(x: rect.minX + radius, y: rect.maxY - radius)
            
            //path.move(to: tl)
            //path.addLine(to: tr)
            //path.addLine(to: brs)
            //path.addRelativeArc(center: brc, radius: radius,
              //startAngle: Angle.degrees(0), delta: Angle.degrees(90))
            //path.addLine(to: bls)
            //path.addRelativeArc(center: blc, radius: radius,
              //startAngle: Angle.degrees(90), delta: Angle.degrees(90))
            
            //return path
        //}
    //}

struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    struct CornerRadiusShape: Shape {

        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners

        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

var tabs = ["base","email","folder","settings"]

struct Base : View {
    var body: some View{
        VStack {
            PersonList()
        }
    }
}

struct Email : View {
      
      var body: some View{
          
          VStack{
              
              Text("Email")
          }
      }
  }
  
  struct Folder : View {
      
      var body: some View{
          
          VStack{
              
              Text("Folder")
          }
      }
  }
  
  struct Settings : View {
      
      var body: some View{
          
          VStack{
              
              Text("Settings")
          }
      }
  }

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

