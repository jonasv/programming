#!/usr/bin/perl


# function(ascii,a,b,c) {
#			for(i=0;i<ascii.length;i++) {
#				if (i%3==0) {
#					ascii[i]=(ascii[i]+a)%256;
#				}
#				if (i%3==1) {
#					ascii[i]=(ascii[i]+b)%256;
#				}
#				if (i%3==2) {
#					ascii[i]=(ascii[i]+c)%256;
#				}
#			}
#			return ascii;
#		}
 my $text = "98";
    print encode($text,$text,$text,$text);
	
sub encode {
	my ($ascii,$a,$b,$c) = @_;
		for ($i=0;$i<length($ascii);$i++) {
			if ($i % '3' == '0') {
				$ascii[$i] = ($ascii[$i]+$a)%256;
			}
			if ($i % '3' == '1') {
				$ascii[$i] = ($ascii[$i]+$b)%256;
			}
			if ($i % '3' == '2') {
				$ascii[$i] = ($ascii[$i]+$c)%256;
			}
		}
	return $ascii;
}

