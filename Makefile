.PHONY: clean
clean:
	rm -f *.class *.java

.PHONY: adder
adder:
	javacc $@.jj
	javac *.java

.PHONY: run_adder
run_adder: adder
	java Adder < input.txt

.PHONY: calculator
calculator:
	javacc $@.jj
	javac *.java

.PHONY: run_calc
run_calc: calculator
	java Calculator < input2.txt

.PHONY: four-letter-words
four-letter-words:
	javacc $@.jj
	javac *.java

.PHONY: run_flw
run_flw: four-letter-words
	java FLW input3.txt
