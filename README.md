# 📶 WiFi Cat (SwiftUI Shape Art)

使用純 SwiftUI 原生形狀（Shapes）與圖層堆疊技術繪製的「WiFi 接收貓咪」向量插畫專案[cite: 74, 87]。本專案參考經典圖樣，透過幾何形狀組合與座標微調，精準還原貓咪的厭世表情、接收天線手勢與 WiFi 訊號波紋[cite: 102]。

---

## 🎨 核心技術與繪圖技巧

本專案完全不依賴外部圖片資源，純粹使用 SwiftUI 的幾何形狀與 Modifier 堆疊構建[cite: 26, 35]：

1. **多圖層立體堆疊 (`ZStack`)**
   - 依照由底至頂的渲染順序排版：`背景` $\rightarrow$ `捲曲尾巴` $\rightarrow$ `WiFi 訊號` $\rightarrow$ `手臂與外側長毛` $\rightarrow$ `三角耳朵` $\rightarrow$ `軀幹與盤腿底座` $\rightarrow$ `WIFI 文字` $\rightarrow$ `頭型與毛流` $\rightarrow$ `厭世五官`[cite: 74, 102]。
2. **基本幾何形狀靈活運用**
   - **`Circle` & `Ellipse`**：繪製圓潤頭型、兩頰漸層長毛與手肘蓬鬆毛茸茸的外輪廓[cite: 61, 62, 102]。
   - **`Capsule`**：建構手臂骨幹、盤腿坐姿基底與細長眼睛輪廓[cite: 63, 102]。
   - **`RoundedRectangle`**：透過角度旋轉（`rotationEffect`）與局部遮罩，製作俐落堅挺的三角立耳[cite: 64, 99, 110]。
3. **修飾符（Modifiers）與幾何剪裁**
   - **`.trim(from:to:)`**：裁切圓形弧度呈現頭頂 WiFi 訊號波、盤腿交疊摺痕以及底部捲曲的尾巴[cite: 80, 81, 102]。
   - **直角折線嘴巴**：以 `Rectangle().trim(from: 0, to: 0.5)` 搭配 `.stroke(style: StrokeStyle(lineCap: .round, lineJoin: .round))` 與旋轉，完美呈現「^」字傲嬌撇嘴[cite: 84, 99, 105]。
   - **座標對齊**：善用 `.offset(x:y:)` 進行多圖層微調與位置定錨[cite: 75, 76]。
   - **全螢幕畫布適配**：搭配 `.frame(...)` 與 `.ignoresSafeArea()` 確保預覽與實機執行時完整展示無死角[cite: 40, 90, 111]。

---

## 🛠 開發環境 (Environment)

- **Language:** Swift 5 / Swift 6[cite: 112]
- **Framework:** SwiftUI[cite: 1]
- **IDE:** Xcode 16+[cite: 5]
- **Platform:** iOS 17+ / macOS 14+[cite: 20, 112]

---

## 🚀 如何執行 (Getting Started)

1. Clone 本專案至本地端：
   ```bash
   git clone [https://github.com/](https://github.com/)<YourUsername>/WiFi-Cat.git
