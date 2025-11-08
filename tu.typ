#import "@preview/penpo:0.1.0"
#import "@preview/catppuccin:1.0.1": catppuccin, flavors, get-flavor
#show: catppuccin.with(flavors.latte)
#let flavor = get-flavor("latte")
#let palette = flavor.colors


// #block(
//   // fill: luma(230),
//   stroke: (
//     paint: palette.rosewater.rgb,
//     thickness: 2pt
//   ),
//   // inset: 8pt,
//   radius: 4pt,
//   [
//     #block(fill: palette.rosewater.rgb, width: 100%, height: 2em, [
//       #align(center + horizon)[
//         #text(palette.base.rgb)[== people]
//       ]
//     ])
//     #block(inset: (x: 8pt, bottom: 8pt, top: 4pt), [
//       #v(-0.5em)
//       #stack(
//         dir: ttb,
//         spacing: 1em,
//         // --- Entry 1: kulupu ---
//         stack(
//           dir: ltr,
//           spacing: 0.5em,
//           // Fixed-width box for the logograph to ensure column alignment
//           [#box(width: 2em, [
//             #align(center + horizon)[
//               #text(size: 25pt)[#penpo.pona.sitelen[kulupu]]
//             ]
//           ])],
//           stack(dir: ttb, spacing: 0.2em,
//             [=== kulupu],
//             [#par(leading: 0.2em, )[#text(size: 9pt)[group, community, collection, team]]]
//           ),
//         ),
//         // --- Entry 2: jan ---
//         stack(
//           dir: ltr,
//           spacing: 0.5em,
//           // Fixed-width box for the logograph to ensure column alignment
//           [#box(width: 2em, [
//             #align(center + horizon)[
//               #text(size: 25pt)[#penpo.pona.sitelen[jan]]
//             ]
//           ])],
//           stack(dir: ttb, spacing: 0.2em,
//             [=== jan],
//             [#par(leading: 0.2em, )[#text(size: 9pt)[person, somebody]]]
//           ),
//         ),
//         // --- Entry 3: meli ---
//         stack(
//           dir: ltr,
//           spacing: 0.5em,
//           // Fixed-width box for the logograph to ensure column alignment
//           [#box(width: 2em, [
//             #align(center + horizon)[
//               #text(size: 25pt)[#penpo.pona.sitelen[meli]]
//             ]
//           ])],
//           stack(dir: ttb, spacing: 0.2em,
//             [=== meli],
//             [#par(leading: 0.2em, )[#text(size: 9pt)[female, feminine]]]
//           ),
//         ),
//       )
//     ])
//   ],
// )

#let lang-setting = "en"

#let category-colors = (
  people: palette.rosewater.rgb,
  body: palette.rosewater.rgb,
  necessities: palette.sky.rgb,
  critters: palette.green.rgb,
  sight: palette.blue.rgb,
  state: palette.mauve.rgb,
  activity: palette.peach.rgb,
  elements: palette.teal.rgb,
  things: palette.yellow.rgb,
  ideas: palette.lavender.rgb,
  locating: palette.maroon.rgb,
  descriptions: palette.sapphire.rgb,
  counting: palette.pink.rgb,
  connection: palette.red.rgb,
  evoke: palette.flamingo.rgb,
)

#let semantic-data = toml("tp-dataset/categories/semantic.toml")

#let wordlist-data = toml("tp-dataset/categories/typst.toml")
#let word-file-paths = wordlist-data.wordlist.list

#let words-data = {
  let data = ()
  for file in word-file-paths {
    data.push(toml({"tp-dataset/words/" + file}))
  }
  data
}

#let render-word-entry(word, lang) = {
  

  stack(
    dir: ltr,
    spacing: 0.5em,
    [#box(width: 2em, [
      #align(center + horizon)[#text(size: 25pt)[#penpo.pona.sitelen[#word.lemma]]]
    ])],
    stack(dir: ttb, spacing: 0.2em,
      [=== #word.lemma],
      [#par(leading: 0.2em, )[#text(size: 9pt)[#word.definitions.at(lang, default: "Definition missing for " + lang)]]]
    ),
  )
}

#let generate-category-block(category-id, category-data, words, lang) = {
  let cat-label = category-data.semantic.labels.at(lang).at(category-id, default: category-id)
  let cat-color = category-colors.at(category-id, default: palette.surface1.rgb)

  let filtered-words = words.filter(w => w.categories.at("semantic", default: ()).contains(category-id))

  if filtered-words.len() > 0 {
    block(
      stroke: (
        paint: cat-color,
        thickness: 2pt
      ),
      radius: 4pt,
      [
        #block(fill: cat-color, width: 100%, height: 2em, [
          #align(center + horizon)[
            #text(palette.base.rgb)[== #cat-label]
          ]
        ])
        #block(inset: (x: 8pt, bottom: 8pt, top: 4pt), [
          #v(-0.5em)
          #stack(
            dir: ttb,
            spacing: 1em,
            for word in filtered-words {
              render-word-entry(word, lang)
            }
          )
        ])
      ],
    )
  } else {
    []
  }
}

#for category-id in semantic-data.semantic.order {
  generate-category-block(category-id, semantic-data, words-data, lang-setting)
  v(1em)
}
