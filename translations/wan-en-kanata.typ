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

The particle #penpo.pona.sitelen[li] separates the subject from the predicate.

#penpo.pona.sitelen[soweli li moku] – _The cat is eating._

#kanata("jan li lape") – _People sleep._

There is no verb “to be.”
The part after #penpo.pona.sitelen[li] (predicate) can be a noun or an adjective.

#penpo.pona.sitelen[kili li moku] – _Fruits are food._

#penpo.pona.sitelen[telo li pona] – _Water is good._

If the subject is #penpo.pona.sitelen[mi] or #penpo.pona.sitelen[sina] alone, the #penpo.pona.sitelen[li] is always omitted.

#penpo.pona.sitelen[mi moku] – _I eat._

#penpo.pona.sitelen[sina pona] – _You are good._

== Ambiguity

Toki Pona words are less specific than English words, so one-to-one translation is not as easy.

#penpo.pona.sitelen[mi moku] – _I am eating, I was eating, or I will be eating._

Many words have multiple or general meanings.

#penpo.pona.sitelen[soweli] - _A cat, dog, or any land mammal._

#penpo.pona.sitelen[kili] - _Any fruit or vegetable._

Most words can act as nouns, verbs, adjectives, or adverbs.

#penpo.pona.sitelen[telo] – _Water, wet, or to wash._

#penpo.pona.sitelen[pona] - _Good, simple, to improve, or wellness._

Nouns have no number and there is no "a" or "the".

#penpo.pona.sitelen[kala] – _A fish, the fish, some fish._

#penpo.pona.sitelen[mi] – _I, me, we, or us._

== Direct objects

The particle #penpo.pona.sitelen[e] signifies the direct object. This also makes the previous word into a verb.

#penpo.pona.sitelen[soweli li moku e telo] – _The animal drinks the water._

#penpo.pona.sitelen[mi telo e luka] – _I wash my hands._

#penpo.pona.sitelen[sina suli e ona] - _You enlarge it._

== Modifying words

Words can be modified by appending other words.

#penpo.pona.sitelen[jan lili] – _Child (small human)._

#penpo.pona.sitelen[tomo mi] – _My house._

#penpo.pona.sitelen[pilin pona] – _A good feeling._

To negate a word, append #penpo.pona.sitelen[ala]

#penpo.pona.sitelen[mi lape ala] – _I’m not sleeping._

#penpo.pona.sitelen[jan ala li toki] – _No one is talking._

With multiple modifiers, they all modify the first word.

#penpo.pona.sitelen[lipu kasi tu] – _Two plant lists._

#penpo.pona.sitelen[poki laso pimeja] – _A blue and black box._

You can change the way the modifiers interact using pi .

#penpo.pona.sitelen[lipu pi kasi tu] – _A two-plant list._

#penpo.pona.sitelen[poki pi laso pimeja]– _A dark-blue box._


== Prepositions

#penpo.pona.sitelen[kepeken], #penpo.pona.sitelen[lon], #penpo.pona.sitelen[sama], #penpo.pona.sitelen[tan], and #penpo.pona.sitelen[tawa] can act as prepositions. They go at the end of a statement.

#penpo.pona.sitelen[mi moku kepeken ilo] – _I eat with cutlery._

#penpo.pona.sitelen[soweli li lon tomo] – _The animal is in the house._

#penpo.pona.sitelen[sina toki sama waso] – _You sing like a bird!_

#penpo.pona.sitelen[mi kama tan pali] – _I return from work._

#penpo.pona.sitelen[ona li toki e ni tawa sina] – _They said that to you._

== Questions

There are three ways to form a question. If you want a yes-or-no answer, use verb #penpo.pona.sitelen[ala] verb.

#penpo.pona.sitelen[ona li musi ala musi] - _Is she playing?_

This will usually result in one of three types of replies:

#penpo.pona.sitelen[musi] - _Yes: [she is] playing._

#penpo.pona.sitelen[musi ala] - _No: [she is] not playing._

#penpo.pona.sitelen[ala] - _No: [she is] not [playing]._

If you want to check something, end the sentence with #penpo.pona.sitelen[anu seme]

#penpo.pona.sitelen[sina seli anu seme] - _Are you making fire?_

#penpo.pona.sitelen[soweli suwi li lon poki anu seme] - _Is the cute cat in a box?_

Replace unknown info with #penpo.pona.sitelen[seme] to form an open-ended question.

#penpo.pona.sitelen[jan seme li pana e moku telo] - _Who's bringing the drinks?_

#penpo.pona.sitelen[sina pali e seme] - _What are you making?_

== Interjections

Interjections are common. Add #penpo.pona.sitelen[a] for
emphasis.

#penpo.pona.sitelen[pona] – _Good! / Great! / Thanks!_

#penpo.pona.sitelen[wawa a] – _So powerful!_

#penpo.pona.sitelen[toki] – _Hello! / Hi! / Greetings!_

#penpo.pona.sitelen[lon] – _True! / Correct!_

