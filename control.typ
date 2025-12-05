#let print = false
#let lang-code = "shavian" // english (en), dutch (nl), ..., in progress: 
#let script-code = "sitelen" // sitelen (default), lasina, kanata




#import "@preview/penpo:0.1.0"
#let translation-credit = (
  en: "",
  shavian: "",
  nl: "Translation by jan Tenpi",
  zh: [Translation built by QQ:2934361574制作.]
)

#let script-credit = (
  kanata: [Toki pona adaptation of Canadian Aboriginal Syllabary by jan Sajen.],
  sitelen: "",
  lasina: "",
  sewijen: [Toki pona adaptation of Shavian by myself (fix)], // shavian
  tewanakali: [Toki pona adaptation of Devanagiri ], // devanagiri?
  alapi: [Toki pona adaptation of Arabic ], // arabic
  anku: [Toki pona adaptation of Hangeul ], // hangul (korean)
  kililisa: [Toki pona adaptation of Cyrillic], // cyrillic
  elina: [Toki pona adaptation of Greek],
  kijes: [Toki pona adaptation of Ge'ez by #[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Eli: "ilo lawa jasima"))#link("https://github.com/mindcat")[jan Eli]].]  
)

#let script-dict = (
  kanata: [ᕐᑲᓇᑕ], // canadian aboriginal syllabics (personal favorite)
  sitelen: [#penpo.pona.sitelen[sitelen pona]], // default logography
  lasina: "latin", // default for anyone already familiar with the latin script
  sewijen: [𐑖𐑱𐑝𐑾𐑯], // shavian
  tewanakali: [देवनागरी], // devanagiri?
  alapi: [اَلْعَرَبِيَّةُ], // arabic
  anku: [한글], // hangul (korean)
  kililisa: [Кириллица], // cyrillic
  kijes: [ግዕዝ], // ge'ez script
)