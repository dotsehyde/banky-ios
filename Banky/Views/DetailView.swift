//
//  DetailView.swift
//  Banky
//
//  Created by Benjamin on 26/08/2022.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack{
//            HStack{
//                Image(systemName: "chevron.left")
//                    .foregroundColor(.blue)
//                    .imageScale(.large)
//                    .onTapGesture {
//                        pm.wrappedValue.dismiss()
//                    }
//                Spacer()
//            }.padding()
            ScrollView {
                VStack{
                    HStack {
                        Text("Spendings")
                            .font(.system(size: 20,weight: .semibold, design: .rounded))
                            .foregroundColor(.black.opacity(0.7))
                        Spacer()
                    }
                    .padding(.bottom,1)
                    HStack{
                        Text("$2,400.56")
                            .foregroundColor(Color("darkBlue"))
                            .font(.system(size: 36,weight: .bold, design: .rounded))
                        VStack(alignment:.leading){
                            HStack{
                                
                                Image(systemName: "arrowtriangle.down.fill")
                                Text("12%")
                            }
                            .foregroundColor(.teal)
                            .font(.system(size: 16,weight: .semibold, design: .rounded))
                            Text("vs past month")
                                .foregroundColor(.gray)
                                .font(.system(size: 14,weight: .regular))
                        }
                        Spacer()
                    }.padding(.bottom,3)
                    Text("Tabbar")
                    Text("Chart")
                   
                }
            }
            .padding(.horizontal)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
