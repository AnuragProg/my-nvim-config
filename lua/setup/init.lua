
--
--
--SETUP DIR CONTAINS EVERYTHING THAT IS REQUIRED AT THE STARTUP OF NVIM
--
--

require("setup.remap")

-- installing lazy plugin manager
-- lazy will make use of plugins folder to load all necessary plugins [so technically we are executing plugins folder after this line]
require("setup.lazy")

require("setup.set")
