local string_builder = require("@util/string_builder")
local types = require("./types")

type Datatype = types.Datatype
type StringBuilder = string_builder.StringBuilder

local function append(builder: StringBuilder)
	builder:append("integer")
end

local function generate(seed: number)
	return integer.create(seed)
end

local datatype: Datatype = table.freeze({
	append = append,
	generate = generate,
})

return datatype
