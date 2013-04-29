AmbiguousLanguage1:
	 eyapp -vTC AmbiguousLanguage1.eyp 
	 eyapp -P ab.eyp 
	 ./AmbiguousLanguage1.pm -t -i -m 1 -c 'abbcc'
	 ./AmbiguousLanguage1.pm -t -i -m 1 -c 'aabbc'

AmbiguousLanguage2:
	 eyapp -vTC AmbiguousLanguage2.eyp 
	 eyapp -P ab.eyp 
	 ./AmbiguousLanguage2.pm -t -i -m 1 -c 'abbcc'
	 ./AmbiguousLanguage2.pm -t -i -m 1 -c 'aabbc'
