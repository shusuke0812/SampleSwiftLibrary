#!/bin/sh

#  OutputXCFramework.sh
#  OriginalXCFramework
#
#  Created by Shusuke Ota on 2021/6/3.
#  


# 出力先
OUTPUT_DIR=${PROJECT_DIR}/Output

# 中間ファイルの出力先
DERIVED_DIR=${OUTPUT_DIR}/${CONFIGURATION}-derived

# archiveの出力先
ARCHIVE_DIR=${OUTPUT_DIR}/${CONFIGURATION}-archive

# xcframeworkの出力先
XCFRAMEWORK_DIR=${OUTPUT_DIR}/${CONFIGURATION}-xcframework

# 出力先ディレクトリ削除（古いデータを削除）
rm -rf ${OUTPUT_DIR}

# 中間ファイルの出力先を作成
mkdir -p ${DERIVED_DIR}

# アーカイブファイルの出力先を作成
mkdir -p ${ARCHIVE_DIR}

# xcframeworkの出力先を作成
mkdir -p ${XCFRAMEWORK_DIR}

# iOS実機用のarchiveファイル
ARCHIVE_FILE_IOS=${ARCHIVE_DIR}/ios.xcarchive
echo "ARCHIVE_FILE_IOS:${ARCHIVE_FILE_IOS}"

# iOSシミュレーター用のarchveファイル
ARCHIVE_FILE_IOS_SIMULATOR=${ARCHIVE_DIR}/iossimulator.xcarchive
echo "ARCHIVE_FILE_IOS_SIMULATOR:${ARCHIVE_FILE_IOS_SIMULATOR}"

# iOS実機用のarchiveファイル作成
xcodebuild archive -scheme ${PROJECT_NAME} -destination="iOS" -archivePath $ARCHIVE_FILE_IOS -derivedDataPath $DERIVED_DIR -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# iOSシミュレータ用のarchiveファイル作成
xcodebuild archive -scheme ${PROJECT_NAME} -destination="iOS Simulator" -archivePath $ARCHIVE_FILE_IOS_SIMULATOR -derivedDataPath $DERIVED_DIR -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# xcframework作成
xcodebuild -create-xcframework -framework $ARCHIVE_FILE_IOS/Products/Library/Frameworks/${PROJECT_NAME}.framework -framework $ARCHIVE_FILE_IOS_SIMULATOR/Products/Library/Frameworks/${PROJECT_NAME}.framework -output $XCFRAMEWORK_DIR/${PROJECT_NAME}.xcframework

# xcframeworkの出力先をfinderで開く
open ${XCFRAMEWORK_DIR}
