require_relative '../lib/time'


google_slots = [
    {
        start_time: "2015-11-01T10:00:00.00+08:00",
        end_time: "2015-11-01T11:00:00.00+08:00"
    },
    {
        start_time: "2015-11-01T11:00:00.00+08:00",
        end_time: "2015-11-01T14:00:00.00+08:00"
    },
    {
        start_time: "2015-11-01T15:00:00.00+08:00",
        end_time: "2015-11-01T17:00:00.00+08:00"
    }
]

ical_slots = [
    {
        start_time: "2015-11-01T12:00:00.00+08:00",
        end_time: "2015-11-01T13:00:00.00+08:00"
    },
    {
        start_time: "2015-11-01T13:00:00.00+08:00",
        end_time: "2015-11-01T14:00:00.00+08:00"
    },
    {
        start_time: "2015-11-01T14:00:00.00+08:00",
        end_time: "2015-11-01T15:00:00.00+08:00"
    },
    {
        start_time: "2015-11-01T15:00:00.00+08:00",
        end_time: "2015-11-01T16:00:00.00+08:00"
    }
]

puts Time.busy_slots(google_slots, ical_slots)
