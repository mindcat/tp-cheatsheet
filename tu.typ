#import "@preview/penpo:0.1.0"
#import "@preview/tiaoma:0.3.0": qrcode
// #import "@preview/flagada:1.0.1" : flag
#import "flagada/flags.typ": flag
#import "@preview/catppuccin:1.0.1": catppuccin, flavors, get-flavor
#show: catppuccin.with(flavors.latte)
#let flavor = get-flavor("latte")
#let palette = flavor.colors

#set text(font: ("Fira Sans", "Noto Sans Canadian Aboriginal", "NanumGothic", "Inter Alia"), size: 8pt)

#import "control.typ": *
#set page(columns: 5, margin: (x: 0.5in, y: 0.5in), flipped: false, fill: {if print==true {white} else {palette.base.rgb}})
#set columns(gutter: 1em)

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
  // block(breakable: false)[
  stack(
    dir: ltr,
    spacing: 0.8em,
    [#box(width: 1.5em, [
      #align(center + horizon)[#text(size: 15pt)[#penpo.pona.sitelen[#word.lemma]]]
    ])],
    stack(dir: ttb, spacing: 0.2em,
      [#text(size: 6pt)[
        #if script-code=="sitelen" {
          [*#word.lemma*]
        } else if script-code=="lasina" {
          [*#word.lemma*]
        } else {
          [*#word.script.at(script-code)*]
        }
      ]#box(width: 1fr)[]#text(size: 5pt)[#word.origin.word 
      #if word.origin.iso.len() == 2 {flag(word.origin.iso, height: 0.65em)}
      ]#box(width: 0.2em)[]],
      [#par(leading: 0.2em, )[#text(size: 6pt)[#word.definitions.at(lang, default: "Definition missing for " + lang)]]]
    ),
  )
  // ]
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
      radius: 3pt,
      [
        #block(fill: cat-color, width: 100%, height: 1.5em, sticky: true, [
          #align(center + horizon)[
            #text(palette.base.rgb)[=== #cat-label]
          ]
        ])
        #block(inset: (left: 6pt, bottom: 6pt, top: 4pt, right: 20pt), 
        sticky: {if lang-code=="en" {true} else {false}}, 
        [
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
  generate-category-block(category-id, semantic-data, words-data, lang-code)
  v(0.5em)
}

#align(center)[#qrcode("https://github.com/mindcat/tp-cheatsheet", options: (scale: {if lang-code=="en" {3.0} else {1.1}}, output-options: (barcode-dotty-mode: true)))]