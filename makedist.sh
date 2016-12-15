#!/bin/bash

name=gateapplication-German
tmpdir=/tmp
curdir=`pwd -P`
## expects the tag to have been created in the current repository using
## git tag -a v9.9 -m "Version 9.9." 
## or similar
version=`git describe --tags`
destdir=$tmpdir/${name}$$
curbranch=`git branch | grep '\*' | cut -c 3-`
echo Making a release zip for plugin $name, version $version from branch $curbranch
rm -rf "$destdir"
mkdir -p $destdir/$name
rm -f $name-*.zip
rm -f $name-*.tgz
tar --exclude-vcs --exclude=.gitmodules --exclude=.gitattributes --exclude=*.gazbin --exclude=*.zip --exclude=plugins/gateplugin-Stanford_CoreNLP/resources/* --exclude=plugins/gateplugin-StringAnnotation/tests/* --exclude=*.class -zcvf ${name}-${version}.tgz *
pushd $destdir
tar xvf $curdir/${name}-${version}.tgz
rm $curdir/${name}-${version}.zip
cd ..
zip -r $curdir/$name-$version.zip $name
echo Created a release zip for $name, version $version from branch $curbranch
echo Zip file is $curdir/$name-$version.zip
popd >& /dev/null
