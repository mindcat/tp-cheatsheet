// uses tp-dataset to convert arrays of toki pona lemma's to a given language
#import "@preview/penpo:0.1.0"
#import "control.typ": *

#let wordlist-data = toml("tp-dataset/categories/typst.toml")
#let word-file-paths = wordlist-data.wordlist.list

#let words-data = {
  let data = (:) 
  for file in word-file-paths {
    let word-object = toml({"tp-dataset/words/" + file})
    data.insert(word-object.lemma, word-object)
  }
  data
}

#let word-in-script(word-lemma, script) = {
  let word-data = words-data.at(word-lemma, default: none)
  
  if (word-lemma in script-names.at(script-code)) {
    script-names.at(script-code).at(word-lemma)
  } else if word-data != none {
    word-data.script.at(script, default: word-lemma) 
  } else {
    word-lemma
  }
}

#let convert(sentence, script) = {
  
  if script == "sitelen" {
    return {
      penpo.nimi-ijo((Sonja: "sona olin nasa jasima alasa"))
      penpo.nimi-ijo((Tosi: "tan open sin ijo"))
      penpo.nimi-ijo((Mewika: "mani esin wawa insa kule awen"))
      penpo.nimi-ijo((Eten: "esun telo en nasa"))
      penpo.nimi-ijo((Sasa: "sewi awen suwi alasa"))
      [#penpo.pona.sitelen[#sentence]]}
  } else if script == "lasina" {
    return sentence
  }

  let parts = sentence.split()
  let converted-sentence = () 

  for word in parts {
    converted-sentence.push(word-in-script(word, script))
  }
  
  converted-sentence.join(" ")
}

#let sitelen(sentence) = {
  convert(sentence, "sitelen")
}

#let kanata(sentence) = {
  convert(sentence, "kanata")
}

#let anku(sentence) = {
  convert(sentence, "anku")
}

#let sewijen(sentence) = {
  convert(sentence, "sewijen")
}

#let alapi(sentence) = {
  convert(sentence, "alapi")
}

#let kililisa(sentence) = {
  convert(sentence, "kililisa")
}

#let elina(sentence) = {
  convert(sentence, "elina")
}

#let tewanakali(sentence) = {
  convert(sentence, "tewanakali")
}

#let kijes(sentence) = {
  convert(sentence, "kijes")
}