//
//  AlarmsView.swift
//  Clock
//
//  Created by Skye Willow Harris-Stoertz on 2024-12-06.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "bed.double.fill")
                    Text ("Sleep | Wake Up")
                        .font(.system(size: 23.0, weight: .semibold, design: .default))
                        .padding(EdgeInsets(top: 30, leading: 0, bottom: 20, trailing: 0))
                    Spacer()
                }
                HStack {
                    Text ("No Alarm")
                        .font(.system(size: 20.0, weight: .thin, design: .default))
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 40, trailing: 0))
                    Spacer()
                    
                    Text("SET UP")
                        .foregroundStyle(Color.orange)
                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        .foregroundStyle(.white)
                        .background(Color.gray, in: RoundedRectangle(cornerRadius: 20))
                    
                }
                HStack {
                    Text ("Other")
                        .font(.system(size: 23.0, weight: .semibold, design: .default))
                    Spacer()
                }
                
                // 7:30 Alarm
                TimesView(time: "7:30", amOrPm: "AM")
                
                // 8:15 Alarm
                TimesView(time: "8:15", amOrPm: "AM")
                
                // 9:00 Alarm
                TimesView(time: "9:00", amOrPm: "AM")
                
                // 9:15 Alarm
                TimesView(time: "9:15", amOrPm: "AM")
                
            }
            .navigationTitle("Alarms")
        }
    }
}



#Preview {
    LandingView()
}


