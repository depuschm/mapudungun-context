# Mapudungun Grammar

## Instructions for AI use

This file describes grammatical patterns inferred from the Mapudungun text of
`bible.md`. Use it together with `dictionary.md` when interpreting or
generating Mapudungun.

The available corpus used for this version contains:

- Matew
- Marku 1–14
- Part of Marku 15

The remainder of the New Testament was not available when this draft was
created. Therefore, this is a provisional corpus grammar rather than an
exhaustive description of Mapudungun.

Follow these rules:

1. Prefer grammatical constructions directly attested in the corpus.
2. Search `dictionary.md` for exact word forms before generating a new form.
3. Treat Mapudungun words as potentially polymorphemic. A single written word
   can correspond to an English phrase or clause.
4. Do not separate a word into morphemes unless the analysis is supported by
   repeated corpus patterns.
5. Prefer complete attested paradigms over analogically invented forms.
6. Preserve the corpus orthography, including `ñ`, `ü`, and apostrophes or
   hyphens where they occur.
7. Do not translate by preserving English word order mechanically.
8. Use person, number, negation, direction, tense, and mood markers on the
   verb where supported by the corpus.
9. Distinguish singular, dual, and plural forms.
10. Do not assume that an English pronoun must be represented by an
    independent Mapudungun pronoun. Person and number are frequently encoded
    by the verb.
11. Treat the particles `ta`, `tati`, `fey`, `mew`, `am`, `may`, `rume`,
    `müten`, `ürke`, and similar forms according to their discourse function;
    do not assign one fixed English translation in every context.
12. If an intended form is not attested and cannot be constructed confidently
    from the rules below, use a simpler attested construction.
13. If grammatical evidence is uncertain, preserve uncertainty instead of
    inventing a rule.
14. Biblical translation style may differ from ordinary conversational
    Mapudungun. Do not assume that every construction in this corpus is
    stylistically neutral.
15. Proper names and Spanish-derived religious or administrative vocabulary
    do not establish general Mapudungun word-formation rules.

---

# 1. General typological pattern

The corpus shows Mapudungun as a strongly suffixing and agglutinative
language.

A verb may encode several kinds of information:

- lexical meaning
- direction or spatial movement
- aspect
- negation
- causation or affected object
- person
- number
- tense or mood

For example, forms such as the following should not be treated as unanalyzed
equivalents of single English words:

- `wiñomongetuay` — “will come back to life”
- `wiñorakiduamtumün` — “change your thinking / repent,” plural command
- `wemünentuafimün` — “you will expel them”
- `kutranpiwkeyemuyu` — “have compassion on us two”
- `feyentulafimün` — “you did not believe him”
- `ngünenkanoaetew` — “so that someone does not deceive you”

The normal strategy is therefore:

1. identify the lexical stem;
2. identify derivational and directional elements;
3. identify negation, aspect, tense, or mood;
4. identify person and number;
5. interpret the complete form in context.

Morpheme boundaries in this file are explanatory. The corpus normally writes
the resulting expression as one word.

---

# 2. Orthography

## 2.1 Letters important for lookup

The corpus regularly uses:

- `ñ`
- `ü`
- `ch`
- `ll`
- `ng`
- `tr`

These must be preserved during lookup and generation.

Examples:

- `Ngünechen`
- `küme`
- `piwke`
- `challwa`
- `ngillatun`
- `trawüluwi`

Do not normalize `ü` to `u` or `ñ` to `n`.

## 2.2 Capitalization

Capitalization is used primarily for:

- sentence beginnings;
- proper names;
- titles treated as proper names;
- names or titles of God.

Examples:

- `Ngünechen`
- `Jesus`
- `Ñidol`
- `Lif Küme Püllü`
- `Wentrukünuwpalu`

Capitalization does not generally indicate a different grammatical form.

## 2.3 Hyphenation

Most complex words are written without hyphens. Some forms contain a hyphen,
especially where the source preserves a conspicuous morphological or
orthographic boundary:

- `wül-layafuy`
- `montul-layafi`

Do not freely introduce new hyphens. Preserve attested spellings.

---

# 3. Noun phrases

## 3.1 Nouns do not normally show grammatical gender

The corpus does not show a general masculine/feminine noun-class system.
Natural gender is expressed lexically where necessary.

Examples:

- `wentru` — man
- `domo` — woman
- `fotüm` — son
- `ñawe` — daughter
- `chaw` — father
- `ñuke` — mother

Adjectives do not appear to agree with nouns in gender.

## 3.2 The plural marker `pu`

`pu` precedes a human or animate noun phrase and marks a group or plural
reference.

Examples:

- `pu che` — people
- `pu disipulu` — disciples
- `pu farisew` — Pharisees
- `pu werken püllü` — messenger spirits/angels
- `pu kutran` — sick people
- `pu yall` — children

Pattern:

```text
pu + noun
```

Examples:

```text
tati pu che
the people

tañi pu disipulu
his disciples

tati pu longkolelu
those who are leaders
```

Do not normally attach `pu` as a suffix to the noun.

`pu` does not always correspond mechanically to English plural marking.
Number can also be made clear by a numeral, a quantifier, a pronoun, or verbal
agreement.

## 3.3 Other plural and distributive marking

The corpus also uses:

- `-ke` in many lexical, distributive, iterative, or plural-like formations;
- `kake kiñeke` for distributive “each one / different ones”;
- `engün` after a noun phrase or clause for third-person plural reference.

Examples:

- `kümeke dungu` — good things
- `wesake dungu` — bad things
- `fütrake waria` — large cities
- `pichikeche` — children/little people
- `kake kiñeke antü` — each day
- `kake kiñeke che` — each person

The exact function of `-ke` depends on the lexical and grammatical context.
Do not translate every `ke` as a simple plural marker.

## 3.4 Numerals precede nouns

Examples:

- `kiñe wentru` — one man
- `epu wentru` — two men
- `küla antü` — three days
- `meli mari antü` — forty days
- `mari epu disipulu` — twelve disciples
- `kechu kofke` — five loaves
- `regle weküfü` — seven evil spirits
- `kechu warangka wentru` — five thousand men

General pattern:

```text
numeral + noun
```

A separate plural marker is often unnecessary when a numeral already
specifies number.

## 3.5 Determiner-like `tati`

`tati` frequently precedes an established, specific, or identifiable noun
phrase.

Examples:

- `tati wentru` — the man
- `tati pu che` — the people
- `tati Wirin Chillka` — the Scripture
- `tati Lif Küme Püllü` — the Holy Spirit
- `tati pu disipulu` — the disciples

Pattern:

```text
tati + noun phrase
```

`tati` is not always equivalent to English “the.” It can also help identify,
resume, or emphasize a discourse referent.

Do not insert `tati` before every noun automatically.

## 3.6 Demonstratives

Frequently attested demonstrative expressions include:

- `tüfa` — this; this one; here is
- `tüfachi` — this, attributive
- `tüfey` — that; that one
- `tüfeychi` — that, attributive
- `tiye` — there; that place
- `tiyechi` — that, associated with that place or referent

Examples:

```text
tüfa mew
here / in this

tüfachi dungu
this matter

tüfeychi wentru
that man

tiye mew
there

tiyechi trokiñ mapu
that region
```

A useful distinction visible in the corpus is:

```text
tüfa / tüfey       independent or predicative use
tüfachi / tüfeychi attributive use before a noun
```

Example:

```text
Fey tüfa ta ...
This is ...

tüfachi wentru
this man
```

