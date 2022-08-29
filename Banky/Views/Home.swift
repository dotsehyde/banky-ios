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
                    HStack {
                        Circle()
                            .fill(.white)
                            .frame(width: 65, height: 65)
                            .padding()
                            .padding(.leading, 4)
                            .overlay(alignment: .center) {
                            Image(systemName: "line.3.horizontal")
                                .fontWeight(.bold)
                                .font(.title)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                VStack {
                    Spacer()
                    MainBody(height: s.size.height)
                        .frame(height: s.size.height * 0.7)
                        .background(Color.white)
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
                        .font(.system(size: 20, weight: .medium, design: .rounded))

                    Text("@jojojotaro")
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                    Spacer()
                }.padding(.leading, 5)
                Spacer()
            }

            Divider()

            HStack(alignment: .top) {
                Text("Available balance")
                    .font(.system(size: 15, weight: .regular, design: .rounded))

                    .foregroundColor(.gray)
                Spacer()
                Image("visa")
            }.padding(.top, 4)
            HStack {
                Text("$12,496.00")
                    .foregroundColor(Color("darkBlue"))

                    .font(.system(size: 32, weight: .bold, design: .rounded))
                Spacer()

            }
                .padding(.bottom, 20)
            HStack {
                Spacer()
                Text("****  ****    ****    2077")
                    .foregroundColor(Color("darkBlue").opacity(0.7))
                 
                    .font(.system(size: 24,weight: .bold))
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
    var height = 0.0
    var body: some View {
        ScrollView {
            LazyVStack {
                Spacer().frame(height: height * 0.16)
                HStack {
                    VStack(alignment: .leading) {
                        Image("cashback")
                        Text("Cashback")
                            .font(.system(size: 14, weight: .none, design: .rounded))
                            .foregroundColor(.gray)

                        Text("$220.54")
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            .foregroundColor(Color("darkBlue"))

                    }
                    Spacer()
                    Divider()
                    Spacer()
                    NavigationLink(destination: DetailView()) {
                        VStack(alignment: .leading) {
                            Image("save")
                            Text("Save Deposit")
                                .font(.system(size: 14, weight: .none, design: .rounded))
                                .foregroundColor(.gray)

                            Text("$12,800.64")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .foregroundColor(Color("darkBlue"))

                        }
                    }
                }

                HStack(alignment: .center) {
                    Text("Today")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(Color("darkBlue"))

                    Image(systemName: "chevron.down")
                        .imageScale(.medium)
                    Spacer()
                }.padding(.top, 4)
                Divider()
                ForEach(0..<4) { i in
                    HStack {
                        Text("Steam Store")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))

                            .foregroundColor(Color("darkBlue"))
                        Spacer()
                        Text("-$19.99")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))

                            .foregroundColor(Color.red.opacity(0.8))
                    }

                }

            }
                .padding(.horizontal, 30)
        }.padding(.bottom, height * 0.125)
    }
}

struct MainBody_Previews: PreviewProvider {
    static var previews: some View {
        MainBody(height: 0)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
