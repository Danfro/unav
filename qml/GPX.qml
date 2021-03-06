/*
 * GPS Navigation http://launchpad.net/unav
 * Copyright (C) 2015-2020 Marcos Alvarez Costales https://costales.github.io
 *
 * GPS Navigation is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * GPS Navigation is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

import QtQuick 2.4
import Ubuntu.Components 1.3

Item {
    id: gpx
    
    Component.onCompleted: {
        mainPageStack.importedGPX = false;
    }

    Column {
        id: importGPX
        anchors.centerIn: parent
        spacing: units.gu(1)
        Label {
            text: mainPageStack.importedGPX ? i18n.tr("Track imported into the map") : i18n.tr("You can import a GPX file")
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Button {
            id: btnImport
            text: mainPageStack.importedGPX ? i18n.tr("Import another one") : i18n.tr("Import track")
            width: units.gu(30)
            anchors.topMargin: units.gu(35)
            anchors.horizontalCenter: parent.horizontalCenter
            color: theme.palette.normal.positive
            onClicked: {
                mainPageStack.addPageToCurrentColumn(searchPage, Qt.resolvedUrl("GPXImport.qml"));
            }
        }
    }
}