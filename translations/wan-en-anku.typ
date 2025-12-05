#import "@preview/penpo:0.1.0"
#import "@preview/fontawesome:0.6.0": fa-icon
#import "../pen.typ": *
// #import "@preview/catppuccin:1.0.1": catppuccin, flavors
// #show: catppuccin.with(flavors.latte)

#v(-2em)
#text(size: 30pt)[#penpo.pona.sitelen[toki pona]]
#v(-1.2em)
= toki pona

#set text(size: 8.5pt)

Developed by linguist Sonja Lang, toki pona is a language with $tilde$130 words. 

Anku (안구) uses the Korean Hangeul (한글) to represent the 46 possible consonant vowel pairs: 

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

== Basic Sentences

The particle #anku("li") separates the subject from the predicate.

#anku("soweli li moku") – _The cat is eating._

#anku("jan li lape") – _People sleep._

There is no verb “to be.”
The part after #anku("li") (predicate) can be a noun or an adjective.

#anku("kili li moku") – _Fruits are food._

#anku("telo li pona") – _Water is good._

If the subject is #anku("mi") or #anku("sina") alone, the #anku("li") is always omitted.

#anku("mi moku") – _I eat._

#anku("sina pona") – _You are good._

== Ambiguity

Toki Pona words are less specific than English words, so one-to-one translation is not as easy.

#anku("mi moku") – _I am eating, I was eating, or I will be eating._

Many words have multiple or general meanings.

#anku("soweli") - _A cat, dog, or any land mammal._

#anku("kili") - _Any fruit or vegetable._

Most words can act as nouns, verbs, adjectives, or adverbs.

#anku("telo") – _Water, wet, or to wash._

#anku("pona") - _Good, simple, to improve, or wellness._

Nouns have no number and there is no "a" or "the".

#anku("kala") – _A fish, the fish, some fish._

#anku("mi") – _I, me, we, or us._

== Direct objects

The particle #anku("e") signifies the direct object. This also makes the previous word into a verb.

#anku("soweli li moku e telo") – _The animal drinks the water._

#anku("mi telo e luka") – _I wash my hands._

#anku("sina suli e ona") - _You enlarge it._

== Modifying words

Words can be modified by appending other words.

#anku("jan lili") – _Child (small human)._

#anku("tomo mi") – _My house._

#anku("pilin pona") – _A good feeling._

To negate a word, append #anku("ala")

#anku("mi lape ala") – _I’m not sleeping._

#anku("jan ala li toki") – _No one is talking._

With multiple modifiers, they all modify the first word.

#anku("lipu kasi tu") – _Two plant lists._

#anku("poki laso pimeja") – _A blue and black box._

You can change the way the modifiers interact using pi .

#anku("lipu pi kasi tu") – _A two-plant list._

#anku("poki pi laso pimeja")– _A dark-blue box._


== Prepositions

#anku("kepeken"), #anku("lon"), #anku("sama"), #anku("tan"), and #anku("tawa") can act as prepositions. They go at the end of a statement.

#anku("mi moku kepeken ilo") – _I eat with cutlery._

#anku("soweli li lon tomo") – _The animal is in the house._

#anku("sina toki sama waso") – _You sing like a bird!_

#anku("mi kama tan pali") – _I return from work._

#anku("ona li toki e ni tawa sina") – _They said that to you._

== Questions

There are three ways to form a question. If you want a yes-or-no answer, use verb #anku("ala") verb.

#anku("ona li musi ala musi") - _Is she playing?_

This will usually result in one of three types of replies:

#anku("musi") - _Yes: [she is") playing._

#anku("musi ala") - _No: [she is") not playing._

#anku("ala") - _No: [she is") not [playing")._

If you want to check something, end the sentence with #anku("anu seme")

#anku("sina seli anu seme") - _Are you making fire?_

#anku("soweli suwi li lon poki anu seme") - _Is the cute cat in a box?_

Replace unknown info with #anku("seme") to form an open-ended question.

#anku("jan seme li pana e moku telo") - _Who's bringing the drinks?_

#anku("sina pali e seme") - _What are you making?_

== Interjections

