#!perl

use strict;
use warnings;

#
# Note that Ext.Direct Actions should be loaded at compile time
# *before* Plack::Runner is activated. Including them in app.psgi
# will not work.
#

use RPC::ExtDirect::Demo::Profile;
use RPC::ExtDirect::Demo::TestAction;
use RPC::ExtDirect::Demo::PollProvider;

use Plack::Runner;

my $runner = Plack::Runner->new;
$runner->run;

exit 0;