## 3.7 Adjectives and attributive expressions

Adjectival expressions commonly precede the noun:

- `küme dungu` — good message/word
- `wesa dungu` — bad thing
- `fütra wingkul` — great mountain
- `pichi lafken` — small lake/sea
- `riku wentru` — rich man
- `nor piwke wentru` — upright-hearted man

Some descriptive elements can follow or form a relative expression:

- `wentru lañmalelu ñi kuerpu`
- “a man whose body was paralyzed”

- `che mülelu Jerusalen mew`
- “people who were in Jerusalem”

Generation should prefer an attested adjective–noun order unless a relative
clause is required.

## 3.8 Possession

Possession normally places the possessor before the possessed noun, with a
possessive form immediately before the possessed element.

Examples:

```text
Jesus tañi pu disipulu
Jesus's disciples

Pedro tañi ruka
Pedro's house

Ngünechen ñi Fotüm
God's Son

iñche ñi Chaw
my Father

tami ruka
your house

tamün Chaw
your-plural Father

taiñ Chaw
our Father
```

General pattern:

```text
possessor + possessive marker + possessed noun
```

or:

```text
possessive marker + possessed noun
```

### 3.8.1 Attested possessive forms

| Form | Corpus function |
|---|---|
| `ñi` | possessive linker; often “his/her/its,” but also occurs after an explicit possessor |
| `tañi` | possessive expression used for first- or third-person reference according to context |
| `tami` | your, singular |
| `tamu` | your, dual |
| `tamün` | your, plural |
| `taiñ` | our, plural |
| `tami ... eymi` | emphatic “your ... you” |
| `tamu ... eymu` | emphatic “your ... you two” |
| `tamün ... eymün` | emphatic “your ... you all” |

Examples:

```text
iñche ñi ruka
my house

kisu ñi chaw
his own father

tami peñi
your brother

tamün yafkan
your-plural sin

taiñ yafkan
our sin
```

### 3.8.2 Ambiguity of `ñi` and `tañi`

The forms `ñi` and `tañi` cannot always be translated without examining their
antecedent.

Examples:

```text
Jesus tañi pu disipulu
Jesus's disciples / his disciples

iñche ñi Chaw
my Father
```

Therefore:

1. locate the possessor in the preceding context;
2. determine its person and number;
3. do not assign a fixed English person to `ñi` or `tañi` in isolation.

## 3.9 Relational nouns and body-part possession

Body parts normally occur with a possessor:

- `tañi kuwü` — his/her hand
- `tañi longko` — his/her head
- `tañi nge` — his/her eye
- `tañi piwke` — his/her heart
- `tañi namun` — his/her foot
- `tami ange` — your face

Avoid bare body-part nouns when the possessor is relevant.

---

# 4. Personal pronouns and number

Mapudungun distinguishes singular, dual, and plural in the corpus.

## 4.1 Independent pronouns

| Person | Singular | Dual | Plural |
|---|---|---|---|
| First | `iñche` | `iñchiw` | `iñchiñ` |
| Second | `eymi` | `eymu` | `eymün` |
| Third | `kisu` | `engu` | `engün` |

Examples:

```text
iñche ta ...
I ...

eymi ta ...
you ...

eymu ...
you two ...

eymün ...
you all ...

kisu ...
he/she; that person

engu ...
the two of them

engün ...
they
```

The third-person forms also frequently follow a noun phrase:

```text
Maria Jose engu
Maria and José, the two of them

tati pu che engün
the people, they

kisu engün
they themselves
```

## 4.2 Pronoun omission

Independent pronouns may be omitted when person and number are recoverable
from the verb.

Compare:

```text
Amuan.
I will go.

Iñche amuan.
I will go. / As for me, I will go.
```

An independent pronoun is more likely when:

- establishing or changing the subject;
- creating contrast;
- emphasizing identity;
- clarifying number;
- accompanying `ta` as a topic or focus.

## 4.3 Emphatic combinations

The corpus often combines a pronoun with a corresponding verbal or
possessive form for emphasis:

```text
eymi tami ...
you, your ...

eymün tamün ...
you all, your ...

iñchiñ taiñ ...
we, our ...

kisu engün tañi ...
they, their ...
```

Do not remove such repetition mechanically. It can carry discourse emphasis
or make reference explicit.

---

# 5. Case and relational particles

## 5.1 `mew`

`mew` is a highly frequent postposition. Its interpretation depends on the
noun phrase and verb.

Common functions include:

- in
- at
- on
- from
- through
- by means of
- with respect to
- because of
- toward a person as an object of belief, speech, or emotion

Examples:

```text
ruka mew
in/at the house

wenu mapu mew
in heaven

ko mew
in/with water

Ngünechen mew
in God / toward God

tañi yafkan mew
because of his/her sin

pepiluwün mew
by means of power

kürus mew
on/by the cross
```

Pattern:

```text
noun phrase + mew
```

Do not assign one fixed English preposition to `mew`. Interpret it from the
governing predicate.

## 5.2 `püle`

`püle` indicates a direction, side, or approximate region.

Examples:

```text
tripawe antü püle
toward the sunrise/east

konwe antü püle
toward the sunset/west

wenu püle
upward

furi püle
toward the back/behind

man ad püle
on the right side

wele ad püle
on the left side
```

## 5.3 `engu` as comitative or dual expression

In addition to being an independent third-person dual pronoun, `engu` can
connect two participants and indicate “the two of them” or “with.”

Examples:

```text
Maria Jose engu
Maria and José

Moyse ka Elia ... Jesus engün
Moses and Elijah ... with Jesus
```

The exact construction must be interpreted from context. Do not assume that
every `engu` is merely English “and.”

## 5.4 `ka`

`ka` frequently means:

- and
- also
- another
- again, depending on context

Examples:

```text
Pedro ka Juan
Pedro and John

ka femngechi
and likewise

ka kiñe
another one

ka wiñome
again
```

---

# 6. Basic clause structure

## 6.1 Flexible constituent order

The corpus shows flexible clause order. Both verb-medial and verb-initial
patterns occur. Biblical translation style often places an explicit subject
before the verb.

Common pattern:

```text
Subject + Verb + Object
```

Example:

```text
Jesus tremolfi kiñe wentru.
Jesus healed a man.
```

Another common pattern places discourse material before the clause:

```text
Feymew Jesus feypifi tañi pu disipulu.
Then Jesus said to his disciples.
```

Because person and object information can be marked on the verb, constituent
order is affected by:

- topic;
- emphasis;
- whether a participant is already known;
- contrast;
- narrative continuity.

Do not infer grammatical roles from word order alone. Examine:

- verbal person marking;
- object marking;
- possessive relations;
- particles such as `ta`;
- surrounding discourse.

## 6.2 Topic or focus marker `ta`

`ta` occurs very frequently after a topical, focused, or identified
constituent.

Examples:

```text
Iñche ta feypiwayiñ.
As for me, I tell you.

Eymi ta Ngünechen ñi Fotüm.
You are God's Son.

Fey tüfa ta ...
This is ...

Jesus ta ...
As for Jesus ...
```

`ta` often has no direct English translation.

It can:

- mark a topic;
- emphasize a participant;
- introduce a predication;
- separate a noun phrase from the rest of the clause;
- support contrast.

Do not translate every `ta` as “the,” “is,” or another lexical word.

## 6.3 Predication without an overt copula

Some identity or classification clauses use `ta` without an overt equivalent
of English “be.”

Example:

```text
Eymi ta Ngünechen ñi Fotüm.
You are God's Son.
```

