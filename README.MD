# Pull Timer

## Overview
This Lua script implements a `/pull` slash command for World of Warcraft that creates countdown timers for pull coordination in group content.

## Command Syntax
```
/pull <seconds>
/pull break
/pull clear
```

## Features

### Basic Timer
```
/pull 10
```
Creates a countdown timer for the specified number of seconds. The timer will be visible to your entire party/raid.

### Break Timer
```
/pull break <minutes>
```
Starts a break timer. Useful for coordinating breaks during raid sessions. If no time given, defaults to 5-minutes (300 seconds).

### Clear Timer
```
/pull clear
```
Cancels any active countdown timer.

## Examples

```lua
/pull 7          -- 7 second pull timer
/pull 15         -- 15 second pull timer
/pull break      -- 5 minute break
/pull clear      -- Cancel timer
```

## Notes
- Only raid leaders/assistants can start countdown timers in WoW
- Timers are visible to all party/raid members
- Invalid input will display a warning message without starting a timer
