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
                
                // 7:30 Alarm
                ExtractedView(time: "7:30", amOrPm: "AM")
                
                // 8:15 Alarm
                ExtractedView(time: "8:15", amOrPm: "AM")
                
                // 9:00 Alarm
                ExtractedView(time: "9:00", amOrPm: "AM")
                
                // 9:15 Alarm
                ExtractedView(time: "9:15", amOrPm: "AM")

            }
            .navigationTitle("Alarms")
        }
    }
}



#Preview {
    LandingView()
}

struct ExtractedView: View {

    // MARK: Stored properties
    let time: String
    let amOrPm: String
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            // Left side
            VStack (alignment: .leading) {
                HStack (spacing: 10) {
                    Text(time)
                        .font(.system(size: 64.0, weight: .thin, design: .default))
                    Text (amOrPm)
                        .font(.system(size: 35.0, weight: .light, design: .default))
                        .alignmentGuide(VerticalAlignment.center) { _
                            in 12 }
                }
                Text ("Alarm")
                    .font(.system(size: 20.0, weight: .regular, design: .default))
            }
            // Right side
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
            }
            .tint(.green)
            .alignmentGuide(VerticalAlignment.center) { _
                in 23 }
        }
    }
}