Pattern:

```text
subject + ta + predicate nominal
```

However, `nge-`, `müle-`, and `fele-` also perform copular, existential, or
stative functions. Choose the construction based on attested patterns rather
than replacing every English “be” with the same Mapudungun form.

---

# 7. Existence, location, identity, and state

## 7.1 `müle-`: existence and location

`müle-` frequently expresses:

- exist;
- be present;
- be located;
- remain;
- live/stay somewhere.

Examples:

```text
müley
there is; he/she/it is present

müleyelu
those who are/were present

mülelu
being/located

müleay
there will be; will be present

mülelay
there is not; is not present

mülewemün
remain, you all
```

Examples in clauses:

```text
Ngünechen müley ta iñchiñ mew.
God is with us.

Kiñe wentru müley ruka mew.
A man is in the house.

Ngelay chem rume.
There is nothing.
```

## 7.2 `nge-`: identity, classification, or becoming

Forms built on `nge-` commonly express “be,” “become,” or membership in a
class.

Examples:

- `wentrungey` — is a man
- `pelon wentrungey` — is a prophet
- `Cristongen` — being the Christ
- `Fotümngelmi` — if you are the Son
- `sakinngeymi` — you are blessed/honored
- `kondenangeay` — will be condemned

`nge-` is also productive in passive-like or resultative expressions.

Examples:

- `langümngeay` — will be killed
- `fawtisangey` — was baptized
- `tukungeay` — will be put
- `elungey` — was given
- `kimngey` — became known/is known

The exact analysis may involve more than one construction, but the corpus
strongly associates `nge` with being, becoming, and undergoing a result.

## 7.3 `fele-`: be so, be in such a condition

`fele-` expresses a state or the correctness/existence of a proposed
condition.

Examples:

- `feley` — it is so; it is permitted/right
- `felelay` — it is not so; it is not permitted/right
- `felepe` — let it be so
- `femngechi feley` — it is like that
- `femngelu` — one who is like that

Common contrast:

```text
Feley kam felelay?
Is it so/right, or is it not?
```

---

# 8. Verbal person and number

The corpus shows person and number on finite verbs. The following table gives
strongly recurring surface endings, not a complete abstract paradigm.

## 8.1 Frequently attested subject endings

| Ending or pattern | Frequent value | Example |
|---|---|---|
| `-n` | first-person singular | `amuan` — I will go |
| `-ymi` / `-mi` | second-person singular | `nieymi` — you have |
| `-y` | third-person singular | `amuy` — he/she went |
| `-iñ` | first-person plural | `amuiñ` — we go/went |
| `-mu` | second-person dual | `peafimu` — you two will see it |
| `-mün` | second-person plural | `amuaymün` — you all will go |
| `-y ... engu` | third-person dual | `amuy engu` — the two went |
| `-y ... engün` | third-person plural | `amuy engün` — they went |
| `-ngün` | third-person plural in some forms/styles | attested in plural clauses |

These forms can be altered by other suffixes, especially object markers,
negation, future, mood, and direction.

## 8.2 Third-person number

Third-person singular and plural verbs may have the same verbal form, with
number clarified by `engu` or `engün`.

Compare:

```text
amuy
he/she went

amuy engu
the two of them went

amuy engün
they went
```

Therefore, do not require an independent plural suffix on every
third-person verb.

## 8.3 First-person plural and dual

The corpus distinguishes:

```text
iñchiw
we two

iñchiñ
we, plural
```

Relevant verbal forms include patterns such as:

```text
tayi / tayu
we two ...

femiyiñ
we did

amuiñ
we go/went
```

The complete dual paradigm remains provisional in this draft. Prefer exact
attested forms from `dictionary.md`.

---

# 9. Transitivity and objects

## 9.1 Object marker `-fi-`

A highly frequent `-fi-` sequence appears when a third-person object is acted
upon.

Examples:

- `pefi` — saw him/her/it
- `feypifi` — said to him/her
- `tremolfi` — healed him/her
- `mütrümfi` — called him/her
- `langümfi` — killed him/her
- `elufi` — gave him/her
- `kureyefi` — married her
- `püramyefi` — praised him
- `kimeltufi` — taught him/her/them

General provisional pattern:

```text
verb stem + fi + finite ending
```

Examples with plural second-person subjects:

```text
piwkeyefimün
love him/her/them, you all

ngüneduamfimün
observe it/them, you all

elufimün
give it/them, you all
```

The exact reference of the object is determined by context.

## 9.2 First-person object forms

Commands addressed to another participant often use forms ending in `-en`
when the speaker is the object.

Examples:

- `kelluen` — help me
- `montulen` — save me
- `kutranpiwkeyeen` — have compassion on me
- `inaen` — follow me

This supports the provisional pattern:

```text
verb + first-person object form
```

Do not treat final `-en` as a general infinitive.

## 9.3 Dual first-person object

The corpus includes forms such as:

```text
kutranpiwkeyemuyu
have compassion on us two
```

The internal segmentation is complex. Reuse the complete attested form rather
than constructing new dual-object forms without paradigm evidence.

## 9.4 Inverse or speech-act participant forms

Forms such as the following occur frequently:

- `feypieyew`
- `llowdungueyew`
- `pewfaluweyew`
- `inaeyew`
- `elueymünmew`
- `feypieymünmew`

These forms encode interaction between subject and object participants in a
way that cannot be reduced safely to English word order.

Provisional interpretation rule:

1. identify the discourse participants;
2. determine who acts and who is affected from context;
3. treat sequences such as `-eyew`, `-eymew`, and `-eymünmew` as
   person-interaction morphology;
4. do not generate new forms by simple pronoun substitution unless an exact
   parallel is attested.

---

# 10. Tense, mood, and reality status

## 10.1 Unmarked or indicative `-y`

Third-person narrative verbs frequently end in `-y`.

Examples:

- `amuy` — went
- `tripay` — went out
- `akuy` — arrived
- `feypi` or `feypiy` — said
- `müley` — is/was present
- `ngüñüy` — became hungry

The form itself does not always distinguish present from past. Narrative
context supplies temporal interpretation.

## 10.2 Future or prospective `-a-`

A recurring `-a-` occurs before person endings in future, intended, or
prospective expressions.

Examples:

- `amuan` — I will go
- `amuaymi` — you will go
- `amuaymün` — you all will go
- `müleay` — there will be
- `langümngeay` — will be killed
- `wiñomongetuay` — will return to life
- `peafi` — he/she will see him/her
- `feypiafiñ` — I will say to him/her

General pattern:

```text
verb + a + person/number ending
```

The future element may combine with object markers and other derivation:

```text
verb + derivation + object + a + person
```

Do not assume that every letter `a` is the future marker; check repeated
morphological parallels.

## 10.3 Past, prior, or unreal `-fu-`

Forms containing `-fu-` frequently refer to:

- a former state;
- habitual past;
- unrealized intention;
- counterfactual possibility;
- a situation viewed as prior to another.

Examples:

- `mülekefuy` — used to be/was
- `ayülefuy` — wanted
- `pelafuy` — did not see/would not see
- `küpafuy` — would come
- `femafuy` — would do
- `pepikafuy` — would prepare

Common potential or counterfactual endings include:

- `-afuy`
- `-lafuy`
- `-yafuy`

Interpret these from the clause, especially with conditions.

## 10.4 Conditional `-le-`

A form in `-le` frequently functions as “if/when X is the case.”

Examples:

