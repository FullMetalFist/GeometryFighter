//
//  ShapeType.swift
//  GeometryFighter
//
//  Created by Michael Vilabrera on 3/29/16.
//  Copyright © 2016 Giving Tree. All rights reserved.
//

import Foundation

// 1
public enum ShapeType:Int {
    case Box = 0
    case Sphere
    case Pyramid
    case Torus
    case Capsule
    case Cylinder
    case Cone
    case Tube
    
//    case Floor
//    case Plane
//    case Shape
//    case Text
    
    /*
     -SCNBox
     An SCNBox geometry models a six-sided polyhedron whose faces are all rectangles.
     -SCNCapsule
     An SCNCapsule geometry models a right circular cylinder whose ends are capped with hemispheres.
     -SCNCone
     An SCNCone geometry models a right circular cone or frustum.
     -SCNCylinder
     An SCNCylinder geometry models a right circular cylinder.
     SCNFloor
     An SCNFloor geometry models an infinite plane.
     SCNPlane
     An SCNPlane geometry models a rectangular, one-sided plane of specified width and height.
     -SCNPyramid
     An SCNPyramid geometry models a right rectangular pyramid.
     SCNShape
     An SCNShape object is geometry that creates its contents from a two-dimensional path, optionally extruded to create a three-dimensional object.
     -SCNSphere
     An SCNSphere geometry models a sphere (also known as a ball or globe).
     SCNText
     An SCNText object is a geometry that creates its contents from a string of text, rendered in 2D and optionally extruded to create a three-dimensional object.
     -SCNTorus
     An SCNTorus geometry models a ring-shaped object.
     -SCNTube
     An SCNTube geometry models a tube or pipe—a right circular cylinder with a circular hole along its central axis.
     */
    
    // 2
    static func random() -> ShapeType {
        let maxValue = Tube.rawValue
        let rand = arc4random_uniform(UInt32(maxValue + 1))
        return ShapeType(rawValue: Int(rand))!
    }
}