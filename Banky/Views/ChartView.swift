//
//  ChartView.swift
//  Banky
//
//  Created by Benjamin on 29/08/2022.
//
import Charts
import SwiftUI

struct ChartView: UIViewRepresentable {
    let entries: [BarChartDataEntry]
    func makeUIView(context: Context) -> Charts.BarChartView {
        return BarChartView()
    }

    func updateUIView(_ uiView: Charts.BarChartView, context: Context) {
        let dataSet = BarChartDataSet(entries: entries)
        dataSet.label="Transaction"
        uiView.noDataText="No Data"
        uiView.data = BarChartData(dataSet: dataSet)
    }


}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(entries: Transaction.dataEnteriesForYear(2020, transactions: Transaction.allTransactions))
    }


}

