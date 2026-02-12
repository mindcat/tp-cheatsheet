#import "@preview/penpo:0.1.0"
#import "@preview/fontawesome:0.6.0": fa-icon
#import "../pen.typ": *
// #import "@preview/catppuccin:1.0.1": catppuccin, flavors
// #show: catppuccin.with(flavors.latte)

#import "../control.typ": *

#v(-2em)
#text(size: 30pt)[#penpo.pona.sitelen[toki pona]]
#v(-1.2em)
= #if script-code=="sitelen" [toki pona] else [#convert("toki pona", script-code)]

#set text(size: script-size.at(script-code))

Developed by linguist Sonja Lang, toki pona is a language with $tilde$130 words. 

It uses only 14 IPA phonemes:_ a e i o u j k l m n p s t u w_

#section.at(script-code).at("desc")

== Basic Sentences

The particle #convert("li", script-code) separates the subject from the predicate.

#convert("soweli li moku", script-code) – _The cat is eating._

#convert("jan li lape", script-code) – _People sleep._

There is no verb “to be.”
The part after #convert("li", script-code) (predicate) can be a noun or an adjective.

#convert("kili li moku", script-code) – _Fruits are food._

#convert("telo li pona", script-code) – _Water is good._

If the subject is #convert("mi", script-code) or #convert("sina", script-code) alone, the #convert("li", script-code) is always omitted.

#convert("mi moku", script-code) – _I eat._

#convert("sina pona", script-code) – _You are good._

== Ambiguity

Toki Pona words are less specific than English words, so one-to-one translation is not as easy.

#convert("mi moku", script-code) – _I am eating, I was eating, or I will be eating._

Many words have multiple or general meanings.

#convert("soweli", script-code) - _A cat, dog, or any land mammal._

#convert("kili", script-code) - _Any fruit or vegetable._

Most words can act as nouns, verbs, adjectives, or adverbs.

#convert("telo", script-code) – _Water, wet, or to wash._

#convert("pona", script-code) - _Good, simple, to improve, or wellness._

Nouns have no number and there is no "a" or "the".

#convert("kala", script-code) – _A fish, the fish, some fish._

#convert("mi", script-code) – _I, me, we, or us._

== Direct objects

The particle #convert("e", script-code) signifies the direct object. This also makes the previous word into a verb.

#convert("soweli li moku e telo", script-code) – _The animal drinks the water._

#convert("mi telo e luka", script-code) – _I wash my hands._

#convert("sina suli e ona", script-code) - _You enlarge it._

== Modifying words

Words can be modified by appending other words.

#convert("jan lili", script-code) – _Child (small human)._

#convert("tomo mi", script-code) – _My house._

#convert("pilin pona", script-code) – _A good feeling._

To negate a word, append #convert("ala", script-code)

#convert("mi lape ala", script-code) – _I’m not sleeping._

#convert("jan ala li toki", script-code) – _No one is talking._

With multiple modifiers, they all modify the first word.

#convert("lipu kasi tu", script-code) – _Two plant lists._

#convert("poki laso pimeja", script-code) – _A blue and black box._

You can change the way the modifiers interact using pi .

#convert("lipu pi kasi tu", script-code) – _A two-plant list._

#convert("poki pi laso pimeja", script-code)– _A dark-blue box._


== Prepositions

#convert("kepeken", script-code), #convert("lon", script-code), #convert("sama", script-code), #convert("tan", script-code), and #convert("tawa", script-code) can act as prepositions. They go at the end of a statement.

#convert("mi moku kepeken ilo", script-code) – _I eat with cutlery._

#convert("soweli li lon tomo", script-code) – _The animal is in the house._

#convert("sina toki sama waso", script-code) – _You sing like a bird!_

#convert("mi kama tan pali", script-code) – _I return from work._

#convert("ona li toki e ni tawa sina", script-code) – _They said that to you._

== Questions

There are three ways to form a question. If you want a yes-or-no answer, use verb #convert("ala", script-code) verb.

#convert("ona li musi ala musi", script-code) - _Is she playing?_

This will usually result in one of three types of replies:

#convert("musi", script-code) - _Yes: she is playing._

#convert("musi ala", script-code) - _No: she is not playing._

#convert("ala", script-code) - _No: she is not playing._

If you want to check something, end the sentence with #convert("anu seme", script-code)

#convert("sina seli anu seme", script-code) - _Are you making fire?_

#convert("soweli suwi li lon poki anu seme", script-code) - _Is the cute cat in a box?_

