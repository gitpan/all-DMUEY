use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'all',
    VERSION_FROM      => 'lib/all.pm',
    PREREQ_PM         => {
        'version' => 0,
        'first'   => 0,
    }, 
    ($] >= 5.005 ?  
      (ABSTRACT_FROM  => 'lib/all.pm', 
       AUTHOR         => 'Daniel Muey <http://drmuey.com/cpan_contact.pl') : ()),
);
