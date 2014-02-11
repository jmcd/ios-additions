ios-additions
=============

Resusable iOS things. First, add the CocoaPods Spec repo:

`pod repo add jmcd-podspecs git@github.com:jmcd/podspecs.git`

Then you can add dependencies to your podfile

`pod "POD-NAME", "~> 0.0.1"`

Where `POD-NAME` is one of

* JMDActions - actions with controllers for alert-views and action-sheets
* JMDAutoLayout - auto-layout and constraint helpers
* JMDCoreData - core-data setup and helper, with a fetched result controller delegate abstraction
* JMDFoundation - a few small fountation helpers, inc. a class that combines NSDate and NSCalendar for ease
* JMDImage - UIImage category helper

See https://github.com/jmcd/podspecs for versions
