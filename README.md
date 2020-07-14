# Fix-Signature Tracking (FixSigTrack)
Exploring an approach to inserting and tracking code fix markers in binaries.

This is an exploration of using the yara (https://virustotal.github.io/yara/) tool as a mechanism to articulate "rules" for identification of "signature" markers associated with code fixes.  Product Security Advisories may be issued in response to documented CVE exposures.  At Red Hat these are called Red Hat Security Advisories or RHSAs.  An RHSA may span multiple CVEs.  The signaturing approach facilitated by yara can provide specific fix-level granularity reporting on a produced binary.

This repository demonstrates sucessful signature identification on files built using the following build stacks:
* C
* C++
* Java
* Go (Golang)

While we will assume a Linux environment, the process can very easily be adapted to other environments.  I installed most everything using `dnf` on Fedora 32.  

To start, you will need the `yara` tool installed:

    * yara-3.11.0-2.fc32.x86_64

To support the above languages I have the following installed:

    * gcc-10.1.1-1.fc32.x86_64
    * gcc-c++-10.1.1-1.fc32.x86_64
    * java-1.8.0-openjdk-1:1.8.0.252.b09-1.fc32.x86_64
    * golang-1.14.3-1.fc32.x86_64
    
After cloning this repository you can execute the `build.sh` script.  This script basically will created a target folder tree and compile each of the sample code files from the src tree.  If you have the `tree` command installed then you can verify that the `src` tree is mirrored in the `target` tree.

At this point you can execute `scan.sh` or `scan2.sh`.  The first script (`scan.sh`) executes a scan using a generic rule.  The other script executes a rule containing a more specific signature.
