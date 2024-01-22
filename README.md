# Blank Screensaver

## Intentionally simple screensaver

Blank Screensaver is a simple and concise Roku screensaver that displays a blank screen and exits when a remote key is pressed.

I created this screensaver because I wanted the very basic ability to allow the TV screen to go blank during long pauses with a no distractions screensaver without having to power off the screen. The implementation is intended to be minimalistic and very low maintenance.

This code can be used as a starting point to develop more complex Roku screensavers by modifying the code within the `while` loop.

## Usage

To use this screensaver, simply add the code to your Roku project and call the `RunScreenSaver()` function. 

## Code Description

The code uses the Roku SDK to create a message port, set the message port for the screen, and show the screensaver. It then enters a loop where it clears the screen and waits for messages. The `roRegistrySection.MarkAsAlive()` method is called to ensure that the screensaver stays active. If a message is received and it is a remote key press, the screensaver is released and the loop is exited.

## Example

Here is an example of how to use the `RunScreenSaver()` function:

```
sub Main()
    RunScreenSaver()
end sub
```

## Credits

This code was written by Kyle Baker.
