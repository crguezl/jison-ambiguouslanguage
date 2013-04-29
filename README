A context-free language is inherently ambiguous if all context-free
grammars generating that language are ambiguous.  While some
context-free languages  have both ambiguous and unambiguous grammars, there
are context-free languages for which no unambiguous context-free
grammar can exist. An example of an inherently ambiguous language
is the set 

{ a^n b^n c^m : n >= 0, m >= 0 } U { a^n b^m c^m : n >= 0, m >= 0 }

  s: aeqb | beqc ;
  aeqb: ab cs ;
  ab: /* empty */ | 'a' ab 'b' ;
  cs: /* empty */ | cs 'c' ;
  beqc: as bc ;
  bc: /* empty */ | 'b' bc 'c' ;
  as: /* empty */ | as 'a' ;

The symbol 'aeqb' correspond to guess that there are the same number
of 'a's than 'b's.  In the same way, 'beqc' starts the subgrammar
for those phrases where the number of 'b's is equal to the number
of 'c's. The usual approach to eliminate the ambiguity by changing
the grammar to an unambiguous one does not work.

See section "Parsing inherently ambiguous languages" in 
ppcr_dlt.pdf

# ~/LEyapp/examples/debuggingtut$ eyapp -vTC AmbiguousLanguage1.eyp 
# 1 shift/reduce conflict and 1 reduce/reduce conflict
# ~/LEyapp/examples/debuggingtut$ eyapp -P ab.eyp 
# ~/LEyapp/examples/debuggingtut$ ./AmbiguousLanguage1.pm -t -i -m 1 -c 'abbcc'
# ~/LEyapp/examples/debuggingtut$ ./AmbiguousLanguage1.pm -t -i -m 1 -c 'aabbc'

