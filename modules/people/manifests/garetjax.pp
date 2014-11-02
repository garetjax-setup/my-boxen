
# Custom stuff for Jonathan Stoppani
class people::garetjax {
  # My apps
  include colloquy
  include viscosity
  include keyremap4macbook
  include authy
  include bartender
  include flux
  include transmit
  #include utorrent
  include divvy
  include iterm2::dev

  # My config
  osx::recovery_message { 'If this Mac is found, please call +41 79 229 39 88': }

  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::tap_to_click
  include osx::global::disable_key_press_and_hold
  include osx::global::natural_mouse_scrolling

  include osx::dock::autohide

  include osx::finder::unhide_library
  include osx::finder::show_hidden_files

  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::software_update

  include osx::sound::interface_sound_effects

  class { 'osx::global::key_repeat_delay':
    delay => 10
  }

  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

  # Dock setup
  include dockutil

  dockutil::item { 'Remove Launchpad',
    label  => 'Launchpad',
    action => 'remove',
  }
  dockutil::item { 'Remove Mail',
    label  => 'Mail',
    action => 'remove',
  }
  dockutil::item { 'Remove Contacts',
    label  => 'Contacts',
    action => 'remove',
  }
  dockutil::item { 'Remove Calendar',
    label  => 'Calendar',
    action => 'remove',
  }
  dockutil::item { 'Remove Notes',
    label  => 'Notes',
    action => 'remove',
  }
  dockutil::item { 'Remove Reminders',
    label  => 'Reminders',
    action => 'remove',
  }
  dockutil::item { 'Remove Maps',
    label  => 'Maps',
    action => 'remove',
  }
  dockutil::item { 'Remove Messages',
    label  => 'Messages',
    action => 'remove',
  }
  dockutil::item { 'Remove FaceTime',
    label  => 'FaceTime',
    action => 'remove',
  }
  dockutil::item { 'Remove App Store',
    label  => 'App Store',
    action => 'remove',
  }
  dockutil::item { 'Remove System Preferences',
    label  => 'System Preferences',
    action => 'remove',
  }

  #dockutil::item { 'Add Calendar':
  #  item     => '/Applications/iTerm.app',
  #  label    => 'iTerm',
  #  action   => 'add',
  #  position => 1,
  #}

  #dockutil::item { 'Add NetNewsWire':
  #  item     => '/Applications/iTerm.app',
  #  label    => 'iTerm',
  #  action   => 'add',
  #  position => 2,
  #}

  dockutil::item { 'Add Chrome':
    item     => '/Applications/Google Chrome.app',
    label    => 'Chrome',
    action   => 'add',
    position => 3,
  }

  #dockutil::item { 'Add Adium':
  #  item     => '/Applications/iTerm.app',
  #  label    => 'iTerm',
  #  action   => 'add',
  #  position => 4,
  #}

  dockutil::item { 'Add iTerm':
    item     => '/Applications/iTerm.app',
    label    => 'iTerm',
    action   => 'add',
    position => 5,
  }

  dockutil::item { 'Add Colloquy':
    item     => '/Applications/Colloquy.app',
    label    => 'Colloquy',
    action   => 'add',
    position => 6,
  }

  dockutil::item { 'Add HipChat':
    item     => '/Applications/HipChat.app',
    label    => 'HipChat',
    action   => 'add',
    position => 7,
  }

  dockutil::item { 'Add Skype':
    item     => '/Applications/Skype.app',
    label    => 'Skype',
    action   => 'add',
    position => 8,
  }

  dockutil::item { 'Add Twitter':
    item     => '/Applications/Twitter.app',
    label    => 'Twitter',
    action   => 'add',
    position => 9,
  }

  #dockutil::item { 'Add Visual Paradigm':
  #  item     => '/Applications/iTerm.app',
  #  label    => 'iTerm',
  #  action   => 'add',
  #  position => 10,
  #}

  dockutil::item { 'Add applications folder':
    item     => '/Applications',
    label    => 'Apps',
    action   => 'add',
    position => 11,
  }

  dockutil::item { 'Add documents folder':
    item     => '/Users/garetjax/Documents',
    label    => 'Docs',
    action   => 'add',
    position => 12,
  }

  dockutil::item { 'Add downloads folder':
    item     => '/Users/garetjax/Downloads',
    label    => 'Downloads',
    action   => 'add',
    position => 13,
  }
}
