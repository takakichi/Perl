use strict;
use warnings;
use PDF::API2;

my $pdf = PDF::API2->new();
my $page = $pdf->page;
$pdf->saveas("./new.pdf");
