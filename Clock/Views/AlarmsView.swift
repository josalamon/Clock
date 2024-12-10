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
                    // Left side
                    VStack (alignment: .leading) {
                        HStack (spacing: 10) {
                            Text("7:30")
                                .font(.system(size: 64.0, weight: .thin, design: .default))
                            
                            Text ("AM")
                                .font(.system(size: 35.0, weight: .light, design: .default))
                            Spacer()
                        }
                        Text ("Alarm")
                            .font(.system(size: 20.0, weight: .regular, design: .default))
                    }
                    // Right side
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    }
                }
            }
            .navigationTitle("Alarms")
        }
    }
}

#Preview {
    LandingView()
}
