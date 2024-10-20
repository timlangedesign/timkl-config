return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local quotes = {
      "Reality is that which, when you stop believing in it, doesn't go away. — Philip K. Dick",
      "Freedom begins between the ears. — Edward Abbey",
      "Knowledge, like air, is vital to life. Like air, no one should be denied it. — Alan Moore",
      "Man is the only creature who refuses to be what he is. — Albert Camus",
      "To live is to suffer, to survive is to find some meaning in the suffering. — Friedrich Nietzsche",
      "We are what we repeatedly do. Excellence, then, is not an act, but a habit. — Aristotle",
      "In a time of deceit telling the truth is a revolutionary act. — George Orwell",
      "Any sufficiently advanced technology is indistinguishable from magic. — Arthur C. Clarke",
      "The only way to discover the limits of the possible is to go beyond them into the impossible. — Arthur C. Clarke",
      "The best way to predict the future is to invent it. — Alan Kay",
      "The future belongs to those who prepare for it today. — Malcolm X",
      "Life can only be understood backwards; but it must be lived forwards. — Søren Kierkegaard",
      "Anxiety is the dizziness of freedom. — Søren Kierkegaard",
      "People demand freedom of speech as a compensation for the freedom of thought which they seldom use. — Søren Kierkegaard",
      "Once you label me you negate me. — Søren Kierkegaard",
      "The tyrant dies and his rule is over, the martyr dies and his rule begins. — Søren Kierkegaard",
      "The price of anything is the amount of life you exchange for it. — Henry David Thoreau",
      "Those who would give up essential liberty to purchase a little temporary safety deserve neither liberty nor safety. — Benjamin Franklin",
      "The most common way people give up their power is by thinking they don't have any. — Alice Walker",
      "The advancement of technology is based on making it fit in so that you don't really even notice it. — Bill Gates",
      "The real problem is not whether machines think but whether men do. — B.F. Skinner",
      "The purpose of technology is not to confuse the brain but to serve the body. — William S. Burroughs",
      "The most important thing in communication is hearing what isn't said. — Peter Drucker",
      "Courage is not the absence of fear, but rather the judgment that something else is more important than fear. — Ambrose Redmoon",
      "There is no security on this earth; there is only opportunity. — Douglas MacArthur",
      "Liberty means responsibility. That is why most men dread it. — George Bernard Shaw",
      "The power of the people is much stronger than the people in power. — Wael Ghonim",
      "Information is the currency of democracy. — Thomas Jefferson",
      "First they ignore you, then they laugh at you, then they fight you, then you win. — Mahatma Gandhi",
      "The only way to deal with an unfree world is to become so absolutely free that your very existence is an act of rebellion. — Albert Camus",
      "One person with a belief is equal to a force of ninety-nine who have only interests. — John Stuart Mill",
      "When exposing a crime is treated as committing a crime, you are ruled by criminals. — Edward Snowden",
      "It's not a faith in technology. It's faith in people. — Steve Jobs",
      "I do not fear computers. I fear the lack of them. — Isaac Asimov",
      "Privacy is not an option, and it shouldn't be the price we accept for just getting on the Internet. — Gary Kovacs",
      "The only thing necessary for the triumph of evil is for good men to do nothing. — Edmund Burke",
      "What is freedom of expression? Without the freedom to offend, it ceases to exist. — Salman Rushdie",
      "Life is not a problem to be solved, but a reality to be experienced. — Søren Kierkegaard",
      "People settle for a level of despair they can tolerate and call it happiness. — Søren Kierkegaard",
      "Our life always expresses the result of our dominant thoughts. — Søren Kierkegaard",
      "He who is silent is forgotten; he who does not advance falls back. — Henrik Ibsen",
      "To dare is to lose one's footing momentarily. Not to dare is to lose oneself. — Søren Kierkegaard",
      "Every act of rebellion expresses a nostalgia for innocence and an appeal to the essence of being. — Albert Camus",
      "The further a society drifts from truth the more it will hate those who speak it. — George Orwell",
      "A single event can awaken within us a stranger totally unknown to us. — Antoine de Saint-Exupéry",
      "The merit of all things lies in their difficulty. — Alexandre Dumas",
      "Conformity is the jailer of freedom and the enemy of growth. — John F. Kennedy",
      "They who can give up essential liberty to obtain a little temporary safety deserve neither liberty nor safety. — Benjamin Franklin",
    }

    -- Get a random quote
    local quote = ""
    if #quotes > 0 then
      math.randomseed(os.time())
      local idx = math.random(1, #quotes)
      quote = quotes[idx]
    end

    -- Create a new section for the quote
    dashboard.section.quote = {
      type = "text",
      val = quote,
      opts = {
        position = "center",
        hl = function()
          local line = quote
          local emdash_pos = line:find("—")
          if emdash_pos then
            return {
              { "DashboardQuote", 0, emdash_pos - 1 },
              { "DashboardAuthor", emdash_pos - 1, #line },
            }
          else
            return { { "DashboardQuote", 0, #line } }
          end
        end,
      },
    }

    -- Set the ASCII art in its own section
    dashboard.section.ascii = {
      type = "text",
      val = {
        "   ________  ________  ________  ____ ___  _______ ",
        "  ╱        ╲╱        ╲╱        ╲╱    ╱   ╲╱       ╲",
        " ╱        __╱        ╱         ╱         ╱        ╱",
        " ╱       ╱╱         ╱         ╱        _╱        ╱ ",
        " ╲______╱ ╲________╱╲__╱__╱__╱╲____╱___╱╲________╱ ",
      },
      opts = {
        position = "center",
        hl = "DashboardHeader",
      },
    }

    -- Define highlight groups
    vim.cmd([[
      hi DashboardQuote guifg=#00FF00 gui=italic
      hi DashboardAuthor guifg=#00FF00 gui=NONE
      hi DashboardHeader guifg=#FFFFFF
    ]])

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("SPC fr", "Recent Files", "<cmd>Telescope oldfiles<CR>"),
      -- dashboard.button("e", "New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "File Explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("u", "Update Plugins", "<cmd>Lazy update<CR>"),
      dashboard.button("i", "Install Plugins", "<cmd>Lazy install<CR>"),
      dashboard.button("q", "Quit", "<cmd>qa<CR>"),
    }

    -- Configure the layout
    dashboard.config.layout = {
      { type = "padding", val = 1 },
      dashboard.section.quote,
      { type = "padding", val = 1 },
      dashboard.section.ascii,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    -- Send config to alpha
    alpha.setup(dashboard.config)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
