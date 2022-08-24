//
//  OnBoardView.swift
//  Banky
//
//  Created by Benjamin on 24/08/2022.
//

import SwiftUI

struct OnBoardView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
            VStack {
                Spacer()
                HStack {
                    Text("Smart\nSavings")
                        .font(Font.custom("Frank Ruhl Libre", size: 58))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20)
                    //                    .offset(x:-105,y:250)
                    Spacer()
                }
                    .padding(.bottom, 20)
                HStack {
                    Spacer()
                    withAnimation {
                        NavigationLink(destination: BottomNav().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("Start Now")
                                    .font(Font.custom("Circular Std", size: 18))
                                Image(systemName: "arrow.right")
                            }
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.title3)
                        }
                            .padding(.trailing, 30)
                    }

                }
                    .padding(.bottom, 30)

            }
        }.ignoresSafeArea(.all)
    }
}


struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
            .previewLayout(.sizeThatFits)
    }
}
