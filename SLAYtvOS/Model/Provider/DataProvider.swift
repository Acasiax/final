/// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation

class DataProvider: ObservableObject {
  @Published var categories: [Category] = []

  /// Compute new categories that only contain favorited videos. Based on the `categories` object.
  var categoriesWithFavoriteVideos: [Category] {
    return categories.filter { category in
      return !category.favoriteVideos.isEmpty
    }
  }

  var massiveCategoryList: [Category] {
    var categories: [Category] = []
    for _ in 0..<100 {
      categories.append(contentsOf: self.categories)
    }
    return categories
  }

  init() {
    categories = [
      Category(title: "Louis Vuitton", videos: [
        Video(
          title: "Louis Vuitton-Pharrell Williams.",
          description: "Pharrell Williams is known as a famous music producer, singer, and designer, participating in various projects in the realms of fashion and music.",
          thumbnailName: "루이비통-퍼렐 윌리엄스."
        ),
        Video(
          title: "Men’s Pre-Fall 2024 Show",
          description: " by Pharrell Williams in Hong Kong.",
          thumbnailName: "Louis Vuitton Men’s Pre-Fall 2024 Show by Pharrell Williams in Hong Kong."
        ),
        Video(
          title: "Spring-Summer 2024 Show",
          description: "Nicolas Ghesquière presented Show live from 103 avenue des Champs-Élysées in Paris on Monday, October 2nd, 2023.​",
          thumbnailName: "Louis Vuitton Spring-Summer 2024 Show | LOUIS VUITTON"
        )
      ]),
      Category(title: "Prada", videos: [
        Video(
          title: "Prada-Miuccia",
          description: "",
          thumbnailName: "마리아 그라치아 치우리"
        ),
        Video(
          title: "SS24 Womenswear Collection",
          description: "by Miuccia Prada and Raf Simons today at Fondazione Prada Deposito.",
          thumbnailName: "Miuccia Prada and Raf Simons present Prada SS24 Womenswear Collection"
        ),
        Video(
          title: "SS24 Menswear Collection",
          description: "by Miuccia Prada and Raf Simons today at Fondazione Prada Deposito.",
          thumbnailName: "Miuccia Prada and Raf Simons present Prada SS24 Menswear Collection"
        ),
        Video(
          title: "FW23 Womenswear Collection",
          description: "by Miuccia Prada and Raf Simons reconceptualizes, reconsiders and ultimately rediscovers ideas of beauty.",
          thumbnailName: "Miuccia Prada and Raf Simons present Prada FW23 Womenswear Collection"
        )
      ]),
      Category(title: "Burberry", videos: [
        Video(
          title: "Burberry-Daniel Lee",
          description: "",
          thumbnailName: "버버리-다니엘리"
        ),
        Video(
          title: "Burberry Summer 2024",
          description: "Summer 2024 collection by Daniel Lee",
          thumbnailName: "Burberry Summer 2024"
        ),
        Video(
          title: "Burberry Winter 2023​​",
          description: "",
          thumbnailName: "Burberry Winter 2023​​"
        ),
        Video(
          title: "The BurberrySS23 Runway Show",
          description: "by Riccardo Tisci. ​",
          thumbnailName: "The BurberrySS23 Runway Show"
        )
      ]),
      Category(title: "Saint Laurent", videos: [
        Video(
          title: "YSL-Anthony Vaccarello",
          description: "",
          thumbnailName: "입생로랑-안토니 바카렐로"
        ),
        Video(
          title: "SAINT LAURENT - WOMEN’S WINTER 23 SHOW",
          description: "by Anthony Vaccarello.",
          thumbnailName: "SAINT LAURENT - WOMEN’S WINTER 23 SHOW"
        ),

        Video(
          title: "MEN’S SUMMER 24 SHOW",
          description: "by Anthony Vaccarello",
          thumbnailName: "SAINT LAURENT - MEN’S SUMMER 24 SHOW"
        ),
        Video(
          title: "WOMEN’S WINTER 23 SHOW",
          description: "by Anthony Vaccarello",
          thumbnailName: "SAINT LAURENT - WOMEN’S WINTER 23 SHOW"
        ),
        
        Video(
          title: "MEN'S WINTER 23 SHOW",
          description: "by Anthony Vaccarello",
          thumbnailName: "SAINT LAURENT - MEN'S WINTER 23 SHOW"
        )
      ])
    ]
  }
}
