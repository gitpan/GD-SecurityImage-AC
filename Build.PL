use strict;
use Module::Build;

Module::Build->new(
   module_name => 'GD::SecurityImage::AC',
   license     => 'perl',
   requires    => { 
                     'GD::SecurityImage' => '1.60',
                     'Digest::MD5'       => 0,
   },
   recommends  => {},
   dist_author => 'Burak Gursoy <burak@cpan.org>',
)->create_build_script;
