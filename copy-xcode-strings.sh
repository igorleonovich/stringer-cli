#!/bin/bash

source setenv.sh

echo "Copying XCode strings..."

map=( )
map+=("ar:ar.lproj")
map+=("de:de.lproj")
map+=("es-ES:es.lproj")
map+=("fr:fr.lproj")
map+=("hi:hi.lproj")
map+=("id:id.lproj")
map+=("it:it.lproj")
map+=("ja:ja.lproj")
map+=("ko:ko.lproj")
map+=("no:nb.lproj")
map+=("pl:pl.lproj")
map+=("pt-PT:pt-PT.lproj")
map+=("ro:ro.lproj")
map+=("ru:ru.lproj")
map+=("sv-SE:sv.lproj")
map+=("th:th.lproj")
map+=("tr:tr.lproj")
map+=("uk:uk.lproj")
map+=("vi:vi.lproj")
map+=("zh-TW:zh-Hans.lproj")
map+=("zh-CN:zh-Hant.lproj")

inputDir=$(find ./ -maxdepth 1 -type d -name '*CrowdinTranslations_*' -print -quit)

for keyvalue in "${map[@]}" ; do
    key=${keyvalue%%:*}
    value=${keyvalue#*:}
    baseInputPath=$inputDir
    baseOutputPath=$XCODE_PROJECT_LOCALIZATIONS_FOLDER_PATH
    fileName="Localizable.strings"
    cp "$baseInputPath/$key/$fileName" "$baseOutputPath/$value/$fileName"
done

for keyvalue in "${map[@]}" ; do
    key=${keyvalue%%:*}
    value=${keyvalue#*:}
    baseInputPath=$inputDir
    baseOutputPath=$XCODE_PROJECT_LOCALIZATIONS_FOLDER_PATH
    fileName="InfoPlist.strings"
    cp "$baseInputPath/$key/$fileName" "$baseOutputPath/$value/$fileName"
done
