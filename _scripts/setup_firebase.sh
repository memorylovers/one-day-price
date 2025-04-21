#!/bin/bash

set -e
ANDROID_PKG_NAME="com.memorylovers.myapp"
IOS_BUNDLE_ID="com.memorylovers.myapp"
PROJECT_ID_PROD="myapp-prod"
PROJECT_ID_DEV="myapp-stag"
PLATFORMS="android,ios"
ACCOUNT="<YOUR-EMAIL-ADDRESS>"

FLAVORS='
dev
stag
prod
'

for f in $FLAVORS; do
  if [ "$f" = "prod" ]; then
    PROJECT_ID="$PROJECT_ID_PROD"
    SUFFIX=""
  else
    PROJECT_ID="$PROJECT_ID_DEV"
    SUFFIX=".$f"
  fi
  
  echo "FLAVOR: ${f}, ${PROJECT_ID}"
  # for android
  flutterfire configure --yes \
    --project="${PROJECT_ID}" \
    --account="${ACCOUNT}" \
    --out="lib/__gen/firebase/firebase_options_${f}.dart" \
    --android-package-name="${ANDROID_PKG_NAME}${SUFFIX}" \
    --android-out="android/app/src/${f}/google-services.json" \
    --platforms="${PLATFORMS}" 

  # for ios
  for buildConfig in Debug Release Profile; do
    flutterfire configure --yes \
      --project="${PROJECT_ID}" \
      --account="${ACCOUNT}" \
      --out="lib/__gen/firebase/firebase_options_${f}.dart" \
      --ios-bundle-id="${IOS_BUNDLE_ID}${SUFFIX}" \
      --ios-build-config="${buildConfig}-${f}" \
      --ios-out="ios/Runner/${f}/GoogleService-Info.plist" \
      --platforms="${PLATFORMS}" 
  done
done