```text
ayüle
if he/she wants

mülele
if there is

pifile
if he/she says

allküle
if he/she hears

nole
if not

ngenole
if there is not / if it is not
```

Person-marked conditional forms include:

```text
ayülmi
if you want

pifulmi
if you wanted / if you wish

Fotümngelmi
if you are the Son
```

Provisional pattern:

```text
verb/state + le + person
```

The exact allomorphy depends on the stem and person.

## 10.5 Imperative

Commands are normally expressed directly on the verb.

Singular examples:

- `amunge` — go
- `küpange` — come
- `witratunge` — stand up
- `nütunge` — take it
- `feypinge` — say it
- `ngillatunge` — pray
- `trepeluwkülenge` — stay awake
- `tremotunge` — be healed

Plural examples:

- `amumün` — go, you all
- `küpamün` — come, you all
- `allkütumün` — listen, you all
- `llükakilmün` — do not be afraid, you all
- `witrapüramün` — stand up, you all
- `ngüneduamfimün` — observe it, you all

Dual examples:

- `amutumu` — go, you two
- `peafimu` — you two will see it
- `feypiafimu` — you two will say to them

Use exact attested imperative forms where possible.

## 10.6 Hortative and permissive `-pe`

`-pe` occurs in commands, blessings, wishes, and permissive expressions.

Examples:

- `felepe` — let it be so
- `allküpe` — let him/her listen
- `küpape` — let him/her come
- `mülepe` — let there be
- `püramyengepe` — let him be praised
- `langümngepe` — let him be killed

Pattern:

```text
verb + pe
```

The subject is generally third person or an indirectly commanded
participant.

## 10.7 Purpose and intended action with `-ael`

Forms ending in `-ael` frequently express an intended, required, or
nominalized future action.

Examples:

- `ñi amuael` — that he/she should go; his/her going
- `ñi femael` — that he/she should do; doing
- `tañi kimael` — so that he/she/they may know
- `tañi langümngeael` — in order to be killed
- `ñi konpuael` — in order to enter
- `tañi llowael` — in order to receive

Common pattern:

```text
ñi / tañi + verb-ael
```

This construction can correspond to:

- English infinitive;
- purpose clause;
- complement clause;
- intended action;
- subject-controlled subordinate clause.

Do not translate `ñi` in this construction automatically as possession.

## 10.8 Purpose with `-am`

Forms ending in `-am` may express purpose or intended function.

Examples:

- `tañi kansatuam` — so that he/she may rest
- `tañi montuam` — so that he/she may be saved
- `ñi müleam` — so that it may be
- `tañi trawüluam` — so that they may gather
- `ñi kimeltungeam` — so that they may be taught

Provisional distinction:

- `-ael` is a broad infinitival, complement, or prospective nominal form;
- `-am` is especially common in explicit purpose or functional expressions.

This distinction requires further corpus confirmation.

---

# 11. Negation

## 11.1 Finite negation with `-la-`

The most frequent finite negative element is `-la-`.

Examples:

- `ayülay` — he/she does not want
- `mülelay` — there is not
- `ngelay` — there is not / it is not
- `kimlay` — he/she does not know
- `pelay` — he/she does not see
- `amulay` — he/she did not go
- `feyentulay` — he/she did not believe
- `küpalan` — I did not come
- `kimlan` — I do not know
- `ngünewlay` — he/she cannot control it / it is not under control

Provisional structure:

```text
verb + la + person/number
```

Future negative examples can contain both negation and future morphology:

- `mülelayay` — will not be
- `konpulayaymün` — you all will not enter
- `wiñoduamalayaeymünmew` — he will not forgive you all

## 11.2 Negative nonfinite or subordinate `-no-`

`-no-` frequently appears in nonfinite, attributive, conditional, and
nominalized negative constructions.

Examples:

- `femnolu` — one who does/did not do
- `feyentukenolu` — those who do not believe
- `ngenolu` — not being; without
- `petu fütangenolu` — not yet married
- `kureyewnon` — not marrying/having not married
- `kimnon` — not knowing
- `pinoel` — what was not said / not saying
- `tañi feypinoafiel` — in order not to tell him/her
- `tañi rumetunoael` — in order not to pass again

Provisional rule:

```text
-la- = finite negation
-no- = subordinate, nominalized, attributive, or nonfinite negation
```

## 11.3 Negative commands with `-kil-`

Prohibitions frequently use `-kil-`.

Examples:

- `llükakilnge` — do not be afraid
- `llükakilmün` — do not be afraid, you all
- `feypikilnge` — do not say it
- `langümchekilnge` — do not kill
- `ñiwaldomokilnge` — do not commit adultery
- `weñekilnge` — do not steal
- `rakiduamkilmün` — do not think, you all
- `kuyalltukefilmün` — do not swear by it, you all
- `feyentukefilmün` — do not believe them
- `konkilpe` — let him/her not enter
- `wütukefilmün` — do not go out to them

Provisional pattern:

```text
verb + kil + imperative/person ending
```

Forms with `-kefi-` may include habitual or object-related morphology in
addition to prohibition. Reuse attested forms instead of assuming that
`kefi` is a single negative suffix.

## 11.4 Independent negative expressions

Frequently attested negative expressions include:

- `no` — no/not in certain constructions
- `chem no rume` — nothing
- `iney no rume` — no one
- `chumkawnorume` — never/in no possible way
- `turpu` — never
- `müten` — only, which can restrict rather than negate
- `ngelay` — there is not / no

Examples:

```text
iney no rume
no one

chem no rume
nothing

kiñe no rume
not even one

chumkawnorume
under no circumstances / never
```

---

# 12. Aspect and event structure

## 12.1 Stative or progressive `-küle-`

`-küle-` commonly describes a continuing state, posture, or condition.

Examples:

- `müleküley` — is staying/is present
- `anüküley` — is sitting
- `kuduley` — is lying down
- `trapelküley` — is tied
- `trawüluwküley` — is gathered
- `rakiduamküley` — is thinking
- `weñangküley` — is sad
- `dumiñmaley` — is darkened
- `feyentuley` — believes/is believing

Generation pattern:

```text
stem + küle + finite ending
```

Do not use `-küle-` merely because English uses “be + adjective.” Confirm that
an attested Mapudungun stative construction exists.

## 12.2 Ongoing activity `-meke-`

`-meke-` frequently indicates an activity in progress or being carried out.

Examples:

- `dungumekelu` — while speaking
- `ngümakawmekey` — is crying
- `kimeltumekefi` — is teaching them
- `nütramkamekelu` — speaking/conversing
- `fillmekeafiel` — to keep mistreating him
- `amukonküley tamün umawkülen` — you continue sleeping

Provisional interpretation:

```text
stem + meke = be engaged in doing; carry on doing
```

## 12.3 Habitual or repeated `-ke-`

`-ke-` appears frequently in habitual or repeated predicates.

Examples:

- `feypikey` — he/she habitually says
- `kimeltukey` — he/she teaches
- `ngillatukey` — he/she prays
- `miyawkey` — he/she travels/goes around
- `fawtisakefiñ` — I baptize them
- `wülkey` — gives/produces
- `poyekefilu` — one who habitually honors/loves him

`-ke-` also occurs in lexicalized forms and cannot always be isolated.
Interpret it as habitual only when supported by the context and a parallel
without `-ke-`.

## 12.4 Repetition, return, or restoration with `-tu-`

`-tu-` commonly contributes one or more of the following:

- again;
- back;
- return;
- restoration;
- renewed state;
- verbal derivation from a noun.