#penpo.pona.sitelen[moku pona] – _Bon appetit!_


== Conjunctions

There are many ways to say "and". Use #penpo.pona.sitelen[en] for 2+ subjects.

#penpo.pona.sitelen[mi en sina li musi mute] – _You and I are playing a lot._

For 2+ predicates, repeat #penpo.pona.sitelen[li].

#penpo.pona.sitelen[soweli ni li lili li suwi] – _This animal is small and cute._

For direct objects, repeat #penpo.pona.sitelen[e].

#penpo.pona.sitelen[ona li lukin e waso e kala] – _She sees a bird and a fish._

For prepositions, repeat the preposition.

#penpo.pona.sitelen[mi pali e tomo kepeken palisa kepeken kiwen] – _I build the house using sticks and stones._

#penpo.pona.sitelen[anu] can be used to mean “or.”

#penpo.pona.sitelen[ni li pona anu ike] – _Is this good or bad?_

#penpo.pona.sitelen[mi anu sina li tawa esun] – _You or I are going to the store._

== Loanwords

Toki Pona uses *proper adjectives*, not nouns. These are marked by a box. Only the first sound of each word is read.

#penpo.nimi-ijo((Sonja: "sona olin nasa jasima alasa"))
#penpo.nimi-ijo((Tosi: "tan open sin ijo"))
#penpo.nimi-ijo((Mewika: "mani esin wawa insa kule awen"))

#penpo.pona.sitelen[jan Sonja] – _A person named Sonja, a.k.a. jan Sonja._

#penpo.pona.sitelen[toki Tosi] - _The language "Tosi" (Deutsch), a.k.a. German._

#penpo.pona.sitelen[ma Mewika li suli] – _The land Mewika (USA) is big._

Loanwords should try to follow Toki Pona's rules for syllables:
- They have exactly one vowel.
- They may have ◌ᓐ at the end.
- The first syllable in a word may start with a vowel.
- The others must all start with a consonant.
- The combinations ᑎ, ᔨ, ᕗ, & ᕘ are avoided.

== The word #penpo.pona.sitelen[o]

You can use #penpo.pona.sitelen[o] before a verb to tur into a command.
n it
#penpo.pona.sitelen[o kute] – _Listen!_

#penpo.pona.sitelen[o moku telo] – _Please drink._

You can use #penpo.pona.sitelen[o] after a subject to address them.

#penpo.nimi-ijo((Eten: "esun telo en nasa"))

#penpo.pona.sitelen[jan Eten o] - _Eten! (Aden)_

You can place #penpo.pona.sitelen[o] between subject and predicate to express a wish, desire, request, etc. 

#penpo.pona.sitelen[pona o tawa sina] - _Joy to you._

#penpo.pona.sitelen[mi o pali] - _I should be working._

Or it can also be a contraction of the first two uses.

#penpo.nimi-ijo((Sasa: "sewi awen suwi alasa"))

#penpo.pona.sitelen[soweli Sasa o moku] - _Eat, Sasa. (Sasza)_

== Preverbs

Preverbs go before verbs to
modify their meaning.

#penpo.pona.sitelen[mi ken sitelen] - _I can write._

#penpo.pona.sitelen[waso lili li wile kama suli] - _The small bird wants to become big._

The words #penpo.pona.sitelen[wile], #penpo.pona.sitelen[kama], #penpo.pona.sitelen[sona], #penpo.pona.sitelen[lukin], #penpo.pona.sitelen[ken], #penpo.pona.sitelen[awen], and #penpo.pona.sitelen[alasa] can be preverbs.

== Context

The word #penpo.pona.sitelen[la] can be used to
mark the context of a sentence:

a #penpo.pona.sitelen[la] b means: In the context of a, b. This can mean time, cause, topic, etc.

#penpo.pona.sitelen[sina lon poka mi la mi pilin pona] - _When you are by my side, I feel good._

The word #penpo.pona.sitelen[la] is often used to move a prepositional phrase to the front of the sentence.

#penpo.pona.sitelen[sama mi la sina mute] - _Just like me, you know a lot._

#penpo.pona.sitelen[tan seme la sina seli] - _Why are you hot?_

The preposition #penpo.pona.sitelen[lon] can be omitted in this case.

#penpo.pona.sitelen[tenpo pimeja la mi lape] - _I sleep [at] night._

== Numbers

Combine number words to add them up.

For example, #penpo.pona.sitelen[wan] is 1, #penpo.pona.sitelen[tu] is 2, #penpo.pona.sitelen[luka] is 5, #penpo.pona.sitelen[mute] is 20, #penpo.pona.sitelen[ale] is 100, #penpo.pona.sitelen[tu tu] is 4, and #penpo.pona.sitelen[luka tu wan] is 8.

The word #penpo.pona.sitelen[nanpa] can be used to mark ordinals.

#penpo.pona.sitelen[lipu nanpa wan li pona] - _The first book is good._

#penpo.pona.sitelen[nasin nanpa mute luka wan] - _26th Street._