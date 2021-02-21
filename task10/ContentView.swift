//
//  ContentView.swift
//  task10
//
//  Created by Hiroshi.Nakai on 2021/02/21.
//

import SwiftUI

struct ContentView: View {

    private let cellColor = [
        Color(red: 0.7, green: 0.9, blue: 0.5, opacity: 0.5),
        Color(red: 0.4, green: 0.7, blue: 0.8, opacity: 0.5),
        Color(red: 0.9, green: 0.4, blue: 0.5, opacity: 0.5)
    ]

    private let PrefData = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"
    ]

    var body: some View {
        VStack {
            List {
                ForEach(0..<self.PrefData.count) { index in
                    HStack {
                        Text(self.PrefData[index])
                        Spacer()
                        Text("\(index + 1)番目の都道府県です")
                    }
                    .listRowInsets(.init(top: 0, leading: 2, bottom: 0, trailing: 2))
                    .frame(width: nil, height: 35, alignment: .center)
                    .background(self.cellColor[index % self.cellColor.count])
                }

            }.environment(\.defaultMinListRowHeight, 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
