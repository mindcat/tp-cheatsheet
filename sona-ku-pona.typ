#import "@preview/penpo:0.1.0"
#import "@preview/fontawesome:0.6.0": fa-icon
#import "@preview/catppuccin:1.0.1": catppuccin, flavors, get-flavor
#show: catppuccin.with(flavors.latte)
#let flavor = get-flavor("latte")
#let palette = flavor.colors

#import "control.typ": *
#set page(columns: 4, margin: (bottom: 1in, rest: 0.5in), fill: {if print==true {white} else {palette.base.rgb}} )

#set text(font: ("Fira Sans", "Noto Sans Canadian Aboriginal", "NanumGothic", "Doolittle Garamond"), size: 9pt)
#set par(spacing: 0.8em, leading: 0.4em)
#show link: set text(fill: palette.blue.rgb)

#set page(footer: context {
  if counter(page).get().first() > 1 {
  } else {
    align(center)[This cheat sheet was programmed by #[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Eli: "ilo lawa jasima"))#link("https://github.com/mindcat")[jan Eli]]#h(0.4em) in #link("https://github.com/typst/typst")[Typst], and was only possible because of #link("https://github.com/mindcat/penpo.typ")[#penpo.pona.sitelen[penpo] penpo]. \ Front sheet (usage) credit: #link("https://github.com/zhukant/toki-pona-cheatsheet-suko")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Suko: "sitelen uta kule olin"))jan Suko]], based on #link("https://blinry.org/toki-pona-cheat-sheet/")[blinry] & #link("https://jansa-tp.github.io/cheatsheet")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Sa: "sona ala"))jan Sa]]. Back sheet (vocabulary) credit: #link("https://tenpi.li/tokipona/catdict")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Tenpi: "tonsi en nanpa pan ijo"))jan Tenpi]]. \ #translation-credit.at(lang-code) #script-credit.at(script-code) ]
  }
})

#fa-icon("language") #lang-code \~ #fa-icon("signature") #script-dict.at(script-code) \~ 
#if print==true {
  fa-icon("print")
} else {
  fa-icon("file-pdf")
}

#fa-icon("calendar-day"): #datetime.today().display()

#include "translations/wan-" + lang-code + ".typ"

// #include "translations/wan-" + lang-code + "-" + script-code + ".typ"

#pagebreak()

#include "tu.typ"