Interjections are common. Add #anku("a") for
emphasis.

#anku("pona") – _Good! / Great! / Thanks!_

#anku("wawa a") – _So powerful!_

#anku("toki") – _Hello! / Hi! / Greetings!_

#anku("lon") – _True! / Correct!_

#anku("moku pona") – _Bon appetit!_


== Conjunctions

There are many ways to say "and". Use #anku("en") for 2+ subjects.

#anku("mi en sina li musi mute") – _You and I are playing a lot._

For 2+ predicates, repeat #anku("li").

#anku("soweli ni li lili li suwi") – _This animal is small and cute._

For direct objects, repeat #anku("e").

#anku("ona li lukin e waso e kala") – _She sees a bird and a fish._

For prepositions, repeat the preposition.

#anku("mi pali e tomo kepeken palisa kepeken kiwen") – _I build the house using sticks and stones._

#anku("anu") can be used to mean “or.”

#anku("ni li pona anu ike") – _Is this good or bad?_

#anku("mi anu sina li tawa esun") – _You or I are going to the store._

== Loanwords

Toki Pona uses *proper adjectives*, not nouns. These are marked by a box. Only the first sound of each word is read.

#penpo.nimi-ijo((Sonja: "sona olin nasa jasima alasa"))
#penpo.nimi-ijo((Tosi: "tan open sin ijo"))
#penpo.nimi-ijo((Mewika: "mani esin wawa insa kule awen"))

#anku("jan Sonja") – _A person named Sonja, a.k.a. jan Sonja._

#anku("toki Tosi") - _The language "Tosi" (Deutsch), a.k.a. German._

#anku("ma Mewika li suli") – _The land Mewika (USA) is big._

Loanwords should try to follow Toki Pona's rules for syllables:
- They have exactly one vowel.
- They may have ◌ᓐ at the end.
- The first syllable in a word may start with a vowel.
- The others must all start with a consonant.
- The combinations ᑎ, ᔨ, ᕗ, & ᕘ are avoided.

== The word #anku("o")

You can use #anku("o") before a verb to tur into a command.
n it
#anku("o kute") – _Listen!_

#anku("o moku telo") – _Please drink._

You can use #anku("o") after a subject to address them.

#penpo.nimi-ijo((Eten: "esun telo en nasa"))

#anku("jan Eten o") - _Eten! (Aden)_

You can place #anku("o") between subject and predicate to express a wish, desire, request, etc. 

#anku("pona o tawa sina") - _Joy to you._

#anku("mi o pali") - _I should be working._

Or it can also be a contraction of the first two uses.

#penpo.nimi-ijo((Sasa: "sewi awen suwi alasa"))

#anku("soweli Sasa o moku") - _Eat, Sasa. (Sasza)_

== Preverbs

Preverbs go before verbs to
modify their meaning.

#anku("mi ken sitelen") - _I can write._

#anku("waso lili li wile kama suli") - _The small bird wants to become big._

The words #anku("wile"), #anku("kama"), #anku("sona"), #anku("lukin"), #anku("ken"), #anku("awen"), and #anku("alasa") can be preverbs.

== Context

The word #anku("la") can be used to
mark the context of a sentence:

a #anku("la") b means: In the context of a, b. This can mean time, cause, topic, etc.

#anku("sina lon poka mi la mi pilin pona") - _When you are by my side, I feel good._

The word #anku("la") is often used to move a prepositional phrase to the front of the sentence.

#anku("sama mi la sina mute") - _Just like me, you know a lot._

#anku("tan seme la sina seli") - _Why are you hot?_

The preposition #anku("lon") can be omitted in this case.

#anku("tenpo pimeja la mi lape") - _I sleep [at") night._

== Numbers

Combine number words to add them up.

For example, #anku("wan") is 1, #anku("tu") is 2, #anku("luka") is 5, #anku("mute") is 20, #anku("ale") is 100, #anku("tu tu") is 4, and #anku("luka tu wan") is 8.

The word #anku("nanpa") can be used to mark ordinals.

#anku("lipu nanpa wan li pona") - _The first book is good._

#anku("nasin nanpa mute luka wan") - _26th Street._