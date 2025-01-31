
local function map(lhs, rhs)
  vim.keymap.set({"n", "v", "s", "o"}, lhs, rhs, {noremap = false})
end

local function nokind(kind, lhs, rhs)
  vim.keymap.set(kind, lhs, rhs, {noremap = true})
end

local function no(lhs, rhs)
  vim.keymap.set({"n", "v", "s", "o"}, lhs, rhs, {noremap = true})
end

vim.g.mapleader = " "

vim.opt.scrolloff = 5

--time out for mappings
--vim.opt.timeout = 80
vim.opt.timeoutlen = 120

--time out for keycodes
--vim.opt.ttimeout = 80
vim.opt.ttimeoutlen = 80

--vim.opt.incsearch = true

--set timeout=on

--let mapleader = <space>

--no <leader>v <C-v>

nokind("n", "<leader>pv", vim.cmd.Ex)


no("<C-k>", "<C-v>")
no("ga", "ggVG")

--kept the same:
--a ; d i M r R
-- d D s S

no("U", "<C-r>")

no(".", "e")
no("e", ".")


--no d .
--no s d
--no e s
--no S D
--no D S

no("n", "l")
no("l", "n")

no("Q", "T")
no("~", "Q")
no("Y", "~")
no("%", "Y")
no("E", "%")
no(">", "E")
no("v", ">")
no("k", "v")
no("c", "k")
no("j", "c")
no("t", "j")
no("q", "t")
no("#", "q")
no("&", "#")
no("V", "&")
no("K", "V")
no("<Bar>", "K")
no("H", "<Bar>")
no("C", "H^")
no("J", "C")
no("^", "J")
no("T", "^")

no(",", "w")
no("w", "<")
no("<", "W")
no("W", "L^")
no("L", "N")
no("N", "$")
no("$", "_")
no("_", "=")
no("=", "+")
no("+", "-")
--map("-", ":")
--map(":", ",")
no("-", ",")

no("<C-=>", "<C-OS>")
no("<C-+>", "<C-Ol>")

--no h <Backspace>

no("<C-b>", "ge")
no("<C-S-b>", "gE")

no("ge", "g.")
no("gE", "g>")

no("g#", "g&")
no("g&", "gV")

no("<C-e>", ".j")
no("yw", "yiw")
no("jw", "ciw")
no("cw", "ciw")
no("j(", "cw(")
no("j\"", "ci\"")
no("j<", "ci<")
no("dw", "daw")

no("'v", "`>")
no("'w", "`>")
no("'/", "`[")
no("'=", "`]")

no("\"", "`")
no("`", "\"")
--no("!", "\"")
no("!", ":! ")

no("[", "{")
no("{", "[")
no("]", "}")
no("}", "]")

--no("Y", "y$")

no("gUw", "gU,")

--iunmap <Esc>

--sec sidescroll=1

--scroll by one
no("<M-c>", "<C-y>")
no("<M-t>", "<C-e>")

--put cursor at
no("zc", "zt")
no("zt", "zz")
no("zw", "zb")

no("zn", "zl")

no("<C-h>", "<C-u>")
no("<C-n>", "<C-d>")

--vmap <C-p> y'>p

--@w bk.

--eE .>
--dD eE
--hH dD
--jJ hH -
--cC jJ -
--iI cC
--gG iI
--uU gG
--fF uU
--yY fF
--tT yY
--kK tT
--vV kK
--.> kK

--no u i
--no i u
--no U I
--no I U

--imap <Esc> <Esc>

--no <A-space> i
--imap <A-space> <Esc>

--imap uu <Esc>
--imap hh <Esc>
--imap uh <Esc>
--imap hu <Esc>

no("<M-a>", "<C-x>")

--iunmap <Left>
--iunmap <Up>
--iunmap <Down>
--iunmap <Right>

nokind("i", "<C-h>", "<BS>")
nokind("i", "<C-n>", "<Del>")

nokind("i", "<M-u>", "<Esc>")
nokind("i", "<C-u>", "<Esc>")

nokind("n", "<C-u>", "i")
nokind("n", "<C-h>", "i")
nokind("n", "<M-u>", "i")
nokind("n", "<M-h>", "i")
nokind("v", "<C-u>", "<Esc>")

nokind("n", "<M-u>", "<Esc>")

--no("i", "<F1>", "<Esc>")
--no("n", "<F1>", "i")
--no("v", "<F1>", "<Esc>")
no("kw", "viw")

nokind("n", "<C-i>", "i <Esc>r")
nokind("n", "<C-i>", "i <Esc>r")

--enter visual mode from insert mode
nokind("i", "<M-k>", "<Esc>k")
nokind("i", "<M-S-k>", "<Esc>K")
--imap <C-M-k> <Esc>nK
--imap <M-K> <Esc>nK
nokind("i", "<C-k>", "<Esc><C-k>")
--imap <C-K> <Esc>nK

--v enters visual mode
nokind("n", "<M-k>", "k")
nokind("n", "<M-S-k>", "K")
nokind("n", "<C-M-k>", "<C-k>")

nokind("i", "<M-h>", "<C-o>h")
nokind("i", "<M-c>", "<C-o>c")
nokind("i", "<M-t>", "<C-o>t")
nokind("i", "<M-n>", "<C-o>n")

--scroll horizontally
nokind("n", "<C-M-h>", "20zh")
nokind("n", "<C-M-n>", "20zl")
nokind("n", "<C-M-S-H>", "250zh")
nokind("n", "<C-M-S-N>", "250zl")

--scroll pages
nokind("n", "<C-M-c>", "<C-b>")
nokind("n", "<C-M-t>", "<C-f>")

--move lines
nokind("n", "<M-w>", ":m .+1<CR>==")
nokind("n", "<M-m>", ":m .-2<CR>==")
nokind("i", "<M-w>", "<Esc>:m .+1<CR>==gi")
nokind("i", "<M-m>", "<Esc>:m .-2<CR>==gi")
nokind("v", "<M-w>", ":m '>+1<CR>==gv")
nokind("v", "<M-m>", ":m '<-2<CR>==gv")

nokind("n", "<C-S-t>", "A // TODO(bran) ")
nokind("i", "<C-S-t>", "<Esc>A // TODO(bran) ")

no("<C-D>", "<Up><C-d>")

--ino <Esc> :action EditorEscape

---- -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t // TODO
--map \r <Action>(ReformatCode)

---- Map <leader>d to start debug
--map <leader>d <Action>(Debug)

---- Map \b to toggle the breakpoint on the current line
--map \b <Action>(ToggleLineBreakpoint)


-- Find more examples here: https://jb.gg/share-ideavimrc