Examples:

- `wiñotuy` — returned
- `wiñomongetuy` — came back to life
- `tremolewetuy` — became healed again/is now healed
- `pelotuy` — regained sight
- `dungutuy` — spoke again/regained speech
- `allkütuy` — listened/heard
- `kümelkawtuy` — became reconciled
- `lifrenentutufi` — released him again/set him free
- `kureyetuy` — married/took as spouse

Do not translate every `-tu-` identically. Its contribution depends on the
stem.

## 12.5 Result or changed continuation with `-we-`

Forms containing `-we-` frequently express:

- a resulting state;
- remaining state;
- no longer;
- becoming something new;
- continuation after a change.

Examples:

- `ngewetulay` — there is no longer
- `mülewey` — remained
- `kisulewey` — remained alone
- `dunguwetulay` — no longer speaks
- `tremolewetuy` — became/remained healed
- `kürüfwetulay` — there was no longer wind
- `pelongetuwelayay` — will no longer give light

The interaction among `-we-`, `-tu-`, and negation is complex. Prefer whole
attested forms.

## 12.6 Reflexive, reciprocal, or middle `-w-`

Many verbs contain `-w-` where the subject acts on itself, enters a state, or
acts reciprocally.

Examples:

- `eluwi` — prepared/disposed himself; began to
- `trawüluwi` — gathered together
- `welukonkechi ramtuwi` — questioned one another
- `kureyewi` — married one another
- `maneluwi` — trusted
- `ngüyünentuwpe` — let him deny himself
- `montuluwün` — salvation/self-deliverance
- `rakiduamluwiyiñ` — we considered/thought among ourselves

The exact value is stem-dependent:

```text
-w- = reflexive, reciprocal, middle, spontaneous, or self-involving event
```

Do not force a reflexive English translation for every `w`.

---

# 13. Directional and spatial verbal morphology

The corpus frequently incorporates direction into the verb.

## 13.1 `-pa-`: movement toward the deictic center

`-pa-` frequently indicates movement or action toward:

- the speaker;
- the current narrative location;
- the relevant participant;
- “here.”

Examples:

- `küpay` — came
- `tripapay` — came out toward here
- `akupay` — came/arrived here
- `fülkontupay` — approached here
- `nütramelpay` — came and reported
- `nganpay` — came and sowed

## 13.2 `-pu-`: movement to a distal goal

`-pu-` often indicates reaching or acting at a location away from the deictic
center.

Examples:

- `konpuy` — entered there
- `pürapuy` — went up there
- `nütramelpufi` — reported to him/her there
- `ngillatupuy` — went and prayed there
- `mülepuy` — stayed there
- `anükünuwpuy` — sat down there
- `pewfaluwpuy` — appeared there

## 13.3 `-me-`: action away from the current center or for a task

Examples:

- `pemeafiel` — to go see him
- `kimelafiel` versus `kimelmeafiel`
- `ngillatumeael` — to go pray
- `kintumeafiel` — to go look for it
- `yemeael` — to go get it
- `kullimenge` — go pay it
- `pewfaluwmenge` — go present yourself

`-me-` often corresponds to “go and do,” but not every occurrence should be
translated with an explicit English “go.”

## 13.4 `-kon-`: inward movement or entering

Examples:

- `konpuy` — entered
- `konpay` — entered/came in
- `konpuaymün` — you all will enter
- `konweküfüley` — an evil spirit is inside him/her
- `wiñokontukilpe` — let him not go back inside
- `fülkonpuy` — approached/entered near

## 13.5 `tripa-`: outward movement

Examples:

- `tripay` — went out
- `tripatuy` — went out again/left
- `tripapay` — came out
- `tripapatuy` — came back out
- `tripange` — go out
- `püntütripange` — move away/separate yourself and go

## 13.6 `nag-`: downward movement

Examples:

- `nagpay` — came down
- `nagpatuy` — came down again
- `nagpulu` — having arrived down there
- `ütrüfnagümuwnge` — throw yourself down
- `tüngnagümfi` — made it become calm/down
- `lloyünagi` — bowed/fell downward

## 13.7 `püra-`: upward movement

Examples:

- `pürapuy` — went up
- `püratuy` — went up again
- `witrañpüramfi` — raised him/her up
- `pürakintulen` — looking upward
- `pürakawelluy` — mounted an animal
- `püramyefi` — raised/praised him

## 13.8 `entu-`: outward extraction or removal

Examples:

- `nentufi` — took it out
- `katrünentufi` — cut it off/out
- `wemünentufi` — expelled it
- `müntuñmafi` — took it away from him/her
- `entuñmangey` — it was taken away from him/her
- `tripatuy` — moved outward again

Not every word containing `entu` has the same segmentation. Use repeated
parallels to identify the directional element.

---

# 14. Derivational constructions

## 14.1 Causative and resultative patterns

The corpus contains many forms where one participant causes another to enter
a state:

- `langüm-` — cause to die, kill
- `mongel-` — cause to live
- `tremol-` — heal, cause to become healthy
- `witrañpüram-` — raise up
- `tüngnagüm-` — cause to calm/down
- `fawtisa-` — baptize
- `kimel-` — cause to know, teach/inform

The full causative system cannot yet be reconstructed safely from the partial
corpus. Prefer attested causative stems as dictionary entries.

## 14.2 `kimel-`: informing and teaching

Repeated contrasts suggest:

- `kim-` — know
- `kimel-` — make known, inform, teach
- `kimeltu-` — teach/instruct
- `kimelel-` — explain or make known to someone
- `kimfal-` — be recognizable/knowable
- `kimnge-` — become known/be known

Examples:

```text
kimlay
does not know

kimeltufi
taught him/her

kimelngey
was informed/taught

kimfali
is recognizable/evident
```

## 14.3 `feypi-`: saying

`feypi-` is the central speech verb in the corpus.

Examples:

- `feypi` — said
- `feypifi` — said to him/her
- `feypieyew` — said to him/her, with participant interaction marking
- `feypian` — I will say
- `feypiwayiñ` — I say/tell you all
- `feypiafimu` — you two will say
- `feypingeay` — it will be said/he will be called
- `feypikünufi` — instructed/told him firmly
- `feypilen mew` — saying; with the words

When introducing direct speech, the corpus frequently uses:

```text
fey feypi:
  —Direct speech.
```

or:

```text
feypilen mew:
  —Direct speech.
```

---

# 15. Nonfinite forms and subordinate clauses

## 15.1 Subject-relative or circumstantial `-lu`

`-lu` is extremely frequent. It commonly marks:

- a participant who performs or experiences an action;
- “the one who...”;
- “when/while X...”;
- a backgrounded event;
- a subject-oriented relative clause.

Examples:

- `mülelu` — being there; the one who is there
- `küpalu` — the one who came/is coming
- `allkülu` — having heard; when he heard
- `pefilu` — having seen him; when he saw him
- `dungulu` — the one who spoke; while speaking
- `feyentulelu` — one who believes
- `ngüñülelu` — one who is hungry
- `layelu` — those who died
- `kimeltukelu` — one who teaches

Examples:

```text
Jesus allkülu tüfachi dungu...
When Jesus heard this...

tati che feyentulelu
the person who believes

tati pu che mülelu Jerusalen mew
the people who are in Jerusalem
```

The subject of the `-lu` form is normally determined by the surrounding noun
phrase or discourse.

## 15.2 Attributive `-chi`

`-chi` frequently forms a modifier before a noun.

Examples:

- `mülechi pu che` — people who are present
- `küme piwkengechi wentru` — good-hearted man
- `alü pürachi wingkul` — high mountain
- `tripawe antü püle mülechi mapu` — land situated toward the east
- `werkünieelchi dungu` — commissioned message
- `wüdakünuelchi domo` — woman who was put away/divorced

This `-chi` must be distinguished from the independent demonstrative forms
`tüfachi` and `tüfeychi`, although those forms also have an attributive
function.

## 15.3 Action nominal or clause in `-n`

Many verbal stems form nouns or subordinate concepts in `-n`.

Examples:

- `mongen` — life/living
- `ngillatun` — prayer/praying
- `kimün` — knowledge
- `ayüwün` — joy
- `mupiltun` — belief/faith
- `feyentun` — belief
- `küdaw` or `küdawün` — work/working
- `choyüngen` — birth/being born
- `lan` — death/dying
- `wiñomongetun` — resurrection/returning to life
- `wüdakuren` — divorce/separating spouses

These can function as:

- nouns;
- complement concepts;
- titles;
- objects of postpositions;
- embedded actions.

## 15.4 `-yüm`: when an event occurs

Forms ending in `-yüm` frequently mean “when X happens” or “upon X.”

Examples:

- `müleyüm` — when there is
- `akuyüm` — when he/she arrives
- `dew tremiyüm` — when it has grown
- `allküñmafiyüm` — when he/she hears it
- `ngillatulmün` versus event forms in `-yüm`
- `wüliyüm` — when it is given

Provisional pattern:

```text
verb + yüm = when/upon the occurrence of the event
```

## 15.5 `-el` and participial/complement forms

Forms ending in `-el` frequently refer to an action, affected object, or
completed relation.

Examples:

- `tañi peel` — what he/she saw
- `tañi allküel` — what he/she heard
- `tañi femel` — what he/she did
- `tañi feypiel` — what he/she said
- `tañi wiriel` — what he/she wrote
- `tañi werküel` — what he/she commanded/sent
- `tañi dulliel` — the one whom he/she chose
- `tañi duamtuel` — what he/she needs

Common pattern:

```text
possessive/nominal linker + verb-el
```

Interpretation depends on transitivity and context:

- “his doing”
- “what he did”
- “the one he chose”
- “the thing commanded”

Do not assign one fixed English participial translation to `-el`.

---

# 16. Passive-like and impersonal constructions

## 16.1 `-nge-` in affected-participant constructions

The corpus frequently uses `-nge-` where English uses a passive.

Examples:

- `fawtisangey` — was baptized
- `langümngeay` — will be killed
- `püresungey` — was arrested/imprisoned
- `chalintukungey` — was handed over
- `tukungey` — was put
- `elungey` — was given
- `mütrümngeay` — will be called
- `nütramyengey` — was spoken about
- `kimngey` — became known
- `kondenangeay` — will be condemned

General pattern:

```text
verb + nge + tense/person
```

The agent may be:

- omitted;
- supplied in a `mew` phrase;
- recoverable from context.

## 16.2 Impersonal third-person expressions

Some clauses describe a general event without an explicit agent:

```text
allküngey
it was heard

feypingey
it was said

wirikonküley
it is written

kimelngey
it was made known
```

Use these constructions when the event or result is more important than the
agent.

---

# 17. Questions

## 17.1 Question words

Frequently attested question words include:

| Form | Common interpretation |
|---|---|
| `iney` | who |
| `chem` | what |
| `chew` | where |
| `chumül` | when |
| `chumngechi` | how |
| `chumngelu` | why |
| `chuchi` | which |
| `tunten` | how much/how many |
| `mufü` | how many |
| `tunteñma` | how long |
| `chum` | what/how, in compounds |
| `chumün` | what happened/what was done |

Examples:

```text
¿Iney anta tüfachi wentru?
Who is this man?

¿Chem am duamimi?
What do you want?

¿Chew anta müley?
Where is he?

¿Chumngelu am ...?
Why ...?

¿Tunten kofke am nieymün?
How many loaves do you have?
```

## 17.2 Interrogative particles `am`, `anta`, and `kay`

Questions frequently contain `am` or `anta`.

Examples:

```text
¿Iney am ...?
Who ...?

¿Chem mew anta ...?
Why ...?

¿Eymi am ...?
Are you ...?

¿Chumngelu am ...?
Why ...?
```

`kay` often adds contrast, continuation, or “then/as for...?”

Examples:

```text
Eymün kay, ¿iney pimuken?
And you, who do you say I am?

¿Chumngentufimi kay?
What do you think, then?
```

These particles do not always have a separate English translation.

## 17.3 Alternative questions

Alternative questions frequently use `kam`:

```text
¿Feley kam felelay?
Is it so or not?

¿Ngünechen kam tati pu che?
God or the people?

¿Kümey kam kümelay?
Is it good/right or not?
```

## 17.4 Rhetorical questions

Questions with `anta`, `am`, `may`, or `rume` are frequently rhetorical.
Interpret them in discourse rather than treating every question as a request
for unknown information.

---

# 18. Coordination and clause linking

## 18.1 `fey`

`fey` is one of the central discourse forms. Depending on context, it can
mean:

- that;
- he/she/it;
- then;
- and then;
- so;
- the aforementioned participant.

Examples:

```text
Fey amuy.
Then he/she went.

Fey tüfa...
This/that is...

Fey tati...
That is the one...

Fey Jesus feypi...
Then Jesus said...
```

Do not assign a single English gloss to every `fey`.

## 18.2 `feymew`

`feymew` commonly advances the narrative or introduces a consequence.

Frequent translations include:

- then;
- therefore;
- because of that;
- at that place;
- after that.

Examples:

```text
Feymew Jesus feypifi...
Then Jesus said to him...

Feymew amuy engün.
Then they went.

Feymew ta...
Therefore...
```

## 18.3 `welu`

`welu` introduces contrast:

- but;
- however;
- rather.

Example:

```text
Welu Jesus chem pilay rume.
But Jesus said nothing.
```

## 18.4 `femngechi`

`femngechi` means approximately:

- like that;
- in that manner;
- likewise;
- thus.

Examples:

```text
Ka femngechi...
And likewise...

Femngechi ta...
Thus...

chumngechi ... ka femngechi ...
just as ... so also ...
```

## 18.5 `feychi mew`

`feychi mew` often means:

- at that time;
- then;
- in that situation.

## 18.6 `dew`

`dew` marks completion, prior accomplishment, or “already.”

Examples:

- `dew lay` — he/she is already dead
- `dew tremolewetuy` — he/she is now/already healed
- `dew puwi` — already arrived
- `dew rupan` — after it had happened
- `dew kimnieymün` — you already know

## 18.7 `petu`

`petu` commonly means:

- still;
- while;
- yet;
- before an event is completed.

Examples:

```text
petu dungumekelu
while he was still speaking

petu tañi kureyewnon
before they married

petu ñi puwnon
before it arrived

petu kimlay
still does not know
```

## 18.8 `wüla`

`wüla` means “afterward,” “only then,” or “later.”

Examples:

```text
fey wüla
then afterward

dew nielu wüla
only after having it

kullile wüla
after paying

pefile wüla
after seeing it
```

---

# 19. Emphasis, evidentiality, and discourse particles

## 19.1 `müten`

`müten` restricts or focuses:

- only;
- merely;
- just;
- immediately, in some temporal expressions.

Examples:

```text
kiñe müten
only one

ko mew müten
only with water

feychi lelen mew müten
at that very moment

iñche müten
only me
```

## 19.2 `rume`

`rume` is highly context-dependent. It can contribute:

- even;
- at all;
- very;
- any;
- no matter;
- intensification.

Examples:

```text
rume fentren
very many

chem no rume
nothing at all

iney rume
anyone/whoever

kiñe no rume
not even one

tunte ... rume
no matter how much

rume küme
very good
```

## 19.3 `may`

`may` commonly marks affirmation, contrast, insistence, or discourse
confirmation.

Examples:

```text
Felepe may.
Let it indeed be so.

May, Ñidol.
Yes, Lord.

Iñche may...
As for me indeed...

welu may
but rather
```

It does not always correspond to a separate English word.

## 19.4 `lle` and `llemay`

`lle` and `llemay` add confirmation, identification, or emphatic assertion.

Examples:

```text
Eymi lle tati Cristo.
You are indeed the Christ.

Fey tüfa lle tati...
This is precisely the one...

Feymew llemay...
Therefore indeed...
```

## 19.5 `ürke`

`ürke` often marks information as discovered, recognized, explanatory, or
reported.

Examples:

```text
challwafe ürke engu
the two were fishermen, as it turns out

fey tüfa tati ... ürke
this was in fact ...

feypin ürke
that means / it was said as...
```

In narrative translation it may correspond to:

- apparently;
- it turned out that;
- indeed;
- as was the case;
- no overt English word.

Do not use `ürke` in every past-tense narrative clause.

## 19.6 `nga`

`nga` adds conversational emphasis or appeal.

Examples:

```text
eluen nga
you gave me, after all

dew nga
indeed/already

Ñidol, eymi eluen kechu moneda nga
Lord, you gave me five coins
```

Its exact pragmatic value depends on context.

---

# 20. Reported and direct speech

## 20.1 Direct speech

The corpus commonly places a speech verb before direct speech:

```text
Fey feypifi:
  —Amutunge.
```

Equivalent English:

> Then he said to him, “Go.”

The addressee may be encoded in the verb and repeated as a noun phrase.

## 20.2 Quotation closing with `pi`

`pi` frequently closes or identifies a quotation.

Example:

```text
“Amumün” pi.
“Go,” he said.
```

It also occurs after scriptural quotations and explanatory glosses.

## 20.3 Reported information with `-rke-`

Forms containing `-rke-` frequently indicate:

- reported information;
- discovery;
- narrative background;
- something learned rather than directly asserted;
- a surprising or newly recognized fact.

Examples:

- `mülerkey` — there was, reportedly/it turned out
- `wentrurke` — he was a man, it turns out
- `feypirkey` — he reportedly said
- `ngüñülerkey` — they were hungry, it turns out
- `umawturkey` — he was sleeping, it turns out
- `trapelkülerkey` — it was tied

Do not translate `-rke-` uniformly as “reportedly.” In natural English it is
often left implicit, but when generating Mapudungun it should not be inserted
without an appropriate evidential or narrative reason.

---

# 21. Comparison and manner

## 21.1 `reke`

`reke` means “like,” “as,” or “resembling.”

Examples:

```text
palluma reke
like a dove

ufisa reke
like a sheep

kura reke
like a stone

la reke
as if dead

pichiche reke
like a child
```

Pattern:

```text
noun/state + reke
```

## 21.2 `chumngechi ... femngechi`

This construction expresses comparison:

```text
chumngechi X, ka femngechi Y
just as X, so also Y
```

Examples:

```text
Chumngechi wiñoduamatukefiyiñ..., ka femngechi...
As we forgive..., so also...
```

## 21.3 Degree

Common degree expressions:

- `doy` — more
- `doyelchi` — the greater/more
- `rume` — very/extremely/even
- `fente` — so much/this much
- `fentren` — much/many
- `pichin` — little/few
- `alü` — much/large/far
- `müna` — very
- `rumeñma` — very greatly/extremely

Examples:

```text
doy fütra
greater

rume fentren
very many

müna kümey
it is very good

pichin mupiltun
little faith

alü kamapu
a long distance
```

---

# 22. Relative and participant expressions

## 22.1 `tati ... -lu`

A common equivalent of English “the one who...” is:

```text
tati + verb-lu
```

Examples:

```text
tati feyentulelu
the one who believes

tati ngillatulelu
the one who prays/is asking

tati kintulu
the one who seeks

tati wesa piwkengelu
the one who is evil-hearted

tati mülelu wenu mapu
the one who is in heaven
```

Plural:

```text
tati pu feyentulelu
those who believe
```

## 22.2 `iney rume`

`iney rume` introduces an unrestricted human participant:

- whoever;
- anyone who;
- no one, when combined with negation.

Examples:

```text
Iney rume feyentule...
Whoever believes...

Iney no rume kimlay.
No one knows.
```

## 22.3 `chem rume`

`chem rume` can mean:

- anything;
- whatever;
- nothing, under negation.

Examples:

```text
chem rume eluen pilmi
whatever you ask me to give you

chem no rume
nothing
```

## 22.4 `chew rume`

`chew rume` means “wherever” or “anywhere,” according to polarity.

---

# 23. Commands involving movement and another action

Mapudungun frequently combines direction and action into one word or a short
sequence where English uses several verbs.

Examples:

- `pewfaluwmenge` — go present/show yourself
- `kullimenge` — go pay
- `nütramelputuafimün` — go and report it back to him
- `kimelputuafimün` — go inform him
- `yemefinge` — go get him/it
- `küpalelmuchi` — bring it to me
- `feypimetufimu` — go tell them again
- `ngillatumeael` — to go pray
- `pemeafiel` — to go see him

Generation rule:

1. look for an attested directional verb built from the desired lexical stem;
2. prefer it over a literal sequence copied from English;
3. preserve the directional perspective of the speaker and narrative center.

---

# 24. Common clause templates

## 24.1 Identity

```text
Subject + ta + predicate
```

Example:

```text
Eymi ta Ngünechen ñi Fotüm.
You are God's Son.
```

## 24.2 Existence or location

```text
Subject + müley + location + mew
```

Example:

```text
Kiñe wentru müley ruka mew.
A man is in the house.
```

## 24.3 Possession with `nie-`

```text
Subject + niey + object
```

Example:

```text
Kisu niey kiñe ruka.
He/she has a house.
```

Second person:

```text
Nieymi kiñe ruka.
You have a house.
```

Plural:

```text
Nieymün kofke.
You all have bread.
```

## 24.4 Transitive event

```text
Subject + verb-fi + object
```

Example:

```text
Jesus tremolfi tati wentru.
Jesus healed the man.
```

Because the object is also encoded on the verb, an overt object can be omitted
when already known.

## 24.5 Speech to a third person

```text
Subject + feypifi + addressee
```

Example:

```text
Jesus feypifi ta Pedro.
Jesus said to Peter.
```

## 24.6 Purpose

```text
main clause + tañi/ñi + verb-ael
```

Example:

```text
Amuy tañi ngillatuael.
He/she went to pray.
```

## 24.7 Conditional

```text
verb-le / verb-lmi + result clause
```

Example:

```text
Ayülmi, amunge.
If you want, go.
```

## 24.8 Prohibition

```text
verb-kil + imperative ending
```

Examples:

```text
Llükakilnge.
Do not be afraid.

Feyentukefilmün.
Do not believe them, you all.
```

## 24.9 Relative participant

```text
tati + verb-lu
```

Example:

```text
tati feyentulelu
the one who believes
```

