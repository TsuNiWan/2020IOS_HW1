//
//  ContentView.swift
//  Draw
//
//  Created by 林子平 on 2020/3/16.
//  Copyright © 2020 林子平. All rights reserved.
//

import SwiftUI

struct Petal: Shape {
    func path(in rect: CGRect) -> Path {
        //Petal
        Path { (path) in
            path.move(to: CGPoint(x: 110, y: 173))
            path.addCurve(to: CGPoint(x: 113, y: 172), control1: CGPoint (x: 105, y: 166), control2: CGPoint (x: 115, y: 165))
            path.addCurve(to: CGPoint(x: 114, y: 174), control1: CGPoint (x: 117, y: 165), control2: CGPoint (x: 123, y: 176))
            path.addCurve(to: CGPoint(x: 113, y: 177), control1: CGPoint (x: 125, y: 175), control2: CGPoint (x: 116, y: 184))
            path.addCurve(to: CGPoint(x: 110, y: 176), control1: CGPoint (x: 113, y: 184), control2: CGPoint (x: 104, y: 181))
            path.addCurve(to: CGPoint(x: 110, y: 173), control1: CGPoint (x: 102, y: 177), control2: CGPoint (x: 102, y: 169))
            path.closeSubpath()
        }
    }
}

struct Style: Shape {
    func path(in rect: CGRect) -> Path {
        //Style
        Path { (path) in
            path.addArc(center: CGPoint(x: 112, y: 175), radius: 2, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        }
    }
}
struct ContentView: View {
    var body: some View {
        
        ZStack {
            //background
            Image("grass")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            //color
            Group {
                //shape
                Path { (path) in
                    //head
                    path.move(to: CGPoint(x: 125, y: 10))
                    path.addCurve(to: CGPoint(x: 132, y: 75), control1: CGPoint (x: 145, y: 30), control2: CGPoint (x: 140, y: 50))
                    path.addCurve(to: CGPoint(x: 140, y: 150), control1: CGPoint (x: 170, y: 100), control2: CGPoint (x: 175, y: 130))
                    path.addQuadCurve(to: CGPoint(x: 85, y: 150), control: CGPoint (x: 120, y: 160))
                    path.addCurve(to: CGPoint(x: 80, y: 80), control1: CGPoint (x: 60, y: 140), control2: CGPoint (x: 60, y: 110))
                    path.addCurve(to: CGPoint(x: 75, y: 15), control1: CGPoint (x: 65, y: 50), control2: CGPoint (x: 60, y: 35))
                    path.addCurve(to: CGPoint(x: 100, y: 75), control1: CGPoint (x: 100, y: 25), control2: CGPoint (x: 95, y: 35))
                    path.addLine(to: CGPoint(x: 110, y: 73))
                    path.addCurve(to: CGPoint(x: 125, y: 10), control1: CGPoint (x: 105, y:30), control2: CGPoint (x: 110, y:20))
                    path.closeSubpath()
                    
                    //body
                    path.move(to: CGPoint(x: 140, y: 150))
                    path.addQuadCurve(to: CGPoint(x: 154, y: 175), control: CGPoint (x: 147, y: 162))
                    path.addLine(to: CGPoint(x: 152, y: 176))
                    path.addCurve(to: CGPoint(x: 148, y: 190), control1: CGPoint (x: 156, y: 185), control2: CGPoint (x: 156, y: 186))
                    path.addLine(to: CGPoint(x: 148, y: 193))
                    path.addQuadCurve(to: CGPoint(x:77, y: 194), control: CGPoint (x: 117, y: 200))
                    path.addCurve(to: CGPoint(x: 71, y: 180), control1: CGPoint (x: 64, y: 188), control2: CGPoint (x: 69, y: 185))
                    path.addLine(to: CGPoint(x: 70, y: 178))
                    path.addQuadCurve(to: CGPoint(x: 85, y: 151), control: CGPoint (x: 75, y: 165))
                    path.addQuadCurve(to: CGPoint(x: 140, y: 150), control: CGPoint (x: 120, y: 160))
                    path.closeSubpath()
                    
                    //feet
                    path.move(to: CGPoint(x: 135, y: 196))
                    path.addQuadCurve(to: CGPoint(x: 140, y: 213), control: CGPoint (x: 145, y: 202))
                    path.addLine(to: CGPoint(x: 113, y: 213))
                    path.addLine(to: CGPoint(x: 112, y: 198))
                    path.addLine(to: CGPoint(x: 110, y: 197))
                    path.addLine(to: CGPoint(x: 109, y: 213))
                    path.addLine(to: CGPoint(x: 82, y: 213))
                    path.addQuadCurve(to: CGPoint(x: 89, y: 196), control: CGPoint (x: 80, y: 200))
                    path.addQuadCurve(to: CGPoint(x: 135, y: 196), control: CGPoint (x: 117, y: 200))
                    path.closeSubpath()
                }
                .fill(Color.white)
                
                //cloth
                Path { (path) in
                    path.move(to: CGPoint(x: 140, y: 150))
                    path.addQuadCurve(to: CGPoint(x: 154, y: 175), control: CGPoint (x: 147, y: 162))
                    path.addLine(to: CGPoint(x: 145, y: 180))
                    path.addLine(to: CGPoint(x: 148, y: 193))
                    path.addQuadCurve(to: CGPoint(x:77, y: 194), control: CGPoint (x: 117, y: 200))
                    path.addLine(to: CGPoint(x: 78, y: 183))
                    path.addLine(to: CGPoint(x: 70, y: 178))
                    path.addQuadCurve(to: CGPoint(x: 85, y: 151), control: CGPoint (x: 75, y: 165))
                    path.addQuadCurve(to: CGPoint(x: 113, y: 155), control: CGPoint (x: 105, y: 167))
                    path.addQuadCurve(to: CGPoint(x: 140, y: 150), control: CGPoint (x: 125, y: 168))
                    path.closeSubpath()
                }
                .fill(Color.blue)
                
                //button
                Path { (path) in
                    path.addArc(center: CGPoint(x: 115, y: 165), radius: 2, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                }
                .fill(Color.white)
                
            }
            .offset(x: 100, y: 280)
            
            
            // stroke
            Path { (path) in
                //head
                path.move(to: CGPoint(x: 125, y: 10))
                path.addCurve(to: CGPoint(x: 132, y: 75), control1: CGPoint (x: 145, y: 30), control2: CGPoint (x: 140, y: 50))
                path.addCurve(to: CGPoint(x: 140, y: 150), control1: CGPoint (x: 170, y: 100), control2: CGPoint (x: 175, y: 130))
                path.addQuadCurve(to: CGPoint(x: 85, y: 150), control: CGPoint (x: 120, y: 160))
                path.addCurve(to: CGPoint(x: 80, y: 80), control1: CGPoint (x: 60, y: 140), control2: CGPoint (x: 60, y: 110))
                path.addCurve(to: CGPoint(x: 75, y: 15), control1: CGPoint (x: 65, y: 50), control2: CGPoint (x: 60, y: 35))
                path.addCurve(to: CGPoint(x: 100, y: 75), control1: CGPoint (x: 100, y: 25), control2: CGPoint (x: 95, y: 35))
                path.addLine(to: CGPoint(x: 110, y: 73))
                path.addCurve(to: CGPoint(x: 125, y: 10), control1: CGPoint (x: 105, y:30), control2: CGPoint (x: 110, y:20))
                path.closeSubpath()
                
                //body
                path.move(to: CGPoint(x: 140, y: 150))
                path.addQuadCurve(to: CGPoint(x: 154, y: 175), control: CGPoint (x: 147, y: 162))
                path.addLine(to: CGPoint(x: 152, y: 176))
                path.addCurve(to: CGPoint(x: 148, y: 190), control1: CGPoint (x: 156, y: 185), control2: CGPoint (x: 156, y: 186))
                path.addLine(to: CGPoint(x: 148, y: 193))
                path.addQuadCurve(to: CGPoint(x:77, y: 194), control: CGPoint (x: 117, y: 200))
                path.addCurve(to: CGPoint(x: 71, y: 180), control1: CGPoint (x: 64, y: 188), control2: CGPoint (x: 69, y: 185))
                path.addLine(to: CGPoint(x: 70, y: 178))
                path.addQuadCurve(to: CGPoint(x: 85, y: 151), control: CGPoint (x: 75, y: 165))
                path.addQuadCurve(to: CGPoint(x: 113, y: 155), control: CGPoint (x: 105, y: 167))
                path.addLine(to: CGPoint(x: 113, y: 155))
                path.addQuadCurve(to: CGPoint(x: 140, y: 150), control: CGPoint (x: 125, y: 168))
                path.closeSubpath()
                
                //feet
                path.move(to: CGPoint(x: 135, y: 196))
                path.addQuadCurve(to: CGPoint(x: 140, y: 213), control: CGPoint (x: 145, y: 202))
                path.addLine(to: CGPoint(x: 113, y: 213))
                path.addLine(to: CGPoint(x: 112, y: 198))
                path.addLine(to: CGPoint(x: 110, y: 197))
                path.addLine(to: CGPoint(x: 109, y: 213))
                path.addLine(to: CGPoint(x: 82, y: 213))
                path.addQuadCurve(to: CGPoint(x: 89, y: 196), control: CGPoint (x: 80, y: 200))
                path.addQuadCurve(to: CGPoint(x: 135, y: 196), control: CGPoint (x: 117, y: 200))
                path.closeSubpath()
                
                //cloth
                path.move(to: CGPoint(x: 140, y: 150))
                path.addQuadCurve(to: CGPoint(x: 154, y: 175), control: CGPoint (x: 147, y: 162))
                path.addLine(to: CGPoint(x: 145, y: 180))
                path.addLine(to: CGPoint(x: 148, y: 193))
                path.addQuadCurve(to: CGPoint(x:77, y: 194), control: CGPoint (x: 117, y: 200))
                path.addLine(to: CGPoint(x: 78, y: 183))
                path.addLine(to: CGPoint(x: 70, y: 178))
                path.addQuadCurve(to: CGPoint(x: 85, y: 151), control: CGPoint (x: 75, y: 165))
                path.addQuadCurve(to: CGPoint(x: 113, y: 155), control: CGPoint (x: 105, y: 167))
                path.addQuadCurve(to: CGPoint(x: 140, y: 150), control: CGPoint (x: 125, y: 168))
                path.closeSubpath()
                
                path.move(to: CGPoint(x: 140, y: 150))
                path.addLine(to: CGPoint(x: 148, y: 193))
                path.addQuadCurve(to: CGPoint(x:77, y: 194), control: CGPoint (x: 117, y: 200))
                path.addLine(to: CGPoint(x: 85, y: 151))
                
                //button
                path.move(to: CGPoint(x: 118, y: 165))
                path.addArc(center: CGPoint(x: 115, y: 165), radius: 3, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
            }
            .stroke(lineWidth: 3)
            .offset(x: 100, y: 280)
            
            //Eyes
            Group {
                Path(ellipseIn: CGRect(x: 82, y: 112, width: 8, height: 12))
                Path(ellipseIn: CGRect(x: 132, y: 108, width: 8, height: 12))
            }
            .offset(x: 100, y: 280)
            
            //Mouth
            Path { (path) in
                path.move(to: CGPoint(x: 110, y: 145))
                path.addLine(to: CGPoint(x: 123, y: 137))
                path.closeSubpath()
                
                path.move(to: CGPoint(x: 110, y: 140))
                path.addLine(to: CGPoint(x: 125, y: 142))
                path.closeSubpath()
            }
            .stroke(lineWidth: 2)
            .offset(x: 100, y: 280)
            
            //cloth decorate
            Group {
                FlowerView(positionX: 80, positionY:294)
                FlowerView(positionX: 88, positionY:278)
                FlowerView()
                FlowerView(positionX: 120, positionY:294)
                FlowerView(positionX: 120, positionY:278)
            }
            
            //text
            Text("Miffy\n咪菲兔")
                .font(.title)
                .fontWeight(.heavy)
                .frame(width: 150)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.yellow)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 5))
                .shadow(radius: 30)
                .position(x: 210, y: 650)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FlowerView: View {
    
    var positionX: CGFloat = 100
    var positionY: CGFloat = 290
    
    var body: some View {
        Group {
            Petal()
                .fill(Color.white)
                .frame(width: 1, height: 1)
                .position(x: positionX, y: positionY)
            Petal()
                .stroke()
                .frame(width: 1, height: 1)
                .position(x: positionX, y: positionY)
            Style()
                .fill(Color.yellow)
                .frame(width: 1, height: 1)
                .position(x: positionX, y: positionY)
            Style()
                .stroke()
                .frame(width: 1, height: 1)
                .position(x: positionX, y: positionY)
        }
    }
}
