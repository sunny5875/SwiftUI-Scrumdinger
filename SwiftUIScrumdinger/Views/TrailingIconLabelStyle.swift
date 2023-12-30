//
//  TrailingIconLabelStyle.swift
//  SwiftUIScrumdinger
//
//  Created by 현수빈 on 12/30/23.
//

import SwiftUI

// 비슷한 view의 경우에서 조금만 다를 경우 프로토콜을 만들면 재사용이 가능하다!
struct TrailingIconLabelStyle: LabelStyle {
    // 프로토콜 내에 있는 함수, 해당 style을 받아서 재사용하고 싶은 뷰를 그리면 됨
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}


// 프로토콜 확장에서 정적 속성이나 메서드를 정의할 때 'Self' 제약 조건을 추가하여 해당 속성이나 메서드가 형식을 준수하는 데 사용할 수 있음을 컴파일러에 알려야 함
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
