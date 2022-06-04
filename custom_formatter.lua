--report
--{
--    [1] = {
--        [1] = {
--            code = "211",
--            name = "d",
--            column = 7,
--            end_column = 7,
--            line = 1
--        },
--        filename = "123 123/test_2 2.lua"
--    },
--    errors = 0,
--    warnings = 1,
--    fatals = 0
--}
--
--filenames
--{
--    [1] = "123 123/test_2 2.lua"
--}
--
--combined_opts
--{
--    quiet = 0,
--    ranges = "false",
--    color = "true",
--    formatter = "custom_formatter",
--    codes = "false"
--}

local format = require("luacheck.format")
return function(report, file_names, opts)
    if report.errors == 0 and report.warnings == 0 and report.fatals == 0 then
        return ""
    end

	opts.formatter = "default"
	return format.format(report, file_names, opts)
end