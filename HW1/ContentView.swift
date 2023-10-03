//
//  ContentView.swift
//  HW1
//
//  Created by Bryan Andersen on 2023/10/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{ //create Z-axis stack
            ScrollView(.vertical){ //create vertical scroll
                //creating the first stack of the Z-axis
                VStack(alignment: .leading){
                    //inserting the first section: "< Search"
                    HStack(alignment: .top){
                        Image("returnArrow") //"<" symbol
                            .resizable()
                            .scaledToFit()
                            .frame(width: 23, height: 20)
                            .offset(x:-0.5,y:1)
                        Text("Search") //"Search" text
                            .font(.body)
                            .padding(.leading, -6.0)
                            .padding(.top, 1.0)
                            .foregroundStyle(.blue)
                        Spacer()
                    }
                    .padding(.leading, 4.0)
                    //inserting the second section: Application's identity
                    HStack{
                        Image("busLogo") //inserts logo
                            .resizable()
                            .offset(x:9, y:-6)
                            .scaledToFit()
                            .frame(width: 135, height: 130)
                        VStack(alignment: .leading){
                            Text("Bus+ (Bus & Railway & Ubike)") //inserts application's name
                                .font(.system(size:22.2))
                                .fontWeight(.semibold)
                                .offset(x : 8, y:-1)
                            Text("Commuter's only choice.") //inserts application's subtitle
                                .font(.system(size:15.1))
                                .padding(.bottom, 20)
                                .offset(x : 8, y : 2)
                                .foregroundStyle(.gray)
                            HStack(alignment: .center){
                                Text("OPEN") //creates "OPEN" button display
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width:72, height:29)
                                    .background(.blue)
                                    .clipShape(RoundedRectangle(cornerRadius:20))
                                    .offset(x: 9.4, y: -10.8)
                                Spacer()
                                Image(systemName: "square.and.arrow.up") //insert "SHARE" logo display
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(.blue)
                                    .frame(width:25, height:25)
                                    .offset(x:-11, y:-12)
                            }
                        }
                        Spacer()
                    }
                    .padding(.leading, 4.0)
                    .padding(.top, 2.0)
                    //inserting the third section: Application description
                    ScrollView(.horizontal){ //creates horizontal scroll
                        VStack(spacing: 12.0){
                            Divider()
                            //creates description from left to right
                            HStack{
                                //Application's ratings
                                VStack(alignment: .center, spacing: 6.2){
                                    Text("78K RATINGS")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                    Text("4.8")
                                        .fontWeight(.semibold)
                                        .font(.system(size:23))
                                        .offset(y:2)
                                        .foregroundStyle(.gray)
                                    HStack(alignment: .center, spacing: 2.0){
                                        moonRateView()
                                        moonRateView()
                                        moonRateView()
                                        moonRateView()
                                        moonRateView()
                                    }
                                }
                                verticalLineView(leading: 11.5)
                                //Application's user minimum age
                                VStack(spacing: 4.0){
                                    Text("AGE")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                    Text("4+")
                                        .fontWeight(.semibold)
                                        .font(.system(size:23))
                                        .offset(y:3)
                                        .foregroundStyle(.gray)
                                    Text("Years Old")
                                        .font(.system(size:12.7))
                                        .fontWeight(.medium)
                                        .offset(x:-1, y:3)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                }
                                .frame(width: 90, height: 60)
                                verticalLineView(leading:-1)
                                //Application's ranking
                                VStack(spacing: 4.5){
                                    Text("CHART")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                    HStack(alignment: .top, spacing: -2.0){
                                        Text("No.")
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.gray)
                                            .offset(x:-2,y:5)
                                        Text("18")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.gray)
                                            .offset(y:3)
                                    }
                                    Text("Travel")
                                        .font(.system(size:12.7))
                                        .fontWeight(.medium)
                                        .offset(x: -0.5, y: 3.5)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                }
                                .frame(width: 90, height: 60)
                                verticalLineView(leading:-1)
                                //Application's developer
                                VStack(spacing: 4.5){
                                    Text("DEVELOPER")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                    Image("developIcon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:27, height:27)
                                        .offset(x: -2)
                                    Text("Shuttle Network Limited")
                                        .font(.system(size:12.7))
                                        .fontWeight(.medium)
                                        .offset(x: -0.5, y: 3.5)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                }
                                .frame(width: 120.0, height: 60)
                                verticalLineView(leading:-1)
                                //Application's available language(s)
                                VStack(spacing: 4.5){
                                    Text("LANGUAGE")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                    Text("EN")
                                        .fontWeight(.semibold)
                                        .font(.system(size:23))
                                        .offset(y:3)
                                        .foregroundStyle(.gray)
                                    Text("+ 1 More")
                                        .font(.system(size:12.7))
                                        .fontWeight(.medium)
                                        .offset(x: -0.5, y: 3.5)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                }
                                .frame(width: 87, height: 60)
                                verticalLineView(leading:-1)
                                //Application's file size
                                VStack(spacing: 4.5){
                                    Text("SIZE")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                    Text("65.8")
                                        .fontWeight(.semibold)
                                        .font(.system(size:23))
                                        .offset(y:3)
                                        .foregroundStyle(.gray)
                                    Text("MB")
                                        .font(.system(size:12.7))
                                        .fontWeight(.medium)
                                        .offset(x: -0.5, y: 3.5)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                }
                                .frame(width: 100.0, height: 60)
                            }
                            .padding(.leading, 10.7)
                            .padding(.top, 1.0)
                            Divider()
                                .padding(.top, 4.0)
                        }
                        .padding(1.0)
                        .padding(.leading, 21.0)
                        .padding(.trailing, 20.0)
                    }
                    .padding(.top, 17.0)
                    .frame(height: 80.0)
                    Spacer(minLength:23)
                    //inserting the fourth section: Application updates
                    VStack(alignment: .leading, spacing: 6.0){
                        HStack(alignment: .bottom){
                            Text("What's New")
                                .font(.title2)
                                .fontWeight(.bold)
                                .offset(x: -2.5)
                            Spacer()
                            Text("Version History")
                                .offset(x: 1, y: -2)
                                .foregroundStyle(.blue)
                        }
                        HStack(alignment: .bottom){
                            Text("Version 8.3.737")
                                .font(.system(size:15.3))
                                .offset(x: -2.5)
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("5d ago")
                                .font(.system(size:15))
                                .offset(x: 2)
                                .foregroundStyle(.gray)
                        }
                        Spacer(minLength:1)
                        VStack(alignment: .leading, spacing: 2.0){
                            Text("- Support \"Ankeng\" LRT")
                            Text("- Update Kaosiung LRT data")
                            Text("- Update Taipei MRT data")
                        }.padding(.leading, -1.0).font(.system(size:15.5))
                        Spacer(minLength: 36)
                        Divider()
                    }
                    .padding(.horizontal, 22.0)
                    //inserting the fifth section: Application's preview
                    VStack(alignment: .leading){
                        Text("Preview")
                            .font(.title2)
                            .fontWeight(.bold)
                            .offset(x : 20.5)
                        ScrollView(.horizontal){ //creates horizontal scroll
                            HStack{ //inserts image
                                displayImageView(imageName:"firstImage")
                                displayImageView(imageName:"secondImage")
                                displayImageView(imageName:"thirdImage")
                            }
                            .padding(.top, 2.0)
                            .padding(.leading, 20)
                            .padding(.trailing, 20.0)
                        }
                        .padding(.top, -10.0)
                    }
                }
            }
            
            //creating the second stack of the Z-axis (navigator box)
            Rectangle()
                .fill(.white.opacity(0.98))
                .frame(width:393, height:100)
                .ignoresSafeArea()
                .offset(y: 380)
            //creating the third stack of the Z-axis (upper border of navigator box)
            Divider()
                .offset(y:330)
            //creating the fourth stack of the Z-axis (elements in navigator box)
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 50.0){
                    //creating symbols from left to right
                    appStoreLogo(imageName: "doc.plaintext.fill", color : Color.blue)
                    appStoreLogo(imageName: "star.fill", color : Color.gray)
                    appStoreLogo(imageName: "house.fill", color : Color.gray)
                    appStoreLogo(imageName: "tag.circle.fill", color : Color.gray)
                    appStoreLogo(imageName: "person.crop.circle.fill", color : Color.gray)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct moonRateView: View {
    var body: some View {
        Image(systemName: "moon.fill")
            .resizable()
            .frame(width:12, height:12)
            .foregroundColor(.gray)
    }
}

struct verticalLineView: View {
    let leading : CGFloat
    var body: some View {
        Divider()
            .frame(height: 40)
            .padding(.leading, leading)
            .padding(.top, 1.0)
    }
}

struct displayImageView: View {
    let imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width:228, height:495)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius:25))
    }
}

struct appStoreLogo: View {
    let imageName : String
    let color : Color
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30)
            .foregroundStyle(color)
    }
}
