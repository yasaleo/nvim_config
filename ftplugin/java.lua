local home = os.getenv("HOME")
local mason_path = home .. "/.local/share/nvim/mason/packages/jdtls"

-- Automatically detect OS for configuration directory
local os_config = "config_linux"
if vim.fn.has("mac") == 1 then
    os_config = "config_mac"
end

-- Use glob to find the launcher JAR so you don't have to hardcode the version string
local launcher_jar = vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")

local config = {
  cmd = {
    "java", -- Assumes java is in your PATH on Linux
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-jar", launcher_jar,
    "-configuration", mason_path .. "/" .. os_config,
    "-data", home .. "/.cache/jdtls/workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
  },
  root_dir = require('jdtls.setup').find_root({".git", "mvnw", "gradlew", "pom.xml"}),
}

require('jdtls').start_or_attach(config)
