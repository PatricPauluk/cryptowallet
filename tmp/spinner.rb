# frozen_string_literal: true
# require_relative "../lib/tty-spinner"
require 'tty-spinner'

# Teste de todos os spinners para terminal

TTY::Formats::FORMATS.each_key do |token|
  options = {format: token, hide_cursor: true}
  spinner = TTY::Spinner.new("#{token}: :spinner", options)
  20.times do
    spinner.spin
    sleep(0.1)
  end
  spinner.stop
end