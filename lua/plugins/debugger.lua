return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    -- GDB Adapter
    dap.adapters.gdb = {
      type = "executable",
      command = "gdb",
      args = {
        "--interpreter=dap",
        "--eval-command",
        "set print pretty on",
      },
    }

    -- C Debug Configuration
    dap.configurations.c = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = "${workspaceFolder}/main",
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
        args = {},
      },
    }

    -- Use the same configuration for C++
    dap.configurations.cpp = dap.configurations.c

    -- Open/close dap-ui automatically
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end

    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end

    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end

    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- Keymaps
    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint)
    vim.keymap.set("n", "<Leader>dc", dap.continue)
    vim.keymap.set("n", "<Leader>do", dap.step_over)
    vim.keymap.set("n", "<Leader>di", dap.step_into)
    vim.keymap.set("n", "<Leader>du", dap.step_out)
    --vim.keymap.set("n", "<Leader>dq", dap.terminate)
    vim.keymap.set("n", "<Leader>dq", function()
    dap.terminate()
    dapui.close()
    end
  )
  end,
}
