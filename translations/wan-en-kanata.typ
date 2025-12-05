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

== Basic Sentences

The particle #kanata("li") separates the subject from the predicate.

#kanata("soweli li moku") – _The cat is eating._

#kanata("jan li lape") – _People sleep._

There is no verb “to be.”
The part after #kanata("li") (predicate) can be a noun or an adjective.

#kanata("kili li moku") – _Fruits are food._

#kanata("telo li pona") – _Water is good._

If the subject is #kanata("mi") or #kanata("sina") alone, the #kanata("li") is always omitted.

#kanata("mi moku") – _I eat._

#kanata("sina pona") – _You are good._

== Ambiguity

Toki Pona words are less specific than English words, so one-to-one translation is not as easy.

#kanata("mi moku") – _I am eating, I was eating, or I will be eating._

Many words have multiple or general meanings.

#kanata("soweli") - _A cat, dog, or any land mammal._

#kanata("kili") - _Any fruit or vegetable._

Most words can act as nouns, verbs, adjectives, or adverbs.

#kanata("telo") – _Water, wet, or to wash._

#kanata("pona") - _Good, simple, to improve, or wellness._

Nouns have no number and there is no "a" or "the".

#kanata("kala") – _A fish, the fish, some fish._

#kanata("mi") – _I, me, we, or us._

== Direct objects

The particle #kanata("e") signifies the direct object. This also makes the previous word into a verb.

#kanata("soweli li moku e telo") – _The animal drinks the water._

#kanata("mi telo e luka") – _I wash my hands._

#kanata("sina suli e ona") - _You enlarge it._

== Modifying words

Words can be modified by appending other words.

#kanata("jan lili") – _Child (small human)._

#kanata("tomo mi") – _My house._

#kanata("pilin pona") – _A good feeling._

To negate a word, append #kanata("ala")

#kanata("mi lape ala") – _I’m not sleeping._

#kanata("jan ala li toki") – _No one is talking._

With multiple modifiers, they all modify the first word.

#kanata("lipu kasi tu") – _Two plant lists._

#kanata("poki laso pimeja") – _A blue and black box._

You can change the way the modifiers interact using pi .

#kanata("lipu pi kasi tu") – _A two-plant list._

#kanata("poki pi laso pimeja")– _A dark-blue box._


== Prepositions

#kanata("kepeken"), #kanata("lon"), #kanata("sama"), #kanata("tan"), and #kanata("tawa") can act as prepositions. They go at the end of a statement.

#kanata("mi moku kepeken ilo") – _I eat with cutlery._

#kanata("soweli li lon tomo") – _The animal is in the house._

#kanata("sina toki sama waso") – _You sing like a bird!_

#kanata("mi kama tan pali") – _I return from work._

#kanata("ona li toki e ni tawa sina") – _They said that to you._

== Questions

There are three ways to form a question. If you want a yes-or-no answer, use verb #kanata("ala") verb.

#kanata("ona li musi ala musi") - _Is she playing?_

This will usually result in one of three types of replies:

#kanata("musi") - _Yes: [she is") playing._

#kanata("musi ala") - _No: [she is") not playing._

#kanata("ala") - _No: [she is") not [playing")._

If you want to check something, end the sentence with #kanata("anu seme")

#kanata("sina seli anu seme") - _Are you making fire?_

#kanata("soweli suwi li lon poki anu seme") - _Is the cute cat in a box?_

Replace unknown info with #kanata("seme") to form an open-ended question.

#kanata("jan seme li pana e moku telo") - _Who's bringing the drinks?_

#kanata("sina pali e seme") - _What are you making?_

== Interjections

Interjections are common. Add #kanata("a") for
emphasis.

#kanata("pona") – _Good! / Great! / Thanks!_

#kanata("wawa a") – _So powerful!_

#kanata("toki") – _Hello! / Hi! / Greetings!_

#kanata("lon") – _True! / Correct!_

#kanata("moku pona") – _Bon appetit!_


