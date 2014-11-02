
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
}
