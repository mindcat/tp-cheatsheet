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

Kijes (ኪዬ) uses the Ethiopic Ge'ez Script (ግዕዝ) to represent the 46 possible consonant vowel pairs: 

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
)

== Basic Sentences

The particle #kijes("li") separates the subject from the predicate.

#kijes("soweli li moku") – _The cat is eating._

#kijes("jan li lape") – _People sleep._

There is no verb “to be.”
The part after #kijes("li") (predicate) can be a noun or an adjective.

#kijes("kili li moku") – _Fruits are food._

#kijes("telo li pona") – _Water is good._

If the subject is #kijes("mi") or #kijes("sina") alone, the #kijes("li") is always omitted.

#kijes("mi moku") – _I eat._

#kijes("sina pona") – _You are good._

== Ambiguity

Toki Pona words are less specific than English words, so one-to-one translation is not as easy.

#kijes("mi moku") – _I am eating, I was eating, or I will be eating._

Many words have multiple or general meanings.

#kijes("soweli") - _A cat, dog, or any land mammal._

#kijes("kili") - _Any fruit or vegetable._

Most words can act as nouns, verbs, adjectives, or adverbs.

#kijes("telo") – _Water, wet, or to wash._

#kijes("pona") - _Good, simple, to improve, or wellness._

Nouns have no number and there is no "a" or "the".

#kijes("kala") – _A fish, the fish, some fish._

#kijes("mi") – _I, me, we, or us._

== Direct objects

The particle #kijes("e") signifies the direct object. This also makes the previous word into a verb.

#kijes("soweli li moku e telo") – _The animal drinks the water._

#kijes("mi telo e luka") – _I wash my hands._

#kijes("sina suli e ona") - _You enlarge it._

== Modifying words

Words can be modified by appending other words.

#kijes("jan lili") – _Child (small human)._

#kijes("tomo mi") – _My house._

#kijes("pilin pona") – _A good feeling._

To negate a word, append #kijes("ala")

#kijes("mi lape ala") – _I’m not sleeping._

#kijes("jan ala li toki") – _No one is talking._

With multiple modifiers, they all modify the first word.

#kijes("lipu kasi tu") – _Two plant lists._

#kijes("poki laso pimeja") – _A blue and black box._

You can change the way the modifiers interact using pi .

#kijes("lipu pi kasi tu") – _A two-plant list._

#kijes("poki pi laso pimeja")– _A dark-blue box._


== Prepositions

#kijes("kepeken"), #kijes("lon"), #kijes("sama"), #kijes("tan"), and #kijes("tawa") can act as prepositions. They go at the end of a statement.

#kijes("mi moku kepeken ilo") – _I eat with cutlery._

#kijes("soweli li lon tomo") – _The animal is in the house._

#kijes("sina toki sama waso") – _You sing like a bird!_

#kijes("mi kama tan pali") – _I return from work._

#kijes("ona li toki e ni tawa sina") – _They said that to you._

== Questions

There are three ways to form a question. If you want a yes-or-no answer, use verb #kijes("ala") verb.

#kijes("ona li musi ala musi") - _Is she playing?_

This will usually result in one of three types of replies:

#kijes("musi") - _Yes: [she is") playing._

#kijes("musi ala") - _No: [she is") not playing._

#kijes("ala") - _No: [she is") not [playing")._

If you want to check something, end the sentence with #kijes("anu seme")

#kijes("sina seli anu seme") - _Are you making fire?_

#kijes("soweli suwi li lon poki anu seme") - _Is the cute cat in a box?_

Replace unknown info with #kijes("seme") to form an open-ended question.

#kijes("jan seme li pana e moku telo") - _Who's bringing the drinks?_

#kijes("sina pali e seme") - _What are you making?_

== Interjections

Interjections are common. Add #kijes("a") for
emphasis.

#kijes("pona") – _Good! / Great! / Thanks!_

#kijes("wawa a") – _So powerful!_

#kijes("toki") – _Hello! / Hi! / Greetings!_

#kijes("lon") – _True! / Correct!_

