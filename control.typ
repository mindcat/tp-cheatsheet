#let print = true
#let lang-code = "zh" // english (en), dutch (nl), ..., in progress: 
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
  sitelen: [],
  telo: [By u/efofecks],
  lasina: [],
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
  telo: [sipelen telo], // japanese inspired logography
  lasina: "latin", // default for anyone already familiar with the latin script
  sewijen: [𐑖𐑱𐑝𐑾𐑯], // shavian
  tewanakali: [देवनागरी], // devanagiri?
  alapi: [اَلْعَرَبِيَّةُ], // arabic
  anku: [한글], // hangul (korean)
  kililisa: [Кириллица], // cyrillic
  kijes: [ግዕዝ], // ge'ez script
)

#let script-names = (
  kanata: (:),
  lasina: (:),
  telo: (:),
  sewijen: (:),
  tewanakali: (:),
  alapi: (:),
  anku: (:),
  kililisa: (:),
  kijes: (:),
)

#let script-size = (
  kanata: 8.3pt,
  sitelen: 9pt,
  telo: 9pt,
  lasina: 8.6pt,
  sewijen: 9pt,
  tewanakali: 9pt,
  alapi: 9pt,
  anku: 8.5pt,
  kililisa: 9pt,
  kijes: 8.5pt,
)