Replace unknown info with #convert("seme", script-code) to form an open-ended question.

#convert("jan seme li pana e moku telo", script-code) - _Who's bringing the drinks?_

#convert("sina pali e seme", script-code) - _What are you making?_

== Interjections

Interjections are common. Add #convert("a", script-code) for
emphasis.

#convert("pona", script-code) – _Good! / Great! / Thanks!_

#convert("wawa a", script-code) – _So powerful!_

#convert("toki", script-code) – _Hello! / Hi! / Greetings!_

#convert("lon", script-code) – _True! / Correct!_

#convert("moku pona", script-code) – _Bon appetit!_


== Conjunctions

There are many ways to say "and". Use #convert("en", script-code) for 2+ subjects.

#convert("mi en sina li musi mute", script-code) – _You and I are playing a lot._

For 2+ predicates, repeat #convert("li", script-code).

#convert("soweli ni li lili li suwi", script-code) – _This animal is small and cute._

For direct objects, repeat #convert("e", script-code).

#convert("ona li lukin e waso e kala", script-code) – _She sees a bird and a fish._

For prepositions, repeat the preposition.

#convert("mi pali e tomo kepeken palisa kepeken kiwen", script-code) – _I build the house using sticks and stones._

#convert("anu", script-code) can be used to mean “or.”

#convert("ni li pona anu ike", script-code) – _Is this good or bad?_

#convert("mi anu sina li tawa esun", script-code) – _You or I are going to the store._

== Loanwords

Toki Pona uses *proper adjectives*, not nouns. These are marked by a box. Only the first sound of each word is read.

#convert("jan Sonja", script-code) – _A person named Sonja, a.k.a. jan Sonja._

#convert("toki Tosi", script-code) - _The language "Tosi" (Deutsch), a.k.a. German._

#convert("ma Mewika li suli", script-code) – _The land Mewika (USA) is big._

Loanwords should try to follow Toki Pona's rules for syllables:
#section.at(script-code).at("loan-rules")

== The word #convert("o", script-code)

You can use #convert("o", script-code) before a verb to tur into a command.
n it
#convert("o kute", script-code) – _Listen!_

#convert("o moku telo", script-code) – _Please drink._

You can use #convert("o", script-code) after a subject to address them.

// #penpo.nimi-ijo((Eten: "esun telo en nasa", script-code))

#convert("jan Eten o", script-code) - _Eten! (Aden)_

You can place #convert("o", script-code) between subject and predicate to express a wish, desire, request, etc. 

#convert("pona o tawa sina", script-code) - _Joy to you._

#convert("mi o pali", script-code) - _I should be working._

Or it can also be a contraction of the first two uses.

// #penpo.nimi-ijo((Sasa: "sewi awen suwi alasa", script-code))

#convert("soweli Sasa o moku", script-code) - _Eat, Sasa. (Sasza)_

== Preverbs

Preverbs go before verbs to
modify their meaning.

#convert("mi ken sitelen", script-code) - _I can write._

#convert("waso lili li wile kama suli", script-code) - _The small bird wants to become big._

The words #convert("wile", script-code), #convert("kama", script-code), #convert("sona", script-code), #convert("lukin", script-code), #convert("ken", script-code), #convert("awen", script-code), and #convert("alasa", script-code) can be preverbs.

== Context

The word #convert("la", script-code) can be used to
mark the context of a sentence:

a #convert("la", script-code) b means: In the context of a, b. This can mean time, cause, topic, etc.

#convert("sina lon poka mi la mi pilin pona", script-code) - _When you are by my side, I feel good._

The word #convert("la", script-code) is often used to move a prepositional phrase to the front of the sentence.

#convert("sama mi la sina mute", script-code) - _Just like me, you know a lot._

#convert("tan seme la sina seli", script-code) - _Why are you hot?_

The preposition #convert("lon", script-code) can be omitted in this case.

#convert("tenpo pimeja la mi lape", script-code) - _I sleep [at", script-code) night._

== Numbers

Combine number words to add them up.

For example, #convert("wan", script-code) is 1, #convert("tu", script-code) is 2, #convert("luka", script-code) is 5, #convert("mute", script-code) is 20, #convert("ale", script-code) is 100, #convert("tu tu", script-code) is 4, and #convert("luka tu wan", script-code) is 8.

The word #convert("nanpa", script-code) can be used to mark ordinals.

#convert("lipu nanpa wan li pona", script-code) - _The first book is good._

#convert("nasin nanpa mute luka wan", script-code) - _26th Street._