== Conjunctions

There are many ways to say "and". Use #kanata("en") for 2+ subjects.

#kanata("mi en sina li musi mute") – _You and I are playing a lot._

For 2+ predicates, repeat #kanata("li").

#kanata("soweli ni li lili li suwi") – _This animal is small and cute._

For direct objects, repeat #kanata("e").

#kanata("ona li lukin e waso e kala") – _She sees a bird and a fish._

For prepositions, repeat the preposition.

#kanata("mi pali e tomo kepeken palisa kepeken kiwen") – _I build the house using sticks and stones._

#kanata("anu") can be used to mean “or.”

#kanata("ni li pona anu ike") – _Is this good or bad?_

#kanata("mi anu sina li tawa esun") – _You or I are going to the store._

== Loanwords

Toki Pona uses *proper adjectives*, not nouns. These are marked by a box. Only the first sound of each word is read.

#penpo.nimi-ijo((Sonja: "sona olin nasa jasima alasa"))
#penpo.nimi-ijo((Tosi: "tan open sin ijo"))
#penpo.nimi-ijo((Mewika: "mani esin wawa insa kule awen"))

#kanata("jan Sonja") – _A person named Sonja, a.k.a. jan Sonja._

#kanata("toki Tosi") - _The language "Tosi" (Deutsch), a.k.a. German._

#kanata("ma Mewika li suli") – _The land Mewika (USA) is big._

Loanwords should try to follow Toki Pona's rules for syllables:
- They have exactly one vowel.
- They may have ◌ᓐ at the end.
- The first syllable in a word may start with a vowel.
- The others must all start with a consonant.
- The combinations ᑎ, ᔨ, ᕗ, & ᕘ are avoided.

== The word #kanata("o")

You can use #kanata("o") before a verb to tur into a command.
n it
#kanata("o kute") – _Listen!_

#kanata("o moku telo") – _Please drink._

You can use #kanata("o") after a subject to address them.

#penpo.nimi-ijo((Eten: "esun telo en nasa"))

#kanata("jan Eten o") - _Eten! (Aden)_

You can place #kanata("o") between subject and predicate to express a wish, desire, request, etc. 

#kanata("pona o tawa sina") - _Joy to you._

#kanata("mi o pali") - _I should be working._

Or it can also be a contraction of the first two uses.

#penpo.nimi-ijo((Sasa: "sewi awen suwi alasa"))

#kanata("soweli Sasa o moku") - _Eat, Sasa. (Sasza)_

== Preverbs

Preverbs go before verbs to
modify their meaning.

#kanata("mi ken sitelen") - _I can write._

#kanata("waso lili li wile kama suli") - _The small bird wants to become big._

The words #kanata("wile"), #kanata("kama"), #kanata("sona"), #kanata("lukin"), #kanata("ken"), #kanata("awen"), and #kanata("alasa") can be preverbs.

== Context

The word #kanata("la") can be used to
mark the context of a sentence:

a #kanata("la") b means: In the context of a, b. This can mean time, cause, topic, etc.

#kanata("sina lon poka mi la mi pilin pona") - _When you are by my side, I feel good._

The word #kanata("la") is often used to move a prepositional phrase to the front of the sentence.

#kanata("sama mi la sina mute") - _Just like me, you know a lot._

#kanata("tan seme la sina seli") - _Why are you hot?_

The preposition #kanata("lon") can be omitted in this case.

#kanata("tenpo pimeja la mi lape") - _I sleep [at") night._

== Numbers

Combine number words to add them up.

For example, #kanata("wan") is 1, #kanata("tu") is 2, #kanata("luka") is 5, #kanata("mute") is 20, #kanata("ale") is 100, #kanata("tu tu") is 4, and #kanata("luka tu wan") is 8.

The word #kanata("nanpa") can be used to mark ordinals.

#kanata("lipu nanpa wan li pona") - _The first book is good._

#kanata("nasin nanpa mute luka wan") - _26th Street._