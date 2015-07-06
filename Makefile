tlds.txt:
	wget https://data.iana.org/TLD/tlds-alpha-by-domain.txt -O tlds.txt

recreate:
	rm -f tlds.txt tlds.py
	make tlds.py

tlds.py: tlds.txt
	egrep '^[A-Za-z]' tlds.txt | awk 'BEGIN { print "TLDS = [" } { print "\"" $$0 "\"," } END { print "]"}' > tlds.py

.PHONY: recreate
