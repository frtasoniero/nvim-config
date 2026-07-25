return {
  {
    "mfussenegger/nvim-dap",

    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },

    keys = {
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle breakpoint",
      },

      {
        "<leader>dB",
        function()
          require("dap").set_breakpoint(
            vim.fn.input("Breakpoint condition: ")
          )
        end,
        desc = "Conditional breakpoint",
      },

      {
        "<leader>dc",
        function()
          require("dap").continue()
        end,
        desc = "Continue / start",
      },

      {
        "<leader>di",
        function()
          require("dap").step_into()
        end,
        desc = "Step into",
      },

      {
        "<leader>do",
        function()
          require("dap").step_over()
        end,
        desc = "Step over",
      },

      {
        "<leader>dO",
        function()
          require("dap").step_out()
        end,
        desc = "Step out",
      },

      {
        "<leader>dr",
        function()
          require("dap").repl.toggle()
        end,
        desc = "Toggle REPL",
      },

      {
        "<leader>dt",
        function()
          require("dap").terminate()
        end,
        desc = "Terminate session",
      },

      {
        "<leader>du",
        function()
          require("dapui").toggle()
        end,
        desc = "Toggle DAP UI",
      },

      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Continue / start",
      },

      {
        "<F10>",
        function()
          require("dap").step_over()
        end,
        desc = "Step over",
      },

      {
        "<F11>",
        function()
          require("dap").step_into()
        end,
        desc = "Step into",
      },

      {
        "<F12>",
        function()
          require("dap").step_out()
        end,
        desc = "Step out",
      },
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      local adapter_cmd = vim.fn.exepath("lldb-dap")

      if adapter_cmd == "" then
        adapter_cmd = vim.fn.exepath("lldb-vscode")
      end

      dap.adapters["lldb-dap"] = {
        type = "executable",
        command = adapter_cmd,
        name = "lldb-dap",
      }

      local cpp_config = {
        {
          name = "Launch",
          type = "lldb-dap",
          request = "launch",

          program = function()
            return vim.fn.input(
              "Path to executable: ",
              vim.fn.getcwd() .. "/",
              "file"
            )
          end,

          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }

      dap.configurations.c = cpp_config
      dap.configurations.cpp = cpp_config

      dapui.setup({})

      require("nvim-dap-virtual-text").setup({})

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}
