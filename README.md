# Mini Katalog Uygulaması

## Kısa Açıklama
Bu proje, Flutter eğitimi kapsamında geliştirilmiş temel seviyede ancak profesyonel görünümlü bir **Mini Katalog Uygulaması** taslağıdır. Uygulama; widget ağacı yapısını, sayfa geçişlerini (`Navigator.push` / `Navigator.pop`), `Route Arguments` ile sayfalar arası veri taşımayı, yerel JSON veri kaynağından (`assets/products.json`) veri okumayı, `fromJson` / `toJson` metotlarıyla veri modellemeyi, `GridView` ile kart tabanlı ürün listelemeyi, dinamik arama/filtrelemeyi ve `StatefulWidget` (`setState`) ile sepet yönetimi simülasyonunu içermektedir. Eğitim kuralları gereği harici hiçbir paket kullanılmamış, yalnızca varsayılan `material.dart` paketi kullanılmıştır.

## Kullanılan Flutter Sürümü
- **Flutter SDK:** 3.50.0 (Channel stable)
- **Dart SDK:** 3.x (Null Safety)
- **Kullanılan Paketler:** `flutter/material.dart` (Varsayılan - Ekstra paket kullanılmamıştır)

## Proje Klasör Yapısı
```text
mini_katalog/
├── assets/
│   ├── images/                    # Banner ve ürün görselleri (Image.asset)
│   └── products.json              # Ürün katalog verileri (JSON simülasyonu)
├── lib/
│   ├── models/
│   │   └── product.dart           # Ürün veri modeli (fromJson / toJson)
│   ├── screens/
│   │   ├── home_screen.dart           # Ana Sayfa (Discover, Arama ve GridView)
│   │   ├── product_detail_screen.dart # Ürün Detay Sayfası (Route Arguments)
│   │   └── cart_screen.dart           # Sepet Ekranı (Boş/Dolu Sepet & Checkout)
│   ├── widgets/
│   │   └── product_card.dart          # GridView Ürün Kartı Bileşeni
│   └── main.dart                  # Uygulama Başlangıç Noktası
├── screenshots/                   # Uygulamaya Ait Ekran Görüntüleri
└── pubspec.yaml                   # Proje ve Asset Yapılandırması