# 🎯 Z-Buffer Calibration TOOL
### **A precision tool for calibrating game engine depth buffers to ensure pixel-perfect masking for post-processing shaders, built for ReShade FX.**

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg) 
![ReShade: Compatible](https://img.shields.io/badge/ReShade-4.0+-green.svg)
![Category: Shader Development](https://img.shields.io/badge/Category-Technical--Art-orange.svg)

---

## 🌍 Overview / Genel Bakış
**Z-Buffer Calibration TOOL** is a technical utility for game researchers and shader developers. It allows you to visualize the game engine's depth buffer and find the exact "sky threshold" value for advanced post-processing effects.

**Z-Buffer Calibration TOOL**, oyun araştırmacıları ve shader geliştiricileri için teknik bir yardımcı araçtır. Oyun motorunun derinlik tamponunu (depth buffer) görselleştirmenizi ve gelişmiş efektler için kesin "gökyüzü eşiği" değerini bulmanızı sağlar.

---

## 🛠️ Installation / Kurulum

1. **Download** the `zBufferDebugger.fx` file.
2. **Move** the file to your game's ReShade shader folder: 
   - `[Game Directory]/reshade-shaders/Shaders/`
3. **Launch** the game and open the ReShade menu (**Home/Pos1**).
4. **Activate** `Z_Buffer_Calibration_Tool`.

---

1. `zBufferDebugger.fx` dosyasını **indirin**.
2. Dosyayı oyununuzun ReShade shader klasörüne **taşıyın**: 
   - `[Oyun Klasörü]/reshade-shaders/Shaders/`
3. Oyunu **başlatın** ve ReShade menüsünü açın (**Home/Pos1**).
4. `Z_Buffer_Calibration_Tool` efektini **aktif edin**.

---

## 🚀 How to Use? / Nasıl Kullanılır?

### **Step 1: Visualizing Data / 1. Adım: Veriyi Görselleştirme**
* **English:** Enable **Visualizer Mode** to see the raw depth map. Black means near, White means far (Sky).
* **Türkçe:** Ham derinlik haritasını görmek için **Analiz Modu**'nu açın. Siyah yakın objeleri, Beyaz ise gökyüzünü temsil eder.



### **Step 2: Finding the Threshold / 2. Adım: Eşiği Bulma**
* **English:** Adjust the **Depth Sensitivity** slider. Your goal is to make the sky purely isolated.
* **Türkçe:** **Derinlik Hassasiyeti** sürgüsünü kaydırın. Amacınız gökyüzünü tam olarak izole etmektir.

### **Step 3: Verification / 3. Adım: Doğrulama**
* **English:** Turn on **Show Mask Overlay**. The isolated sky will turn **Magenta (Purple)**. If the purple area perfectly fits the sky without bleeding into your vehicle/objects, you found the correct value!
* **Türkçe:** **Maskeyi Göster** seçeneğini açın. İzole edilen gökyüzü **Mor (Magenta)** renge bürünecektir. Eğer mor alan aracınıza taşmadan tam gökyüzüne oturuyorsa, doğru değeri buldunuz demektir!



---

## 🎓 Why use this? / Neden kullanmalısınız?
In any game, shaders like **Fog, Sky Replacement, or Ambient Occlusion** fail if the depth is not calibrated. This tool gives you the exact numerical value needed for perfect visuals.

Herhangi bir oyunda; **Sis, Gökyüzü Değiştirme veya AO** gibi shaderlar derinlik kalibre edilmezse bozulur. Bu araç, mükemmel görsellik için gereken kesin sayısal değeri size verir.

---

### 🤝 Contributing
Feel free to fork and add more diagnostic features!
Hata ayıklama özellikleri eklemek için projeyi fork'lamaktan çekinmeyin!
