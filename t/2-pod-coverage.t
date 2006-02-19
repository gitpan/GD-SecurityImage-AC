#!/usr/bin/env perl -w
use strict;
BEGIN { do 't/skip.test' or die "Can't include skip.test!" }

eval "use Test::Pod::Coverage;1";
if($@) {
   plan skip_all => "Test::Pod::Coverage required for testing pod coverage";
} else {
   plan tests => 1;
   # by-pass Authen::Captcha methods
   pod_coverage_ok('GD::SecurityImage::AC', { trustme => [qw/
      check_code
      create_image_file
      database_data
      database_file
      generate_code
      new
   /]});
}
