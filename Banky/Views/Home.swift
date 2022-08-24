//
//  Home.swift
//  Banky
//
//  Created by Benjamin on 24/08/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        GeometryReader { s in
            ZStack {
                Image("homebg").resizable(resizingMode: .stretch)
                VStack {
                    Spacer()
                    ZStack {
                        Color.white
                            .frame(height: s.size.height * 0.7)
                        VStack {
                            Spacer().frame(height: s.size.height * 0.1)
                            MainBody()
                                .frame(height: s.size.height * 0.3)
                        }
                    }
                }
                VStack {
                    RoundedRectangle(cornerRadius: 12, style: .circular)
                        .fill(Color.white)
                        .frame(height: 260)
                        .padding(.horizontal, 15)
                        .shadow(radius: 24, x: 0, y: -8)
                        .overlay {
                        HomeCard()
                    }
                    Spacer().frame(height: 250)
                }
            }
                .ignoresSafeArea()

        }
    }
}

//MARK: - HomeCard

struct HomeCard: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image("pic")
                    .frame(width: 73, height: 100)
                    .background(RoundedRectangle(cornerRadius: 12)
                    .fill(.clear)
                    .shadow(radius: 12, x: 0, y: -4)
                )
                    .offset(y: -25)

                VStack(alignment: .leading) {
                    Spacer().frame(height: 15)
                    Text("Josuke Jotaro")
                        .font(Font.custom("CircularStd", size: 20))
                        .fontWeight(.bold)
                    Text("@jojojotaro")
                        .font(Font.custom("CircularStd", size: 15))
                        .foregroundColor(.gray)
                    Spacer()
                }.padding(.leading, 5)
                Spacer()
            }

            Divider()

            HStack(alignment: .top) {
                Text("Available balance")
                    .font(Font.custom("CircularStd", size: 14))
                    .fontWeight(.black)
                    .foregroundColor(.gray)
                Spacer()
                Image("visa")
            }.padding(.top, 4)
            HStack {
                Text("$12,496.00")
                    .foregroundColor(Color("darkBlue"))
                    .fontWeight(.black)
                    .font(Font.custom("CircularStd", size: 32))
                Spacer()

            }
                .padding(.bottom, 20)
            HStack {
                Spacer()
                Text("****  ****    ****    2077")
                    .foregroundColor(Color("darkBlue").opacity(0.7))
                    .fontWeight(.black)
                    .font(Font.custom("CircularStd", size: 24))
                Spacer()

            }
            Spacer().frame(height: 20)
        }
            .padding(.horizontal, 35)
    }
}

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard()
            .previewLayout(.sizeThatFits)
            .frame(height: 260)
            .padding()
    }
}


//MARK: - Body

struct MainBody: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Image("cashback")
                        Text("Cashback")
                            .font(Font.custom("CircularStd", size: 14))
                            .foregroundColor(.gray)
                            .fontWeight(.black)
                        Text("$220.54")
                            .font(Font.custom("CircularStd", size: 24))
                            .foregroundColor(Color("darkBlue"))
                            .fontWeight(.black)
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    VStack(alignment: .leading) {
                        Image("save")
                        Text("Save Deposit")
                            .font(Font.custom("CircularStd", size: 14))
                            .foregroundColor(.gray)
                            .fontWeight(.black)
                        Text("$12,800.64")
                            .font(Font.custom("CircularStd", size: 24))
                            .foregroundColor(Color("darkBlue"))
                            .fontWeight(.black)
                    }
                }
            }
            .padding(.horizontal,30)
        }
    }
}

struct MainBody_Previews: PreviewProvider {
    static var previews: some View {
        MainBody()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
