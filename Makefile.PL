
use strict;
use warnings;

 BEGIN { require 5.010; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Bot::Twatterhose',
                       'DISTNAME' => 'Bot-Twatterhose',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Ævar Arnfjörð Bjarmason <avar@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0'
                                           },
                       'ABSTRACT' => 'Consume the Twitter firehose and babble to Twitter with L<Hailo>',
                       'EXE_FILES' => [
                                        'bin/twatterhose'
                                      ],
                       'VERSION' => '0.03',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'Hailo' => '0',
                                        'MouseX::Getopt' => '0.2601',
                                        'Net::Twitter::Lite' => '0',
                                        'Encode' => '0',
                                        'open' => '0',
                                        'namespace::clean' => '0',
                                        'Mouse' => '0.50',
                                        'Any::Moose' => '0',
                                        'autodie' => '0',
                                        'Sys::Prctl' => '0',
                                        'MouseX::Types' => '0.05',
                                        'JSON' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



