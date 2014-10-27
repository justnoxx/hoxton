use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

my %make_params = (
    NAME             => 'Hoxton',
    AUTHOR           => '@miyagawa',
    ABSTRACT         => 'Yet another psgi server',
    VERSION_FROM     => 'lib/Hoxton.pm',
    LICENSE          => 'perl',
    PL_FILES         => {},
    EXE_FILES        => ['script/hoxton'],
    MIN_PERL_VERSION => 5.006,
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Data-Dir-*' },
    # "test" => {
    #     "TESTS" => "t/*.t"
    # }
);

# if so, ExtUtils::MakeMaker supports META_MERGE tag
#if ($ExtUtils::MakeMaker::VERSION >= 6.46) {
    #$make_params{META_MERGE} = {
        #"meta-spec" => { version => 2 },
        #resources => {
            #repository => {
                #type    => 'git',
                #web     => 'https://github.com/justnoxx/hoxton',
                #url     => 'https://github.com/justnoxx/hoxton.git',
            #},
        #},
    #};
#}

WriteMakefile(%make_params);

