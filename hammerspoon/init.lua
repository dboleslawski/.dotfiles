-- ⌘ ⌃ ⌥ ⇧
local hyper = {'⌃', '⌥'}
local hyperShift = {'⌃', '⌥', '⇧'}

-- grid
hs.grid.GRIDWIDTH = 8
hs.grid.GRIDHEIGHT = 5
hs.grid.MARGINX = 10
hs.grid.MARGINY = 10

-- move windows
hs.hotkey.bind(hyper, 'Left', hs.grid.pushWindowLeft)
hs.hotkey.bind(hyper, 'Down', hs.grid.pushWindowDown)
hs.hotkey.bind(hyper, 'Up', hs.grid.pushWindowUp)
hs.hotkey.bind(hyper, 'Right', hs.grid.pushWindowRight)

-- resize windows
hs.hotkey.bind(hyperShift, 'Left', hs.grid.resizeWindowThinner)
hs.hotkey.bind(hyperShift, 'Right', hs.grid.resizeWindowWider)
hs.hotkey.bind(hyperShift, 'Up', hs.grid.resizeWindowShorter)
hs.hotkey.bind(hyperShift, 'Down', hs.grid.resizeWindowTaller)

hs.eventtap.keyStroke({}, "F10")

-- automatically reload config
function reloadConfig(files)
	doReload = false
	for _,file in pairs(files) do
		if file:sub(-4) == ".lua" then
			doReload = true
		end
	end
	if doReload then
		hs.reload()
	end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.notify.new({
		title="Hammerspoon",
		informativeText="Config loaded!"
	}):send():release()