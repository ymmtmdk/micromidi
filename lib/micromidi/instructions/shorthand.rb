#!/usr/bin/env ruby
#

module MicroMIDI
  
  alias l loop
 
  class << self
    alias_method :m, :message
  end
  
  class Context
    alias_method :r, :repeat
  end
  
  module Instructions    
        
    module Composite
      alias_method :p, :play
    end
    
    class Input
      alias_method :rc, :receive
      alias_method :rcu, :receive_unless
      alias_method :t, :thru
      alias_method :tu, :thru_unless
      alias_method :w, :wait_for_input      
    end
    
    class Message
      alias_method :c, :control_change
      alias_method :cc, :control_change
      alias_method :n, :note
      alias_method :no, :note_off
      alias_method :o, :off
      alias_method :pc, :program_change
    end
    
    class Output
      alias_method :out, :output
      alias_method :s, :output
    end
        
    class Sticky
      alias_method :ch, :channel
      alias_method :ss, :super_sticky
      alias_method :v, :velocity
    end

  end
end

def M(*a, &block)
  MIDI.message(*a, &block)  
end