#import "@preview/fontawesome:0.6.0": fa-icon
#let section = (
  kanata: (
    desc: [
      Kanata (ᕐᑲᓇᑕ) uses the Canadian Aboriginal Syllabary to represent the 46 possible consonant vowel pairs: 

      #figure(
        table(
          columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
          align: center,
          inset: 8pt,
          
          // Header
          table.header(
            [], [*e*], [*i*], [*o*], [*u*], [*a*], [#fa-icon("forward-step", size: 5.5pt)],
          ),

          // Vowels
          [*$not$*], [ᐁ], [ᐃ], [ᐅ], [ᐆ], [ᐊ], [],

          // p
          [*p-*], [ᐯ], [ᐱ], [ᐳ], [ᐴ], [ᐸ], [],

          // t (ti is disallowed)
          [*t-*], [ᑌ], text(fill: gray.lighten(40%))[ᑎ], [ᑐ], [ᑑ], [ᑕ], [],

          // k
          [*k-*], [ᑫ], [ᑭ], [ᑯ], [ᑰ], [ᑲ], [],

          // m
          [*m-*], [ᒣ], [ᒥ], [ᒧ], [ᒨ], [ᒪ], [],

          // n (has final)
          [*n-*], [ᓀ], [ᓂ], [ᓄ], [ᓅ], [ᓇ], [◌ᓐ],

          // l
          [*l-*], [ᓓ], [ᓕ], [ᓗ], [ᓘ], [ᓚ], [],

          // s
          [*s-*], [ᓭ], [ᓯ], [ᓱ], [ᓲ], [ᓴ], [],

          // j (ji is disallowed)
          [*j-*], [ᔦ], text(fill: gray.lighten(40%))[ᔨ], [ᔪ], [ᔫ], [ᔭ], [],

          // w (wo and wu are disallowed)
          [*w-*], [ᕓ], [ᕕ], text(fill: gray.lighten(40%))[ᕗ], text(fill: gray.lighten(40%))[ᕘ], [ᕙ], [],
        ),
        supplement: none,
        numbering: none, 
        caption: [
          ᕐ◌ is a naming mark. Light text indicates syllables _not allowed_ in Toki Pona.
        ],
      )
    ],
    loan-rules: [
        - They have exactly one vowel.
        - They may have ◌ᓐ at the end.
        - The first syllable in a word may start with a vowel.
        - The others must all start with a consonant.
        - The combinations ᑎ, ᔨ, ᕗ, & ᕘ are avoided.]
  ),
  sitelen: (
    desc: [],
    loan-rules: [
      - They have exactly one vowel.
      - They may have n at the end.
      - The first syllable in a word may start with a vowel.
      - The others must all start with a consonant.
      - The combinations wu, wo, ji, ti, nm and nn are avoided.]
    ),
  telo: (
    desc: [],
    loan-rules: [
      - They have exactly one vowel.
      - They may have n at the end.
      - The first syllable in a word may start with a vowel.
      - The others must all start with a consonant.
      - The combinations wu, wo, ji, ti, nm and nn are avoided.]
    ),
  lasina: (desc:[],
    loan-rules: [
      - They have exactly one vowel.
      - They may have n at the end.
      - The first syllable in a word may start with a vowel.
      - The others must all start with a consonant.
      - The combinations wu, wo, ji, ti, nm and nn are avoided.]),
  sewijen: (desc:[#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center,
    inset: 8pt,

    // Vowels
    [*a*], [*e*], [*i*], [*o*], [*u*], [*j*], [*k*], 
    [𐑨], [𐑧], [𐑰], [𐑴], [𐑵], [𐑘], [𐑒],
    [*l*], [*m*], [*n*], [*p*], [*s*], [*t*], [*w*], 
    [𐑤], [𐑥], [𐑯], [𐑐], [𐑕], [𐑑], [𐑢], 
  ),
  supplement: none,
  numbering: none, 
)],loan-rules:[]),
  tewanakali: (desc: [], loan-rules: []),
  alapi: (:),
  anku: (
    desc: [
      Anku (안구) uses Korean Hangeul (한글) to represent the 46 possible consonant vowel pairs: 

      #figure(
        table(
          columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
          align: center,
          inset: 8pt,
          
          // Header
          table.header(
            [], [*e*], [*i*], [*o*], [*u*], [*a*], [*#fa-icon("forward-step", size: 5.5pt)*],
          ),

          // Null Onset (ㅇ)
          [*$not$*], [에], [이], [오], [우], [아], [],

          // p (Consonant: ㅂ)
          [*p-*], [베], [비], [보], [부], [바], [],

          // t (Consonant: ㄷ, ti is disallowed)
          [*t-*], [데], text(fill: gray.lighten(40%))[디], [도], [두], [다], [],

          // k (Consonant: ㄱ)
          [*k-*], [게], [기], [고], [구], [가], [],

          // m (Consonant: ㅁ)
          [*m-*], [메], [미], [모], [무], [마], [],

          // n (Consonant: ㄴ, has final)
          [*n-*], [네], [니], [노], [누], [나], [+ㄴ],

          // l (Consonant: ㄹ)
          [*l-*], [레], [리], [로], [루], [라], [],

          // s (Consonant: ㅅ)
          [*s-*], [세], [시], [소], [수], [사], [],

          // j (Consonant: ㅇ + Y-DIPHTHONGS. ji is disallowed)
          [*j-*], [예], text(fill: gray.lighten(40%))[이], [요], [유], [야], [],

          // w (Uses compound vowels; wo and wu are disallowed)
          [*w-*], [웨], [위], text(fill: gray.lighten(40%))[워], text(fill: gray.lighten(40%))[우], [와], [],
        ),
        supplement: none,
        numbering: none, 
        caption: [
          The final consonant *ㄴ* (nieun) is the only allowed coda in Toki Pona. Light text indicates syllables _not allowed_ in Toki Pona.
        ],
      )
    ],
    loan-rules: [
      - They have exactly one vowel.
      - They may have ㄴ at the end.
      - The first syllable in a word may start with a vowel.
      - The others must all start with a consonant.
      - The combinations 우, 워, 이, 디, ㄴㅁ and ㄴㄴ are avoided.]
  ),
  kililisa: (:),
  kijes: (
    desc: [Kijes (ኪዬ) uses the Ethiopic Ge'ez Script (ግዕዝ) to represent the 46 possible consonant vowel pairs: 

#figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center,
    inset: 8pt,
    
    // Header
    table.header(
      [], [*e*], [*i*], [*o*], [*u*], [*a*], [*#fa-icon("forward-step", size: 5.5pt)*],
    ),

    // Null Onset (Aleph)
    [*$not$*], [ኤ], [ኢ], [ኦ], [ኡ], [ኣ], [],

    // p (Pait)
    [*p-*], [ፔ], [ፒ], [ፖ], [ፑ], [ፓ], [],

    // t (Taw) - ti is disallowed
    [*t-*], [ቴ], text(fill: gray.lighten(40%))[ቲ], [ቶ], [ቱ], [ታ], [],

    // k (Kaf) - Corrected from Gaml (g)
    [*k-*], [ኬ], [ኪ], [ኮ], [ኩ], [ካ], [],

    // m (May)
    [*m-*], [ሜ], [ሚ], [ሞ], [ሙ], [ማ], [],

    // n (Nahas)
    [*n-*], [ኔ], [ኒ], [ኖ], [ኑ], [ና], [ን],

    // l (Law) - Corrected from Rees (r)
    [*l-*], [ሌ], [ሊ], [ሎ], [ሉ], [ላ], [],

    // s (Sat)
    [*s-*], [ሴ], [ሲ], [ሶ], [ሱ], [ሳ], [],

    // j (Yaman) - ji is disallowed
    [*j-*], [ዬ], text(fill: gray.lighten(40%))[ዪ], [ዮ], [ዩ], [ያ], [],

    // w (Wawe) - Corrected from Ve (v); wo/wu are disallowed
    [*w-*], [ዌ], [ዊ], text(fill: gray.lighten(40%))[ዎ], text(fill: gray.lighten(40%))[ዉ], [ዋ], [],
  ),
  supplement: none,
  numbering: none, 
  caption: [
    Characters are based on the standard Geʽez orders. The 6th order (Səds) of *Nahas* (*ን*) is used for the syllable coda.
  ],
)],
    loan-rules: [*WRITE PROPER RULES*]
  ),
)