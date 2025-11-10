#import "@preview/penpo:0.1.0"
#import "@preview/catppuccin:1.0.1": catppuccin, flavors, get-flavor
#show: catppuccin.with(flavors.latte)
#let flavor = get-flavor("latte")
#let palette = flavor.colors

#set page(columns: 4, margin: (bottom: 1in, rest: 0.5in))
#set text(font: "Fira Sans", size: 8pt)
#set par(spacing: 0.8em, leading: 0.4em)

#show link: set text(fill: palette.blue.rgb)

#set page(footer: context {
  if counter(page).get().first() > 1 {
  } else {
    align(center)[This cheat sheet was built by #[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Eli: "ilo lawa jasima"))#link("https://github.com/mindcat")[jan Eli]]#h(0.4em) in #link("https://github.com/typst/typst")[Typst], and was only possible because of #link("https://github.com/mindcat/penpo.typ")[#penpo.pona.sitelen[penpo] penpo]. Front sheet \ (usage) credit: #link("https://github.com/zhukant/toki-pona-cheatsheet-suko")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Suko: "sitelen uta kule olin"))jan Suko]], based on #link("https://blinry.org/toki-pona-cheat-sheet/")[blinry] & #link("https://jansa-tp.github.io/cheatsheet")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Sa: "sona ala"))jan Sa]]. Back sheet (vocabulary) credit: #link("https://tenpi.li/tokipona/catdict")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Tenpi: "tonsi en nanpa pan ijo"))jan Tenpi]]. ]
  }
})

// #[
//   #show: pp => [
//     #penpo.pona.sitelen[#pp]
//     #penpo.lasina.sitelen[#pp]
//   ];#penpo.nimi-ijo((Eli: "ilo lawa jasima")) #h(0.7em) jan Eli]

// #[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Eli: "ilo lawa jasima"))jan Eli]

// #link("https://github.com/zhukant/toki-pona-cheatsheet-suko")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Suko: "sitelen uta kule olin"))jan Suko]]

// #link("https://jansa-tp.github.io/cheatsheet")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Sa: "sona ala"))jan Sa]]

// #link("https://tenpi.li/tokipona/catdict")[#[#show: pp => [#penpo.pona.sitelen[#pp]];#penpo.nimi-ijo((Tenpi: "tonsi en nanpa pan ijo"))jan Tenpi]]

#include "wan-en.typ"

#pagebreak()

// #set page(columns: 7, margin: 0.5in, flipped: true)
#set page(columns: 5, margin: 0.5in, flipped: false)

#set columns(gutter: 1em)

#include "tu.typ"