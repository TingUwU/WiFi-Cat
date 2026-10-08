//
//  ContentView.swift
//  WiFi Cat
//
//  Created by Kate on 2026/10/7.
//

import SwiftUI

struct ContentView: View {
    // 定義貓咪的代表顏色
    let catWhite = Color(red: 242/255, green: 245/255, blue: 248/255)
    let catGray = Color(red: 200/255, green: 210/255, blue: 218/255)
    let earPink = Color(red: 245/255, green: 155/255, blue: 175/255)
    let darkGray = Color(red: 50/255, green: 55/255, blue: 65/255)
    let eyeBlue = Color(red: 50/255, green: 140/255, blue: 220/255)
    let wifiBlue = Color(red: 90/255, green: 130/255, blue: 160/255)

    var body: some View {
        ZStack {
            // 背景底色：指定長型畫布大小，強制把預覽視窗上下撐開
            Color(red: 25/255, green: 28/255, blue: 32/255)
                .frame(width: 400, height: 800)
                .ignoresSafeArea()

            // MARK: - 1. 尾巴部分
            ZStack {
                Circle()
                    .trim(from: 0.15, to: 0.65)
                    .stroke(catWhite, style: StrokeStyle(lineWidth: 26, lineCap: .round))
                    .frame(width: 80, height: 100)
                    .offset(x: -10, y: 220)

                // 尾巴末端漩渦感
                Circle()
                    .fill(catWhite)
                    .frame(width: 28, height: 28)
                    .offset(x: 10, y: 250)
            }

            // MARK: - 2. WiFi 訊號波紋（頭頂兩側）
            // 左側 WiFi 訊號
            Circle()
                .trim(from: 0.55, to: 0.72)
                .stroke(wifiBlue, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                .frame(width: 80, height: 80)
                .offset(x: -110, y: -205)

            Circle()
                .trim(from: 0.55, to: 0.72)
                .stroke(wifiBlue, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                .frame(width: 50, height: 50)
                .offset(x: -105, y: -195)

            // 右側 WiFi 訊號
            Circle()
                .trim(from: 0.78, to: 0.95)
                .stroke(wifiBlue, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                .frame(width: 80, height: 80)
                .offset(x: 110, y: -205)

            Circle()
                .trim(from: 0.78, to: 0.95)
                .stroke(wifiBlue, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                .frame(width: 50, height: 50)
                .offset(x: 105, y: -195)

            // MARK: - 3. 舉起的手臂與蓬鬆毛茸茸的外輪廓
            // 左手毛球堆疊
            Circle()
                .fill(catWhite)
                .frame(width: 75, height: 75)
                .offset(x: -125, y: -125)
            Capsule()
                .fill(catWhite)
                .frame(width: 60, height: 130)
                .offset(x: -122, y: -50)
            Circle()
                .fill(catWhite)
                .frame(width: 80, height: 80)
                .offset(x: -110, y: -15)
//            Capsule()
//                .fill(catWhite)
//                .frame(width: 60, height: 160)
//                .rotationEffect(.degrees(22))
//                .offset(x: -95, y: -60)

            // 右手毛球堆疊
            Circle()
                .fill(catWhite)
                .frame(width: 75, height: 75)
                .offset(x: 125, y: -125)
            Capsule()
                .fill(catWhite)
                .frame(width: 60, height: 130)
                .offset(x: 122, y: -50)
            Circle()
                .fill(catWhite)
                .frame(width: 80, height: 80)
                .offset(x: 110, y: -15)
//            Capsule()
//                .fill(catWhite)
//                .frame(width: 60, height: 160)
//                .rotationEffect(.degrees(-22))
//                .offset(x: 95, y: -60)

            // 手掌爪子勾回（像天線接觸）
            Circle()
                .trim(from: 0.2, to: 0.8)
                .stroke(catGray, lineWidth: 3)
                .frame(width: 25, height: 25)
                .offset(x: -105, y: -120)
            Circle()
                .trim(from: 0.2, to: 0.8)
                .stroke(catGray, lineWidth: 3)
                .frame(width: 25, height: 25)
                .rotationEffect(.degrees(180))
                .offset(x: 105, y: -120)
            
            // 右手指
            Ellipse()
                .fill(catWhite)
                .frame(width: 28, height: 40)
                .offset(x: 105, y: -160)
            // 左手指
            Ellipse()
                .fill(catWhite)
                .frame(width: 28, height: 40)
                .offset(x: -110, y: -160)


           // MARK: - 4. 貓耳朵（俐落尖角的三角形）
                // --- 左耳 ---
                // 左耳外耳（正方形旋轉 45 度露出三角形尖角，下半部埋入頭部）
                RoundedRectangle(cornerRadius: 6)
                    .fill(catWhite)
                    .frame(width: 58, height: 58)
                    .rotationEffect(.degrees(10))
                    .offset(x: -50, y: -155)

                // 左耳粉紅內耳（縮小疊加，形成對稱三角形）
                RoundedRectangle(cornerRadius: 4)
                    .fill(earPink)
                    .frame(width: 30, height: 55)
                    .rotationEffect(.degrees(10))
                    .offset(x: -65, y: -154)
                // --- 右耳 ---
                // 右耳外耳（與左耳對稱）
                RoundedRectangle(cornerRadius: 6)
                    .fill(catWhite)
                    .frame(width: 58, height: 58)
                    .rotationEffect(.degrees(-10))
                    .offset(x: 50, y: -155)

                // 右耳粉紅內耳（縮小疊加，鏡射靠外側貼合）
                RoundedRectangle(cornerRadius: 4)
                    .fill(earPink)
                    .frame(width: 30, height: 55)
                    .rotationEffect(.degrees(-10))
                    .offset(x: 65, y: -154)

            // MARK: - 5. 身體與盤腿坐姿
            // 身體主幹
            RoundedRectangle(cornerRadius: 60)
                .fill(catWhite)
                .frame(width: 175, height: 210)
                .offset(y: 40)

            // 盤坐的下半身底座
            Capsule()
                .fill(catWhite)
                .frame(width: 220, height: 95)
                .offset(y: 145)

            // 盤腿交叉折線
            Circle()
                .trim(from: 0.1, to: 0.45)
                .stroke(catGray, lineWidth: 3.5)
                .frame(width: 120, height: 60)
                .offset(x: 150, y: -35)
                .rotationEffect(.degrees(90))

            Circle()
                .trim(from: 0.55, to: 0.9)
                .stroke(catGray, lineWidth: 3.5)
                .frame(width: 120, height: 60)
                .offset(x: 150, y: 30)
                .rotationEffect(.degrees(90))

            // MARK: - 6. 胸口文字標誌
            Text("WIFI")
                .font(.system(size: 26, weight: .heavy, design: .rounded))
                .tracking(2)
                .foregroundStyle(wifiBlue)
                .offset(y: 35)

            // MARK: - 7. 頭部主體與臉部蓬鬆毛
            // 頭型基底
            Circle()
                .fill(catWhite)
                .frame(width: 190, height: 180)
                .offset(y: -95)

            // 兩頰與下巴長毛陰影層（淺灰層次）
            Ellipse()
                .fill(catGray.opacity(0.65))
                .frame(width: 135, height: 60)
                .offset(y: -50)

            // 額頭與眉心層次
            Ellipse()
                .fill(catWhite)
                .frame(width: 130, height: 50)
                .offset(y: -75)

            // MARK: - 8. 五官特徵（厭世半閉眼、粉紅小鼻、倒V嘴）
            // 左眼（藍色半月鳳眼，黃色邊緣反光）
            ZStack {
                Capsule()
                    .fill(Color.yellow.opacity(0.85))
                    .frame(width: 44, height: 14)
                    .rotationEffect(.degrees(18))

                Capsule()
                    .fill(eyeBlue)
                    .frame(width: 42, height: 11)
                    .rotationEffect(.degrees(18))

                // 上眼皮（壓低顯現厭世瞇瞇眼）
                Rectangle()
                    .fill(catWhite)
                    .frame(width: 45, height: 10)
                    .offset(y: -6)
                    .rotationEffect(.degrees(18))

                // 黑色眼線
                Capsule()
                    .fill(darkGray)
                    .frame(width: 44, height: 3)
                    .offset(y: -3)
                    .rotationEffect(.degrees(18))
            }
            .offset(x: -42, y: -90)

            // 右眼
            ZStack {
                Capsule()
                    .fill(Color.yellow.opacity(0.85))
                    .frame(width: 44, height: 14)
                    .rotationEffect(.degrees(-18))

                Capsule()
                    .fill(eyeBlue)
                    .frame(width: 42, height: 11)
                    .rotationEffect(.degrees(-18))

                // 上眼皮
                Rectangle()
                    .fill(catWhite)
                    .frame(width: 45, height: 10)
                    .offset(y: -6)
                    .rotationEffect(.degrees(-18))

                // 黑色眼線
                Capsule()
                    .fill(darkGray)
                    .frame(width: 44, height: 3)
                    .offset(y: -3)
                    .rotationEffect(.degrees(-18))
            }
            .offset(x: 42, y: -90)

            // 鼻子（倒粉紅三角）
            Rectangle()
                .trim(from: 0, to: 0.5)
                .fill(earPink)
                .frame(width: 14, height: 14)
                .rotationEffect(.degrees(135))
                .offset(y: -77)

            // 嘴巴（傲嬌倒 V 撇嘴）
            Rectangle()
                .trim(from: 0, to: 0.5)
                .stroke(darkGray, style: StrokeStyle(lineWidth: 3.5, lineCap: .round, lineJoin: .round))
                .frame(width: 14, height: 14)
                .rotationEffect(.degrees(-45))
                .offset(y: -50)
        }
        
    }
}

#Preview {
    ContentView()
}
