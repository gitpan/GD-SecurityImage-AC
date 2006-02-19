use ExtUtils::MakeMaker;

WriteMakefile(
   NAME         => 'GD::SecurityImage::AC',
   VERSION_FROM => 'lib/GD/SecurityImage/AC.pm',
   PREREQ_PM    => {
                     'GD::SecurityImage' => '1.60',
                     'Digest::MD5'       => 0,
   },
   ($] >= 5.005 ? (
   AUTHOR       => 'Burak Gursoy <burak@cpan.org>',
   ABSTRACT     => 'Security image (captcha) generator',
   ) : ()),
   PL_FILES     => {},
);
