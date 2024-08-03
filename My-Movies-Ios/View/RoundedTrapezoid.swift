//
//  RoundedTrapezoid.swift
//  My-Movies-Ios
//
//  Created by Pradip Awasthi on 03/08/24.
//


import SwiftUI

struct RoundedTrapezoid: Shape {
    var topLeftRadius: CGFloat = 20
    var topRightRadius: CGFloat = 20
    var bottomLeftRadius: CGFloat = 20
    var bottomRightRadius: CGFloat = 20
    var topWidth: CGFloat
    var bottomWidth: CGFloat

    func path(in rect: CGRect) -> Path {
        let topOffset = (rect.width - topWidth) / 2
        let bottomOffset = (rect.width - bottomWidth) / 2
        
        var path = Path()
        
        // Start at the top-left corner
        path.move(to: CGPoint(x: rect.minX + topOffset + topLeftRadius, y: rect.minY))
        
        // Top side
        path.addLine(to: CGPoint(x: rect.maxX - topOffset - topRightRadius, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - topOffset, y: rect.minY + topRightRadius), 
                          control: CGPoint(x: rect.maxX - topOffset, y: rect.minY))
        
        // Right side
        path.addLine(to: CGPoint(x: rect.maxX - bottomOffset, y: rect.maxY - bottomRightRadius))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - bottomOffset - bottomRightRadius, y: rect.maxY),
                          control: CGPoint(x: rect.maxX - bottomOffset, y: rect.maxY))
        
        // Bottom side
        path.addLine(to: CGPoint(x: rect.minX + bottomOffset + bottomLeftRadius, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.minX + bottomOffset, y: rect.maxY - bottomLeftRadius),
                          control: CGPoint(x: rect.minX + bottomOffset, y: rect.maxY))
        
        // Left side
        path.addLine(to: CGPoint(x: rect.minX + topOffset, y: rect.minY + topLeftRadius))
        path.addQuadCurve(to: CGPoint(x: rect.minX + topOffset + topLeftRadius, y: rect.minY),
                          control: CGPoint(x: rect.minX + topOffset, y: rect.minY))
        
        path.closeSubpath()
        
        return path
    }
}

