%%
st:  s
;

s: aeqb 
 | beqc
;

aeqb: ab cs
;

ab:  
   /* empty */  
  | 'a'  
     ab 'b'
;

cs: 
   /* empty */  
  | cs 'c' 
;

beqc: 
  as bc
;

bc:  
   /* empty */  
  | 'b' bc 'c'
;

as: 
   /* empty */  
  | as 'a'
;

%%
