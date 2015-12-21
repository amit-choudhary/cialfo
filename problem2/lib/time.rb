require 'time'
require_relative './comparable'

class Time

  def self.busy_slots(first_slots, second_slots)
    first_slots.each do |outer_slot|
      slots_to_be_removed = []
      second_slots.each_with_index do |inner_slot, index|
        if inner_slot[:start_time] == outer_slot[:start_time] && inner_slot[:end_time] == outer_slot[:end_time]
          slots_to_be_removed.push(inner_slot)
        elsif outer_slot[:start_time].in_midst?(inner_slot[:start_time], inner_slot[:end_time]) || outer_slot[:end_time].in_midst?(inner_slot[:start_time], inner_slot[:end_time]) || inner_slot[:start_time].in_midst?(outer_slot[:start_time], outer_slot[:end_time]) || inner_slot[:end_time].in_midst?(outer_slot[:start_time], outer_slot[:end_time])
          outer_slot[:start_time] = [outer_slot[:start_time], inner_slot[:start_time]].min
          outer_slot[:end_time] = [outer_slot[:end_time], inner_slot[:end_time]].max
          slots_to_be_removed.push(inner_slot)
        end
      end
      second_slots.reject! { |slot| slots_to_be_removed.include?(slot) }
    end

    (first_slots + second_slots).sort { |first_ele, second_ele| first_ele[:start_time] <=> second_ele[:start_time] }

  end

end
