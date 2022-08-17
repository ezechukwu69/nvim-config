require("flutter-tools").setup {
        ui = {
                border = "rounded",
                notification_style = 'plugin',
        },
        dev_log = {
                enabled = true,
                open_cmd = "tabedit", -- command to use to open the log buffer
        },
        widget_guides = {
                enabled = true,
        },
        closing_tags = {
                highlight = "ErrorMsg", -- highlight for the closing tag
                prefix = ">", -- character to use for close tag e.g. > Widget
                enabled = true -- set to false to disable
        },
        lsp = {
                color = { -- show the derived colours for dart variables
                        enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
                        background = false, -- highlight the background
                        foreground = false, -- highlight the foreground
                        virtual_text = true, -- show the highlight using virtual text
                        virtual_text_str = "■", -- the virtual text character to highlight
                },
                -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
                settings = {
                        showTodos = true,
                        completeFunctionCalls = true,
                        renameFilesWithClasses = "prompt", -- "always"
                        enableSnippets = true,
                }
        }
}
