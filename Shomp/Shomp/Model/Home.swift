//
//  Home.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import Foundation


struct Home: Identifiable, Hashable {
    static func == (lhs: Home, rhs: Home) -> Bool {
        lhs.id == rhs.id
    }
    
    var id: Category
    var pages: [Page]
    
    static var data: [Home] {
        
        
       [
        Home(id: Category.men, pages: [
                Page(
                     title: "NEW IN",
                    description: "Explore this week's latest menswear pieces of the season curated for you. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/New.png?raw=true"),
                Page(
                     title: "COLLECTION",
                    description: "Discover this week's latest pieces from our latest collection. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Clothes.png?raw=true"),
                Page(
                     title: "SHOES & BAGS",
                    description: "Explore the new collection of Shoes and Bags. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Bags.png?raw=true"),
                Page(
                     title: "SALE",
                    description: "ONLINE AND IN STORES",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Kids.png?raw=true"),
                Page(
                     title: "CLOTHING CARE",
                    description: "As part of our environment commitmnet, we have developed a guide to help reduce the impact of care process. #joinlife",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Clothes.png?raw=true")
            ]),
        Home(id: Category.women, pages: [
                Page(
                     title: "NEW IN",
                    description: "Explore this week's latest menswear pieces of the season curated for you. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/New.png?raw=true"),
                Page(
                     title: "COLLECTION",
                    description: "Discover this week's latest pieces from our latest collection. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Clothes.png?raw=true"),
                Page(
                     title: "SHOES & BAGS",
                    description: "Explore the new collection of Shoes and Bags. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Bags.png?raw=true"),
                Page(
                     title: "SALE",
                    description: "ONLINE AND IN STORES",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Kids.png?raw=true"),
                Page(
                     title: "CLOTHING CARE",
                    description: "As part of our environment commitmnet, we have developed a guide to help reduce the impact of care process. #joinlife",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Clothes.png?raw=true")
            ]),
        Home(id: Category.kids, pages: [
                Page(
                     title: "NEW IN",
                    description: "Explore this week's latest menswear pieces of the season curated for you. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/New.png?raw=true"),
                Page(
                     title: "COLLECTION",
                    description: "Discover this week's latest pieces from our latest collection. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Clothes.png?raw=true"),
                Page(
                     title: "SHOES & BAGS",
                    description: "Explore the new collection of Shoes and Bags. Autumn Winter Man Collection",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Bags.png?raw=true"),
                Page(
                     title: "SALE",
                    description: "ONLINE AND IN STORES",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Kids.png?raw=true"),
                Page(
                     title: "CLOTHING CARE",
                    description: "As part of our environment commitmnet, we have developed a guide to help reduce the impact of care process. #joinlife",
                    image: "https://github.com/Hitarthbhatt/Hitarthbhatt/blob/main/Images/Shopy/Home%20Images/Clothes.png?raw=true")
            ])
       ]
    }
    
    
    
    
    
    
}
