/*
 * Copyright (C) 2025  Andus
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * revolut is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import Lomiri.Components 1.3
import QtWebEngine 1.7

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'revolut.andus'
    automaticOrientation: true
    width: units.gu(45)
    height: units.gu(75)

    WebEngineView {
        id: webview
        anchors.fill: parent
        url: "https://app.revolut.com/start"
        zoomFactor: 1.0
        profile: webViewProfile
    }

    WebEngineProfile {
        id: webViewProfile
        persistentCookiesPolicy: WebEngineProfile.ForcePersistentCookies
        storageName: "Storage"
        httpCacheType: WebEngineProfile.DiskHttpCache
        persistentStoragePath: "/home/phablet/.cache/revolut.andus/QtWebEngine"
    }
}