#kijes("moku pona") – _Bon appetit!_


== Conjunctions

There are many ways to say "and". Use #kijes("en") for 2+ subjects.

#kijes("mi en sina li musi mute") – _You and I are playing a lot._

For 2+ predicates, repeat #kijes("li").

#kijes("soweli ni li lili li suwi") – _This animal is small and cute._

For direct objects, repeat #kijes("e").

#kijes("ona li lukin e waso e kala") – _She sees a bird and a fish._

For prepositions, repeat the preposition.

#kijes("mi pali e tomo kepeken palisa kepeken kiwen") – _I build the house using sticks and stones._

#kijes("anu") can be used to mean “or.”

#kijes("ni li pona anu ike") – _Is this good or bad?_

#kijes("mi anu sina li tawa esun") – _You or I are going to the store._

== Loanwords

Toki Pona uses *proper adjectives*, not nouns. These are marked by a box. Only the first sound of each word is read.

#penpo.nimi-ijo((Sonja: "sona olin nasa jasima alasa"))
#penpo.nimi-ijo((Tosi: "tan open sin ijo"))
#penpo.nimi-ijo((Mewika: "mani esin wawa insa kule awen"))

#kijes("jan Sonja") – _A person named Sonja, a.k.a. jan Sonja._

#kijes("toki Tosi") - _The language "Tosi" (Deutsch), a.k.a. German._

#kijes("ma Mewika li suli") – _The land Mewika (USA) is big._

Loanwords should try to follow Toki Pona's rules for syllables:
- They have exactly one vowel.
- They may have ◌ᓐ at the end.
- The first syllable in a word may start with a vowel.
- The others must all start with a consonant.
- The combinations ᑎ, ᔨ, ᕗ, & ᕘ are avoided.

== The word #kijes("o")

You can use #kijes("o") before a verb to tur into a command.
n it
#kijes("o kute") – _Listen!_

#kijes("o moku telo") – _Please drink._

You can use #kijes("o") after a subject to address them.

#penpo.nimi-ijo((Eten: "esun telo en nasa"))

#kijes("jan Eten o") - _Eten! (Aden)_

You can place #kijes("o") between subject and predicate to express a wish, desire, request, etc. 

#kijes("pona o tawa sina") - _Joy to you._

#kijes("mi o pali") - _I should be working._

Or it can also be a contraction of the first two uses.

#penpo.nimi-ijo((Sasa: "sewi awen suwi alasa"))

#kijes("soweli Sasa o moku") - _Eat, Sasa. (Sasza)_

== Preverbs

Preverbs go before verbs to
modify their meaning.

#kijes("mi ken sitelen") - _I can write._

#kijes("waso lili li wile kama suli") - _The small bird wants to become big._

The words #kijes("wile"), #kijes("kama"), #kijes("sona"), #kijes("lukin"), #kijes("ken"), #kijes("awen"), and #kijes("alasa") can be preverbs.

== Context

The word #kijes("la") can be used to
mark the context of a sentence:

a #kijes("la") b means: In the context of a, b. This can mean time, cause, topic, etc.

#kijes("sina lon poka mi la mi pilin pona") - _When you are by my side, I feel good._

The word #kijes("la") is often used to move a prepositional phrase to the front of the sentence.

#kijes("sama mi la sina mute") - _Just like me, you know a lot._

#kijes("tan seme la sina seli") - _Why are you hot?_

The preposition #kijes("lon") can be omitted in this case.

#kijes("tenpo pimeja la mi lape") - _I sleep [at") night._

== Numbers

Combine number words to add them up.

For example, #kijes("wan") is 1, #kijes("tu") is 2, #kijes("luka") is 5, #kijes("mute") is 20, #kijes("ale") is 100, #kijes("tu tu") is 4, and #kijes("luka tu wan") is 8.

The word #kijes("nanpa") can be used to mark ordinals.

#kijes("lipu nanpa wan li pona") - _The first book is good._

#kijes("nasin nanpa mute luka wan") - _26th Street._