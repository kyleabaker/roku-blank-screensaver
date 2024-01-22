' ********************************************************************
' ********************************************************************
' **  Blank Screensaver
' **
' **  Intentionally simple screensaver for those who prefer a basic
' **  blank screen when idle. Always free.
' **
' **  April 2023
' **  Copyright (c) 2023 Kyle Baker. All Rights Reserved.
' ********************************************************************
' ********************************************************************
sub RunScreenSaver()
    port = createObject("roMessagePort")
    screen = createObject("roScreen")
    if screen = invalid
        print "Error initializing screen object."
        return
    end if
    screen.setMessagePort(port)
    while true
        msg = wait(-1, port)
        if msg <> invalid and type(msg) = "roUniversalControlEvent" and msg.isRemoteKeyPressed()
            screen.Release()
            exit while
        end if
    end while
end sub
