use strict;
use warnings;
use PDF::API2;
use utf8;

binmode STDIN, ':encoding(cp932)';
binmode STDOUT, ':encoding(cp932)';
binmode STDERR, ':encoding(cp932)';

my $pdf = PDF::API2->open($ARGV[0]);
my $pageCount = $pdf->pages;
print("ページ数:".$pageCount);
for (my $i = 1 ; $i < $pageCount; $i++) {
    my $page = $pdf->openpage($i);
    (my $llx, my $lly, my $urx, my $ury) = $page->mediabox();
    printf("ページ数 %d mediabox [llx=%d, lly=%d, urx=%d, ury=%d]\n", $i, $llx, $lly, $urx, $ury );
}