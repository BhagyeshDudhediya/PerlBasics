#!/usr/bin/perl

=begin
expression						matches...
abc				abc (that exact character sequence, but anywhere in the string)
^abc			abc at the beginning of the string
abc$			abc at the end of the string
a|b				either of a and b
^abc|abc$		the string abc at the beginning or at the end of the string
ab{2,4}c		an a followed by two, three or four b�s followed by a c
ab{2,}c			an a followed by at least two b�s followed by a c
ab*c			an a followed by any number (zero or more) of b�s followed by a c
ab+c			an a followed by one or more b�s followed by a c
ab?c			an a followed by an optional b followed by a c; that is, either abc or ac
a.c				an a followed by any single character (not newline) followed by a c
a\.c			a.c exactly
[abc]			any one of a, b and c
[Aa]bc			either of Abc and abc
[abc]+			any (nonempty) string of a�s, b�s and c�s (such as a, abba, acbabcacaa)
[^abc]+			any (nonempty) string which does not contain any of a, b and c (such as defg)
\d\d			any two decimal digits, such as 42; same as \d{2}
\w+				a �word�: a nonempty sequence of alphanumeric characters and low lines (underscores), such as foo and 12bar8 and foo_1
100\s*mk		the strings 100 and mk optionally separated by any amount of white space (spaces, tabs, newlines)
abc\b			abc when followed by a word boundary (e.g. in abc! but not in abcd)
perl\B			perl when not followed by a word boundary (e.g. in perlert but not in perl stuff)
=cut

$bar = "This statement contains foo";

# check if $bar contains foo
if ($bar =~ m/foo/) {
	print "Statement:$bar => contains foo\n";
} else {
	print "Statement:$bar => does not contain foo\n";
}

# check if $bar does not contain food
if ($bar !~ m/food/) {
	print "Statement:$bar => does not contain food\n";
} else {
	print "Statement:$bar => contains food\n";
}

@list = qw/food foosball subeo footnote terfoot canic footbridge/;
foreach (@list) {
	#$first_occur = $_ if ?(foo.*)?;
	$last_occur = $_ if /(foo*)/;
}
#print "First Occurence of foo: $first_occur\n";
print "Last occurence of foo: $last_occur\n";

# Substituion operator, substitute a new set in place of old set
$bar =~ s/foo/bar/g;
print "After substitution: $bar\n";

# Translation operator, replace all occurences of a characterr with new character
$bar =~ tr/a/o/;
print $bar, "\n";