%lex
%%
\s+                {}
.                  return yytext;
/lex

%%
ss: s           { console.log($s); }
  | ss ';' s    { console.log($s); }
;
   
s: as bs cs 
    { 
                             
      console.log('as = '+$as+' bs = '+$bs+' cs = '+$cs);
      if ($as == $bs)      { 
                             $$ = true; 
                           }
      else if ($bs == $cs) { $$ = true; }
      else { $$ = false; }
    }
;

as:  
   /* empty */      { $$ = 0;  }
  | 'a' as          { $$ = $as + 1; }
;

bs: 
   /* empty */      { $$ = 0;  }
  | bs 'b'          { $$ = $bs + 1; }
;

cs: 
   /* empty */       { $$ = 0;  }
  | cs 'c'           { $$ = $cs + 1; }
;

%%
