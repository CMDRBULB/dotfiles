return{
  {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
require('orgmode').setup({
  org_agenda_files = {'~/orgfiles/**/*', '~/orgfiles/journal.org'},
  org_default_notes_file = '~/orgfiles/refile.org',
  org_capture_templates = {
    j = {
      description = 'Journal Entry',
      template = '** %^{Do you need a todo?|[%<%H:%M>]|TODO %<%m-%d-%Y %A> [%<%H:%M>]} %?',
      target = '~/orgfiles/journal.org',
      datetree = { tree_type = 'day' },
      properties = { empty_lines = { before = 1, after = 1 } },
    },
  },
})



    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
  }
}