## 24.10 Passive or impersonal

```text
verb-nge + finite ending
```

Example:

```text
Langümngeay.
He/she will be killed.
```

---

# 25. Generation guidelines

## 25.1 Build from an attested clause

When possible, generate a new sentence by adapting an attested sentence with
minimal substitutions.

For example, from:

```text
Jesus feypifi ta Pedro.
Jesus said to Peter.
```

A safe substitution can replace the proper name while preserving the
construction:

```text
Juan feypifi ta Pedro.
Juan said to Peter.
```

Do not alter the internal verbal morphology unless the required person and
number form is attested.

## 25.2 Preserve singular, dual, and plural

Before generating a verb, determine:

1. subject person;
2. subject number;
3. object person;
4. object number;
5. whether the subject and object include speech-act participants.

Do not replace dual forms with plural forms merely because English uses “you”
or “they” for both.

## 25.3 Prefer verbal person marking over unnecessary pronouns

Use an independent pronoun when it provides:

- emphasis;
- contrast;
- a changed topic;
- clarification.

Otherwise, an attested person-marked verb may be sufficient.

## 25.4 Do not translate auxiliaries word for word

English constructions with:

- be;
- have;
- do;
- will;
- can;
- begin;
- continue;
- go and;
- come and;

may correspond to suffixes or lexicalized Mapudungun verbs.

Examples:

```text
will go → amuay...
go and pray → ngillatume...
come out → tripapa-/tripay
be healed again → tremolewetu-
continue speaking → dungumeke-
```

## 25.5 Prefer Mapudungun postpositions

Do not imitate English preposition placement. Use:

```text
noun phrase + mew
noun phrase + püle
noun phrase + reke
```

## 25.6 Avoid unsupported word formation

A form is safe to generate when at least one of the following is true:

1. the complete form occurs in `dictionary.md`;
2. the same stem and suffix sequence occurs with only a clearly attested
   person change;
3. an exact parallel paradigm is present in the corpus.

Otherwise, choose a simpler construction.

## 25.7 Avoid unsupported colloquial claims

This grammar comes from a Bible translation. It provides evidence for:

- morphology;
- argument structure;
- clause linking;
- pronouns;
- negation;
- questions;
- narrative discourse.

It provides less reliable evidence for:

- modern informal conversation;
- slang;
- regional variation;
- contemporary technical vocabulary;
- everyday politeness conventions outside biblical discourse.

---

# 26. Provisional morpheme index

The following table is a retrieval aid, not a claim that every occurrence has
exactly the listed analysis.

| Form | Frequent corpus function |
|---|---|
| `pu` | plural/group marker before nouns |
| `ta` | topic/focus/predicational particle |
| `tati` | specific or discourse-identifiable noun phrase |
| `mew` | location, means, source, relation, cause |
| `püle` | direction, side, approximate area |
| `ka` | and, also, another |
| `fey` | that, then, he/she/it, discourse continuation |
| `feymew` | then, therefore, from/at that point |
| `welu` | but, however |
| `müten` | only, just |
| `rume` | very, even, any, at all |
| `may` | affirmation or discourse emphasis |
| `lle` | precise identification or emphasis |
| `ürke` | discovered, explanatory, or reported status |
| `nga` | conversational emphasis |
| `petu` | still, yet, while, before completion |
| `dew` | already, completed |
| `wüla` | afterward, only then |
| `reke` | like, as |
| `kam` | or |
| `-fi-` | third-person object, provisionally |
| `-la-` | finite negation |
| `-no-` | nonfinite/subordinate negation |
| `-kil-` | prohibitive negation |
| `-a-` | future/prospective |
| `-fu-` | past, prior, unreal, or counterfactual |
| `-le-` | conditional or state |
| `-lu` | subject relative/circumstantial form |
| `-el` | action, object, or participial nominal form |
| `-ael` | infinitival, prospective, complement, or purpose form |
| `-am` | purpose/function |
| `-yüm` | when/upon an event |
| `-chi` | attributive modifier |
| `-n` | action or abstract nominalization; also some person forms |
| `-nge-` | be/become; passive-like affected construction |
| `-küle-` | continuing state |
| `-meke-` | ongoing activity |
| `-ke-` | habitual/repeated/distributive, depending on context |
| `-tu-` | return, repetition, restoration, or derivation |
| `-we-` | resulting or remaining state |
| `-w-` | reflexive, reciprocal, or middle |
| `-pa-` | movement/action toward the deictic center |
| `-pu-` | movement/action at a distal goal |
| `-me-` | go away/to do an action |
| `kon-` | enter/inward |
| `tripa-` | exit/outward |
| `nag-` | downward |
| `püra-` | upward |
| `entu-` | outward extraction/removal |
| `wiño-` | return/back/again |
| `-pe` | hortative, permissive, third-person command |
| `-rke-` | reportative, inferential, or discovery-related |
| `-y` | common third-person finite ending |
| `-n` | common first-person singular ending in finite paradigms |
| `-mi` / `-ymi` | common second-person singular ending |
| `-iñ` | common first-person plural ending |
| `-mu` | common second-person dual ending |
| `-mün` | common second-person plural ending |
| `engu` | third-person dual independent expression |
| `engün` | third-person plural independent expression |

---

# 27. Unresolved questions

The following areas require the remainder of `bible.md` and a more systematic
paradigm comparison:

1. the complete first-person dual verbal paradigm;
2. the complete third-person dual paradigm;
3. all direct and inverse participant combinations;
4. exact segmentation of `-eyew`, `-eymew`, and related forms;
5. all functions of `-tu-`, `-we-`, and `-w-`;
6. distinction among plural, habitual, distributive, and lexical `-ke-`;
7. complete conditional morphology;
8. complete imperative morphology;
9. exact distinction between `-ael` and `-am`;
10. all functions of `ñi` in possession and subordinate clauses;
11. interaction between negation and future marking;
12. scope of `ta` and `tati`;
13. ordinary conversational word order outside biblical translation style;
14. dialectal or orthographic variation;
15. loanword adaptation and productive native word formation.

Until these questions are resolved, generation should rely on exact corpus
analogies rather than broad morphological extrapolation.

---

# 28. Short operational checklist for AI generation

Before producing a Mapudungun sentence:

1. Identify the intended subject.
2. Determine whether the subject is singular, dual, or plural.
3. Identify the object, if any.
4. Determine whether subject or object is first or second person.
5. Select an attested verb frame.
6. Add only attested directional or aspectual morphology.
7. Select affirmative, finite negative, nonfinite negative, or prohibitive
   morphology.
8. Select indicative, future, conditional, imperative, or purpose form.
9. Add independent pronouns only when useful for clarity or emphasis.
10. Construct noun phrases with possessive markers, `pu`, numerals, and
    postpositions in attested order.
11. Add discourse particles only when their function is justified.
12. Compare the result against at least one structurally parallel corpus
    sentence.
13. If no parallel exists, simplify the intended sentence.
14. Never invent a complex verb merely by concatenating probable suffixes.

---

# 29. Version status

**Version:** 0.1  
**Basis:** Matew and Marku through part of Chapter 15  
**Method:** Repeated-pattern inference from `bible.md`  
**Status:** Provisional and incomplete

This file should be revised after the remaining books of `bible.md` become
available. New evidence should be used to:

- confirm or reject provisional segmentations;
- complete person and number paradigms;
- add more subordinate-clause patterns;
- distinguish productive morphology from lexicalized forms;
- add corpus references for every major rule.
