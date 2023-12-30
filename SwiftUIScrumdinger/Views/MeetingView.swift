//
//  ContentView.swift
//  SwiftUIScrumdinger
//
//  Created by 현수빈 on 12/30/23.
//

import SwiftUI
import CoreData

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                    
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore) // 해당 뷰 하위에 있는 접근성 라벨 및 값을 어떻게 할꺼냐인데 여기서는 child를 무시한다라고 보면 됨!!
            .accessibilityLabel("Time remaining") // 해당 accessibility element의 이름을 지정해줄 수 있음
            .accessibilityValue("10 minutes")// 위에서 하위뷰를 무시했기 떄문에 추가해야 함. 안추가하면 swiftUI가 추론
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                })
            }
            .accessibilityLabel("Next speaker")
        }.padding()
    }
    
    
}


#Preview {
    MeetingView()
}
