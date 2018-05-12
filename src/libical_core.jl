# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Libical/gen/../deps/usr/include/libical/ical.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function asctime(arg1)
    ccall((:asctime, libical), Cstring, (Ptr{Nothing},), arg1)
end

function clock()
    ccall((:clock, libical), clock_t, ())
end

function ctime(arg1)
    ccall((:ctime, libical), Cstring, (Ptr{time_t},), arg1)
end

function difftime(arg1::time_t, arg2::time_t)
    ccall((:difftime, libical), Cdouble, (time_t, time_t), arg1, arg2)
end

function getdate(arg1)
    ccall((:getdate, libical), Ptr{Nothing}, (Cstring,), arg1)
end

function gmtime(arg1)
    ccall((:gmtime, libical), Ptr{Nothing}, (Ptr{time_t},), arg1)
end

function localtime(arg1)
    ccall((:localtime, libical), Ptr{Nothing}, (Ptr{time_t},), arg1)
end

function mktime(arg1)
    ccall((:mktime, libical), time_t, (Ptr{Nothing},), arg1)
end

function strftime(arg1, arg2::Csize_t, arg3, arg4)
    ccall((:strftime, libical), Csize_t, (Cstring, Csize_t, Cstring, Ptr{Nothing}), arg1, arg2, arg3, arg4)
end

function strptime(arg1, arg2, arg3)
    ccall((:strptime, libical), Cstring, (Cstring, Cstring, Ptr{Nothing}), arg1, arg2, arg3)
end

function time(arg1)
    ccall((:time, libical), time_t, (Ptr{time_t},), arg1)
end

function tzset()
    ccall((:tzset, libical), Nothing, ())
end

function asctime_r(arg1, arg2)
    ccall((:asctime_r, libical), Cstring, (Ptr{Nothing}, Cstring), arg1, arg2)
end

function ctime_r(arg1, arg2)
    ccall((:ctime_r, libical), Cstring, (Ptr{time_t}, Cstring), arg1, arg2)
end

function gmtime_r(arg1, arg2)
    ccall((:gmtime_r, libical), Ptr{Nothing}, (Ptr{time_t}, Ptr{Nothing}), arg1, arg2)
end

function localtime_r(arg1, arg2)
    ccall((:localtime_r, libical), Ptr{Nothing}, (Ptr{time_t}, Ptr{Nothing}), arg1, arg2)
end

function posix2time(arg1::time_t)
    ccall((:posix2time, libical), time_t, (time_t,), arg1)
end

function tzsetwall()
    ccall((:tzsetwall, libical), Nothing, ())
end

function time2posix(arg1::time_t)
    ccall((:time2posix, libical), time_t, (time_t,), arg1)
end

function timelocal(arg1)
    ccall((:timelocal, libical), time_t, (Ptr{Nothing},), arg1)
end

function timegm(arg1)
    ccall((:timegm, libical), time_t, (Ptr{Nothing},), arg1)
end

function nanosleep(__rqtp, __rmtp)
    ccall((:nanosleep, libical), Cint, (Ptr{Nothing}, Ptr{Nothing}), __rqtp, __rmtp)
end

#=function clock_getres(__clock_id::clockid_t, __res)
    ccall((:clock_getres, libical), Cint, (clockid_t, Ptr{Nothing}), __clock_id, __res)
end

function clock_gettime(__clock_id::clockid_t, __tp)
    ccall((:clock_gettime, libical), Cint, (clockid_t, Ptr{Nothing}), __clock_id, __tp)
end

function clock_gettime_nsec_np(__clock_id::clockid_t)
    ccall((:clock_gettime_nsec_np, libical), __uint64_t, (clockid_t,), __clock_id)
end

function clock_settime(__clock_id::clockid_t, __tp)
    ccall((:clock_settime, libical), Cint, (clockid_t, Ptr{Nothing}), __clock_id, __tp)
end=#

function icaltime_null_time()
    ccall((:icaltime_null_time, libical), Nothing, ())
end

function icaltime_null_date()
    ccall((:icaltime_null_date, libical), Nothing, ())
end

function icaltime_current_time_with_zone(zone)
    ccall((:icaltime_current_time_with_zone, libical), Nothing, (Ptr{icaltimezone},), zone)
end

function icaltime_today()
    ccall((:icaltime_today, libical), Nothing, ())
end

function icaltime_from_timet_with_zone(tm::time_t, is_date::Cint, zone)
    ccall((:icaltime_from_timet_with_zone, libical), Nothing, (time_t, Cint, Ptr{icaltimezone}), tm, is_date, zone)
end

function icaltime_from_string(str)
    ccall((:icaltime_from_string, libical), Nothing, (Cstring,), str)
end

function icaltime_from_day_of_year(doy::Cint, year::Cint)
    ccall((:icaltime_from_day_of_year, libical), Nothing, (Cint, Cint), doy, year)
end

function icaltime_as_timet(arg1::Nothing)
    ccall((:icaltime_as_timet, libical), time_t, (Nothing,), arg1)
end

function icaltime_as_timet_with_zone(tt::Nothing, zone)
    ccall((:icaltime_as_timet_with_zone, libical), time_t, (Nothing, Ptr{icaltimezone}), tt, zone)
end

function icaltime_as_ical_string(tt::Nothing)
    ccall((:icaltime_as_ical_string, libical), Cstring, (Nothing,), tt)
end

function icaltime_as_ical_string_r(tt::Nothing)
    ccall((:icaltime_as_ical_string_r, libical), Cstring, (Nothing,), tt)
end

function icaltime_get_timezone(t::Nothing)
    ccall((:icaltime_get_timezone, libical), Ptr{icaltimezone}, (Nothing,), t)
end

function icaltime_get_tzid(t::Nothing)
    ccall((:icaltime_get_tzid, libical), Cstring, (Nothing,), t)
end

function icaltime_set_timezone(t, zone)
    ccall((:icaltime_set_timezone, libical), Nothing, (Ptr{Nothing}, Ptr{icaltimezone}), t, zone)
end

function icaltime_day_of_year(t::Nothing)
    ccall((:icaltime_day_of_year, libical), Cint, (Nothing,), t)
end

function icaltime_day_of_week(t::Nothing)
    ccall((:icaltime_day_of_week, libical), Cint, (Nothing,), t)
end

function icaltime_start_doy_week(t::Nothing, fdow::Cint)
    ccall((:icaltime_start_doy_week, libical), Cint, (Nothing, Cint), t, fdow)
end

function icaltime_week_number(t::Nothing)
    ccall((:icaltime_week_number, libical), Cint, (Nothing,), t)
end

function icaltime_is_null_time(t::Nothing)
    ccall((:icaltime_is_null_time, libical), Cint, (Nothing,), t)
end

function icaltime_is_valid_time(t::Nothing)
    ccall((:icaltime_is_valid_time, libical), Cint, (Nothing,), t)
end

function icaltime_is_date(t::Nothing)
    ccall((:icaltime_is_date, libical), Cint, (Nothing,), t)
end

function icaltime_is_utc(t::Nothing)
    ccall((:icaltime_is_utc, libical), Cint, (Nothing,), t)
end

function icaltime_compare(a::Nothing, b::Nothing)
    ccall((:icaltime_compare, libical), Cint, (Nothing, Nothing), a, b)
end

function icaltime_compare_date_only(a::Nothing, b::Nothing)
    ccall((:icaltime_compare_date_only, libical), Cint, (Nothing, Nothing), a, b)
end

function icaltime_compare_date_only_tz(a::Nothing, b::Nothing, tz)
    ccall((:icaltime_compare_date_only_tz, libical), Cint, (Nothing, Nothing, Ptr{icaltimezone}), a, b, tz)
end

function icaltime_adjust(tt, days::Cint, hours::Cint, minutes::Cint, seconds::Cint)
    ccall((:icaltime_adjust, libical), Nothing, (Ptr{Nothing}, Cint, Cint, Cint, Cint), tt, days, hours, minutes, seconds)
end

function icaltime_normalize(t::Nothing)
    ccall((:icaltime_normalize, libical), Nothing, (Nothing,), t)
end

function icaltime_convert_to_zone(tt::Nothing, zone)
    ccall((:icaltime_convert_to_zone, libical), Nothing, (Nothing, Ptr{icaltimezone}), tt, zone)
end

function icaltime_days_in_month(month::Cint, year::Cint)
    ccall((:icaltime_days_in_month, libical), Cint, (Cint, Cint), month, year)
end

function icaltime_is_leap_year(year::Cint)
    ccall((:icaltime_is_leap_year, libical), Cint, (Cint,), year)
end

function icaltime_days_in_year(year::Cint)
    ccall((:icaltime_days_in_year, libical), Cint, (Cint,), year)
end

function icaltime_span_new(dtstart::Nothing, dtend::Nothing, is_busy::Cint)
    ccall((:icaltime_span_new, libical), Nothing, (Nothing, Nothing, Cint), dtstart, dtend, is_busy)
end

function icaltime_span_overlaps(s1, s2)
    ccall((:icaltime_span_overlaps, libical), Cint, (Ptr{icaltime_span}, Ptr{icaltime_span}), s1, s2)
end

function icaltime_span_contains(s, container)
    ccall((:icaltime_span_contains, libical), Cint, (Ptr{icaltime_span}, Ptr{icaltime_span}), s, container)
end

function icaldurationtype_from_int(t::Cint)
    ccall((:icaldurationtype_from_int, libical), Nothing, (Cint,), t)
end

function icaldurationtype_from_string(dur)
    ccall((:icaldurationtype_from_string, libical), Nothing, (Cstring,), dur)
end

function icaldurationtype_as_int(duration::Nothing)
    ccall((:icaldurationtype_as_int, libical), Cint, (Nothing,), duration)
end

function icaldurationtype_as_ical_string(d::Nothing)
    ccall((:icaldurationtype_as_ical_string, libical), Cstring, (Nothing,), d)
end

function icaldurationtype_as_ical_string_r(d::Nothing)
    ccall((:icaldurationtype_as_ical_string_r, libical), Cstring, (Nothing,), d)
end

function icaldurationtype_null_duration()
    ccall((:icaldurationtype_null_duration, libical), Nothing, ())
end

function icaldurationtype_bad_duration()
    ccall((:icaldurationtype_bad_duration, libical), Nothing, ())
end

function icaldurationtype_is_null_duration(d::Nothing)
    ccall((:icaldurationtype_is_null_duration, libical), Cint, (Nothing,), d)
end

function icaldurationtype_is_bad_duration(d::Nothing)
    ccall((:icaldurationtype_is_bad_duration, libical), Cint, (Nothing,), d)
end

function icaltime_add(t::Nothing, d::Nothing)
    ccall((:icaltime_add, libical), Nothing, (Nothing, Nothing), t, d)
end

function icaltime_subtract(t1::Nothing, t2::Nothing)
    ccall((:icaltime_subtract, libical), Nothing, (Nothing, Nothing), t1, t2)
end

function icalperiodtype_from_string(str)
    ccall((:icalperiodtype_from_string, libical), Nothing, (Cstring,), str)
end

function icalperiodtype_as_ical_string(p::Nothing)
    ccall((:icalperiodtype_as_ical_string, libical), Cstring, (Nothing,), p)
end

function icalperiodtype_as_ical_string_r(p::Nothing)
    ccall((:icalperiodtype_as_ical_string_r, libical), Cstring, (Nothing,), p)
end

function icalperiodtype_null_period()
    ccall((:icalperiodtype_null_period, libical), Nothing, ())
end

function icalperiodtype_is_null_period(p::Nothing)
    ccall((:icalperiodtype_is_null_period, libical), Cint, (Nothing,), p)
end

function icalperiodtype_is_valid_period(p::Nothing)
    ccall((:icalperiodtype_is_valid_period, libical), Cint, (Nothing,), p)
end

function icalenum_reqstat_desc(stat::icalrequeststatus)
    ccall((:icalenum_reqstat_desc, libical), Cstring, (icalrequeststatus,), stat)
end

function icalenum_reqstat_major(stat::icalrequeststatus)
    ccall((:icalenum_reqstat_major, libical), Int16, (icalrequeststatus,), stat)
end

function icalenum_reqstat_minor(stat::icalrequeststatus)
    ccall((:icalenum_reqstat_minor, libical), Int16, (icalrequeststatus,), stat)
end

function icalenum_num_to_reqstat(major::Int16, minor::Int16)
    ccall((:icalenum_num_to_reqstat, libical), icalrequeststatus, (Int16, Int16), major, minor)
end

function icalenum_reqstat_code(stat::icalrequeststatus)
    ccall((:icalenum_reqstat_code, libical), Cstring, (icalrequeststatus,), stat)
end

function icalenum_reqstat_code_r(stat::icalrequeststatus)
    ccall((:icalenum_reqstat_code_r, libical), Cstring, (icalrequeststatus,), stat)
end

function icaltriggertype_from_int(reltime::Cint)
    ccall((:icaltriggertype_from_int, libical), Nothing, (Cint,), reltime)
end

function icaltriggertype_from_string(str)
    ccall((:icaltriggertype_from_string, libical), Nothing, (Cstring,), str)
end

function icaltriggertype_is_null_trigger(tr::Nothing)
    ccall((:icaltriggertype_is_null_trigger, libical), Cint, (Nothing,), tr)
end

function icaltriggertype_is_bad_trigger(tr::Nothing)
    ccall((:icaltriggertype_is_bad_trigger, libical), Cint, (Nothing,), tr)
end

function icalreqstattype_from_string(str)
    ccall((:icalreqstattype_from_string, libical), Nothing, (Cstring,), str)
end

function icalreqstattype_as_string(arg1::Nothing)
    ccall((:icalreqstattype_as_string, libical), Cstring, (Nothing,), arg1)
end

function icalreqstattype_as_string_r(arg1::Nothing)
    ccall((:icalreqstattype_as_string_r, libical), Cstring, (Nothing,), arg1)
end

function ical_get_unknown_token_handling_setting()
    ccall((:ical_get_unknown_token_handling_setting, libical), ical_unknown_token_handling, ())
end

function ical_set_unknown_token_handling_setting(newSetting::ical_unknown_token_handling)
    ccall((:ical_set_unknown_token_handling_setting, libical), Nothing, (ical_unknown_token_handling,), newSetting)
end

function icalarray_new(element_size::Csize_t, increment_size::Csize_t)
    ccall((:icalarray_new, libical), Ptr{icalarray}, (Csize_t, Csize_t), element_size, increment_size)
end

function icalarray_copy(array)
    ccall((:icalarray_copy, libical), Ptr{icalarray}, (Ptr{icalarray},), array)
end

function icalarray_free(array)
    ccall((:icalarray_free, libical), Nothing, (Ptr{icalarray},), array)
end

function icalarray_append(array, element)
    ccall((:icalarray_append, libical), Nothing, (Ptr{icalarray}, Ptr{Nothing}), array, element)
end

function icalarray_remove_element_at(array, position::Csize_t)
    ccall((:icalarray_remove_element_at, libical), Nothing, (Ptr{icalarray}, Csize_t), array, position)
end

function icalarray_element_at(array, position::Csize_t)
    ccall((:icalarray_element_at, libical), Ptr{Nothing}, (Ptr{icalarray}, Csize_t), array, position)
end

function icalarray_sort(array, compare)
    ccall((:icalarray_sort, libical), Nothing, (Ptr{icalarray}, Ptr{Nothing}), array, compare)
end

function icalrecur_string_to_freq(str)
    ccall((:icalrecur_string_to_freq, libical), icalrecurrencetype_frequency, (Cstring,), str)
end

function icalrecur_freq_to_string(kind::icalrecurrencetype_frequency)
    ccall((:icalrecur_freq_to_string, libical), Cstring, (icalrecurrencetype_frequency,), kind)
end

function icalrecur_string_to_skip(str)
    ccall((:icalrecur_string_to_skip, libical), icalrecurrencetype_skip, (Cstring,), str)
end

function icalrecur_skip_to_string(kind::icalrecurrencetype_skip)
    ccall((:icalrecur_skip_to_string, libical), Cstring, (icalrecurrencetype_skip,), kind)
end

function icalrecur_weekday_to_string(kind::icalrecurrencetype_weekday)
    ccall((:icalrecur_weekday_to_string, libical), Cstring, (icalrecurrencetype_weekday,), kind)
end

function icalrecur_string_to_weekday(str)
    ccall((:icalrecur_string_to_weekday, libical), icalrecurrencetype_weekday, (Cstring,), str)
end

function icalrecurrencetype_rscale_is_supported()
    ccall((:icalrecurrencetype_rscale_is_supported, libical), Cint, ())
end

function icalrecurrencetype_rscale_supported_calendars()
    ccall((:icalrecurrencetype_rscale_supported_calendars, libical), Ptr{icalarray}, ())
end

function icalrecurrencetype_clear(r)
    ccall((:icalrecurrencetype_clear, libical), Nothing, (Ptr{Nothing},), r)
end

function icalrecurrencetype_day_day_of_week(day::Int16)
    ccall((:icalrecurrencetype_day_day_of_week, libical), Nothing, (Int16,), day)
end

function icalrecurrencetype_day_position(day::Int16)
    ccall((:icalrecurrencetype_day_position, libical), Cint, (Int16,), day)
end

function icalrecurrencetype_month_is_leap(month::Int16)
    ccall((:icalrecurrencetype_month_is_leap, libical), Cint, (Int16,), month)
end

function icalrecurrencetype_month_month(month::Int16)
    ccall((:icalrecurrencetype_month_month, libical), Cint, (Int16,), month)
end

function icalrecurrencetype_from_string(str)
    ccall((:icalrecurrencetype_from_string, libical), Nothing, (Cstring,), str)
end

function icalrecurrencetype_as_string(recur)
    ccall((:icalrecurrencetype_as_string, libical), Cstring, (Ptr{Nothing},), recur)
end

function icalrecurrencetype_as_string_r(recur)
    ccall((:icalrecurrencetype_as_string_r, libical), Cstring, (Ptr{Nothing},), recur)
end

function icalrecur_iterator_new(rule::Nothing, dtstart::Nothing)
    ccall((:icalrecur_iterator_new, libical), Ptr{icalrecur_iterator}, (Nothing, Nothing), rule, dtstart)
end

function icalrecur_iterator_set_start(impl, start::Nothing)
    ccall((:icalrecur_iterator_set_start, libical), Cint, (Ptr{icalrecur_iterator}, Nothing), impl, start)
end

function icalrecur_iterator_next(arg1)
    ccall((:icalrecur_iterator_next, libical), Nothing, (Ptr{icalrecur_iterator},), arg1)
end

function icalrecur_iterator_free(arg1)
    ccall((:icalrecur_iterator_free, libical), Nothing, (Ptr{icalrecur_iterator},), arg1)
end

function icalrecur_expand_recurrence(rule, start::time_t, count::Cint, array)
    ccall((:icalrecur_expand_recurrence, libical), Cint, (Cstring, time_t, Cint, Ptr{time_t}), rule, start, count, array)
end

function icalattach_new_from_url(url)
    ccall((:icalattach_new_from_url, libical), Ptr{icalattach}, (Cstring,), url)
end

function icalattach_new_from_data(data, free_fn::icalattach_free_fn_t, free_fn_data)
    ccall((:icalattach_new_from_data, libical), Ptr{icalattach}, (Cstring, icalattach_free_fn_t, Ptr{Nothing}), data, free_fn, free_fn_data)
end

function icalattach_ref(attach)
    ccall((:icalattach_ref, libical), Nothing, (Ptr{icalattach},), attach)
end

function icalattach_unref(attach)
    ccall((:icalattach_unref, libical), Nothing, (Ptr{icalattach},), attach)
end

function icalattach_get_is_url(attach)
    ccall((:icalattach_get_is_url, libical), Cint, (Ptr{icalattach},), attach)
end

function icalattach_get_url(attach)
    ccall((:icalattach_get_url, libical), Cstring, (Ptr{icalattach},), attach)
end

function icalattach_get_data(attach)
    ccall((:icalattach_get_data, libical), Ptr{Cuchar}, (Ptr{icalattach},), attach)
end

function icalvalue_set_x(value, v)
    ccall((:icalvalue_set_x, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_new_x(v)
    ccall((:icalvalue_new_x, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_get_x(value)
    ccall((:icalvalue_get_x, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_new_recur(v::Nothing)
    ccall((:icalvalue_new_recur, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_set_recur(value, v::Nothing)
    ccall((:icalvalue_set_recur, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_get_recur(value)
    ccall((:icalvalue_get_recur, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_new_trigger(v::Nothing)
    ccall((:icalvalue_new_trigger, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_set_trigger(value, v::Nothing)
    ccall((:icalvalue_set_trigger, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_get_trigger(value)
    ccall((:icalvalue_get_trigger, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_new_date(v::Nothing)
    ccall((:icalvalue_new_date, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_date(value)
    ccall((:icalvalue_get_date, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_date(value, v::Nothing)
    ccall((:icalvalue_set_date, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_datetime(v::Nothing)
    ccall((:icalvalue_new_datetime, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_datetime(value)
    ccall((:icalvalue_get_datetime, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_datetime(value, v::Nothing)
    ccall((:icalvalue_set_datetime, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_datetimedate(v::Nothing)
    ccall((:icalvalue_new_datetimedate, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_datetimedate(value)
    ccall((:icalvalue_get_datetimedate, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_datetimedate(value, v::Nothing)
    ccall((:icalvalue_set_datetimedate, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_datetimeperiod(v::Nothing)
    ccall((:icalvalue_new_datetimeperiod, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_set_datetimeperiod(value, v::Nothing)
    ccall((:icalvalue_set_datetimeperiod, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_get_datetimeperiod(value)
    ccall((:icalvalue_get_datetimeperiod, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_new_geo(v::Nothing)
    ccall((:icalvalue_new_geo, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_geo(value)
    ccall((:icalvalue_get_geo, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_geo(value, v::Nothing)
    ccall((:icalvalue_set_geo, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_attach(attach)
    ccall((:icalvalue_new_attach, libical), Ptr{icalvalue}, (Ptr{icalattach},), attach)
end

function icalvalue_set_attach(value, attach)
    ccall((:icalvalue_set_attach, libical), Nothing, (Ptr{icalvalue}, Ptr{icalattach}), value, attach)
end

function icalvalue_get_attach(value)
    ccall((:icalvalue_get_attach, libical), Ptr{icalattach}, (Ptr{icalvalue},), value)
end

function icalvalue_new_binary(v)
    ccall((:icalvalue_new_binary, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_set_binary(value, v)
    ccall((:icalvalue_set_binary, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_get_binary(value)
    ccall((:icalvalue_get_binary, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_reset_kind(value)
    ccall((:icalvalue_reset_kind, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_new_action(v::Nothing)
    ccall((:icalvalue_new_action, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_action(value)
    ccall((:icalvalue_get_action, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_action(value, v::Nothing)
    ccall((:icalvalue_set_action, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_boolean(v::Cint)
    ccall((:icalvalue_new_boolean, libical), Ptr{icalvalue}, (Cint,), v)
end

function icalvalue_get_boolean(value)
    ccall((:icalvalue_get_boolean, libical), Cint, (Ptr{icalvalue},), value)
end

function icalvalue_set_boolean(value, v::Cint)
    ccall((:icalvalue_set_boolean, libical), Nothing, (Ptr{icalvalue}, Cint), value, v)
end

function icalvalue_new_busytype(v::Nothing)
    ccall((:icalvalue_new_busytype, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_busytype(value)
    ccall((:icalvalue_get_busytype, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_busytype(value, v::Nothing)
    ccall((:icalvalue_set_busytype, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_caladdress(v)
    ccall((:icalvalue_new_caladdress, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_get_caladdress(value)
    ccall((:icalvalue_get_caladdress, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_set_caladdress(value, v)
    ccall((:icalvalue_set_caladdress, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_new_carlevel(v::Nothing)
    ccall((:icalvalue_new_carlevel, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_carlevel(value)
    ccall((:icalvalue_get_carlevel, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_carlevel(value, v::Nothing)
    ccall((:icalvalue_set_carlevel, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_cmd(v::Nothing)
    ccall((:icalvalue_new_cmd, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_cmd(value)
    ccall((:icalvalue_get_cmd, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_cmd(value, v::Nothing)
    ccall((:icalvalue_set_cmd, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_duration(v::Nothing)
    ccall((:icalvalue_new_duration, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_duration(value)
    ccall((:icalvalue_get_duration, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_duration(value, v::Nothing)
    ccall((:icalvalue_set_duration, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_float(v::Cfloat)
    ccall((:icalvalue_new_float, libical), Ptr{icalvalue}, (Cfloat,), v)
end

function icalvalue_get_float(value)
    ccall((:icalvalue_get_float, libical), Cfloat, (Ptr{icalvalue},), value)
end

function icalvalue_set_float(value, v::Cfloat)
    ccall((:icalvalue_set_float, libical), Nothing, (Ptr{icalvalue}, Cfloat), value, v)
end

function icalvalue_new_integer(v::Cint)
    ccall((:icalvalue_new_integer, libical), Ptr{icalvalue}, (Cint,), v)
end

function icalvalue_get_integer(value)
    ccall((:icalvalue_get_integer, libical), Cint, (Ptr{icalvalue},), value)
end

function icalvalue_set_integer(value, v::Cint)
    ccall((:icalvalue_set_integer, libical), Nothing, (Ptr{icalvalue}, Cint), value, v)
end

function icalvalue_new_method(v::Nothing)
    ccall((:icalvalue_new_method, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_method(value)
    ccall((:icalvalue_get_method, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_method(value, v::Nothing)
    ccall((:icalvalue_set_method, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_period(v::Nothing)
    ccall((:icalvalue_new_period, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_period(value)
    ccall((:icalvalue_get_period, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_period(value, v::Nothing)
    ccall((:icalvalue_set_period, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_pollcompletion(v::Nothing)
    ccall((:icalvalue_new_pollcompletion, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_pollcompletion(value)
    ccall((:icalvalue_get_pollcompletion, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_pollcompletion(value, v::Nothing)
    ccall((:icalvalue_set_pollcompletion, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_pollmode(v::Nothing)
    ccall((:icalvalue_new_pollmode, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_pollmode(value)
    ccall((:icalvalue_get_pollmode, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_pollmode(value, v::Nothing)
    ccall((:icalvalue_set_pollmode, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_query(v)
    ccall((:icalvalue_new_query, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_get_query(value)
    ccall((:icalvalue_get_query, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_set_query(value, v)
    ccall((:icalvalue_set_query, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_new_querylevel(v::Nothing)
    ccall((:icalvalue_new_querylevel, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_querylevel(value)
    ccall((:icalvalue_get_querylevel, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_querylevel(value, v::Nothing)
    ccall((:icalvalue_set_querylevel, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_requeststatus(v::Nothing)
    ccall((:icalvalue_new_requeststatus, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_requeststatus(value)
    ccall((:icalvalue_get_requeststatus, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_requeststatus(value, v::Nothing)
    ccall((:icalvalue_set_requeststatus, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_status(v::Nothing)
    ccall((:icalvalue_new_status, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_status(value)
    ccall((:icalvalue_get_status, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_status(value, v::Nothing)
    ccall((:icalvalue_set_status, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_string(v)
    ccall((:icalvalue_new_string, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_get_string(value)
    ccall((:icalvalue_get_string, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_set_string(value, v)
    ccall((:icalvalue_set_string, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_new_taskmode(v::Nothing)
    ccall((:icalvalue_new_taskmode, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_taskmode(value)
    ccall((:icalvalue_get_taskmode, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_taskmode(value, v::Nothing)
    ccall((:icalvalue_set_taskmode, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_text(v)
    ccall((:icalvalue_new_text, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_get_text(value)
    ccall((:icalvalue_get_text, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_set_text(value, v)
    ccall((:icalvalue_set_text, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_new_transp(v::Nothing)
    ccall((:icalvalue_new_transp, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_transp(value)
    ccall((:icalvalue_get_transp, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_transp(value, v::Nothing)
    ccall((:icalvalue_set_transp, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_uri(v)
    ccall((:icalvalue_new_uri, libical), Ptr{icalvalue}, (Cstring,), v)
end

function icalvalue_get_uri(value)
    ccall((:icalvalue_get_uri, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_set_uri(value, v)
    ccall((:icalvalue_set_uri, libical), Nothing, (Ptr{icalvalue}, Cstring), value, v)
end

function icalvalue_new_utcoffset(v::Cint)
    ccall((:icalvalue_new_utcoffset, libical), Ptr{icalvalue}, (Cint,), v)
end

function icalvalue_get_utcoffset(value)
    ccall((:icalvalue_get_utcoffset, libical), Cint, (Ptr{icalvalue},), value)
end

function icalvalue_set_utcoffset(value, v::Cint)
    ccall((:icalvalue_set_utcoffset, libical), Nothing, (Ptr{icalvalue}, Cint), value, v)
end

function icalvalue_new_xlicclass(v::Nothing)
    ccall((:icalvalue_new_xlicclass, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_xlicclass(value)
    ccall((:icalvalue_get_xlicclass, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_xlicclass(value, v::Nothing)
    ccall((:icalvalue_set_xlicclass, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalvalue_new_class(v::Nothing)
    ccall((:icalvalue_new_class, libical), Ptr{icalvalue}, (Nothing,), v)
end

function icalvalue_get_class(value)
    ccall((:icalvalue_get_class, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_set_class(value, v::Nothing)
    ccall((:icalvalue_set_class, libical), Nothing, (Ptr{icalvalue}, Nothing), value, v)
end

function icalparameter_enum_to_string(e::Cint)
    ccall((:icalparameter_enum_to_string, libical), Cstring, (Cint,), e)
end

function icalparameter_string_to_enum(str)
    ccall((:icalparameter_string_to_enum, libical), Cint, (Cstring,), str)
end

function icalparameter_new_actionparam(v::icalparameter_action)
    ccall((:icalparameter_new_actionparam, libical), Ptr{icalparameter}, (icalparameter_action,), v)
end

function icalparameter_get_actionparam(value)
    ccall((:icalparameter_get_actionparam, libical), icalparameter_action, (Ptr{icalparameter},), value)
end

function icalparameter_set_actionparam(value, v::icalparameter_action)
    ccall((:icalparameter_set_actionparam, libical), Nothing, (Ptr{icalparameter}, icalparameter_action), value, v)
end

function icalparameter_new_altrep(v)
    ccall((:icalparameter_new_altrep, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_altrep(value)
    ccall((:icalparameter_get_altrep, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_altrep(value, v)
    ccall((:icalparameter_set_altrep, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_charset(v)
    ccall((:icalparameter_new_charset, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_charset(value)
    ccall((:icalparameter_get_charset, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_charset(value, v)
    ccall((:icalparameter_set_charset, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_cn(v)
    ccall((:icalparameter_new_cn, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_cn(value)
    ccall((:icalparameter_get_cn, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_cn(value, v)
    ccall((:icalparameter_set_cn, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_cutype(v::icalparameter_cutype)
    ccall((:icalparameter_new_cutype, libical), Ptr{icalparameter}, (icalparameter_cutype,), v)
end

function icalparameter_get_cutype(value)
    ccall((:icalparameter_get_cutype, libical), icalparameter_cutype, (Ptr{icalparameter},), value)
end

function icalparameter_set_cutype(value, v::icalparameter_cutype)
    ccall((:icalparameter_set_cutype, libical), Nothing, (Ptr{icalparameter}, icalparameter_cutype), value, v)
end

function icalparameter_new_delegatedfrom(v)
    ccall((:icalparameter_new_delegatedfrom, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_delegatedfrom(value)
    ccall((:icalparameter_get_delegatedfrom, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_delegatedfrom(value, v)
    ccall((:icalparameter_set_delegatedfrom, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_delegatedto(v)
    ccall((:icalparameter_new_delegatedto, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_delegatedto(value)
    ccall((:icalparameter_get_delegatedto, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_delegatedto(value, v)
    ccall((:icalparameter_set_delegatedto, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_dir(v)
    ccall((:icalparameter_new_dir, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_dir(value)
    ccall((:icalparameter_get_dir, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_dir(value, v)
    ccall((:icalparameter_set_dir, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_display(v::icalparameter_display)
    ccall((:icalparameter_new_display, libical), Ptr{icalparameter}, (icalparameter_display,), v)
end

function icalparameter_get_display(value)
    ccall((:icalparameter_get_display, libical), icalparameter_display, (Ptr{icalparameter},), value)
end

function icalparameter_set_display(value, v::icalparameter_display)
    ccall((:icalparameter_set_display, libical), Nothing, (Ptr{icalparameter}, icalparameter_display), value, v)
end

function icalparameter_new_email(v)
    ccall((:icalparameter_new_email, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_email(value)
    ccall((:icalparameter_get_email, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_email(value, v)
    ccall((:icalparameter_set_email, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_enable(v::icalparameter_enable)
    ccall((:icalparameter_new_enable, libical), Ptr{icalparameter}, (icalparameter_enable,), v)
end

function icalparameter_get_enable(value)
    ccall((:icalparameter_get_enable, libical), icalparameter_enable, (Ptr{icalparameter},), value)
end

function icalparameter_set_enable(value, v::icalparameter_enable)
    ccall((:icalparameter_set_enable, libical), Nothing, (Ptr{icalparameter}, icalparameter_enable), value, v)
end

function icalparameter_new_encoding(v::icalparameter_encoding)
    ccall((:icalparameter_new_encoding, libical), Ptr{icalparameter}, (icalparameter_encoding,), v)
end

function icalparameter_get_encoding(value)
    ccall((:icalparameter_get_encoding, libical), icalparameter_encoding, (Ptr{icalparameter},), value)
end

function icalparameter_set_encoding(value, v::icalparameter_encoding)
    ccall((:icalparameter_set_encoding, libical), Nothing, (Ptr{icalparameter}, icalparameter_encoding), value, v)
end

function icalparameter_new_fbtype(v::icalparameter_fbtype)
    ccall((:icalparameter_new_fbtype, libical), Ptr{icalparameter}, (icalparameter_fbtype,), v)
end

function icalparameter_get_fbtype(value)
    ccall((:icalparameter_get_fbtype, libical), icalparameter_fbtype, (Ptr{icalparameter},), value)
end

function icalparameter_set_fbtype(value, v::icalparameter_fbtype)
    ccall((:icalparameter_set_fbtype, libical), Nothing, (Ptr{icalparameter}, icalparameter_fbtype), value, v)
end

function icalparameter_new_feature(v::icalparameter_feature)
    ccall((:icalparameter_new_feature, libical), Ptr{icalparameter}, (icalparameter_feature,), v)
end

function icalparameter_get_feature(value)
    ccall((:icalparameter_get_feature, libical), icalparameter_feature, (Ptr{icalparameter},), value)
end

function icalparameter_set_feature(value, v::icalparameter_feature)
    ccall((:icalparameter_set_feature, libical), Nothing, (Ptr{icalparameter}, icalparameter_feature), value, v)
end

function icalparameter_new_filename(v)
    ccall((:icalparameter_new_filename, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_filename(value)
    ccall((:icalparameter_get_filename, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_filename(value, v)
    ccall((:icalparameter_set_filename, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_fmttype(v)
    ccall((:icalparameter_new_fmttype, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_fmttype(value)
    ccall((:icalparameter_get_fmttype, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_fmttype(value, v)
    ccall((:icalparameter_set_fmttype, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_iana(v)
    ccall((:icalparameter_new_iana, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_iana(value)
    ccall((:icalparameter_get_iana, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_iana(value, v)
    ccall((:icalparameter_set_iana, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_id(v)
    ccall((:icalparameter_new_id, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_id(value)
    ccall((:icalparameter_get_id, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_id(value, v)
    ccall((:icalparameter_set_id, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_label(v)
    ccall((:icalparameter_new_label, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_label(value)
    ccall((:icalparameter_get_label, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_label(value, v)
    ccall((:icalparameter_set_label, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_language(v)
    ccall((:icalparameter_new_language, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_language(value)
    ccall((:icalparameter_get_language, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_language(value, v)
    ccall((:icalparameter_set_language, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_latency(v)
    ccall((:icalparameter_new_latency, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_latency(value)
    ccall((:icalparameter_get_latency, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_latency(value, v)
    ccall((:icalparameter_set_latency, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_local(v::icalparameter_local)
    ccall((:icalparameter_new_local, libical), Ptr{icalparameter}, (icalparameter_local,), v)
end

function icalparameter_get_local(value)
    ccall((:icalparameter_get_local, libical), icalparameter_local, (Ptr{icalparameter},), value)
end

function icalparameter_set_local(value, v::icalparameter_local)
    ccall((:icalparameter_set_local, libical), Nothing, (Ptr{icalparameter}, icalparameter_local), value, v)
end

function icalparameter_new_localize(v)
    ccall((:icalparameter_new_localize, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_localize(value)
    ccall((:icalparameter_get_localize, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_localize(value, v)
    ccall((:icalparameter_set_localize, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_managedid(v)
    ccall((:icalparameter_new_managedid, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_managedid(value)
    ccall((:icalparameter_get_managedid, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_managedid(value, v)
    ccall((:icalparameter_set_managedid, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_member(v)
    ccall((:icalparameter_new_member, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_member(value)
    ccall((:icalparameter_get_member, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_member(value, v)
    ccall((:icalparameter_set_member, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_modified(v)
    ccall((:icalparameter_new_modified, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_modified(value)
    ccall((:icalparameter_get_modified, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_modified(value, v)
    ccall((:icalparameter_set_modified, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_options(v)
    ccall((:icalparameter_new_options, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_options(value)
    ccall((:icalparameter_get_options, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_options(value, v)
    ccall((:icalparameter_set_options, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_partstat(v::icalparameter_partstat)
    ccall((:icalparameter_new_partstat, libical), Ptr{icalparameter}, (icalparameter_partstat,), v)
end

function icalparameter_get_partstat(value)
    ccall((:icalparameter_get_partstat, libical), icalparameter_partstat, (Ptr{icalparameter},), value)
end

function icalparameter_set_partstat(value, v::icalparameter_partstat)
    ccall((:icalparameter_set_partstat, libical), Nothing, (Ptr{icalparameter}, icalparameter_partstat), value, v)
end

function icalparameter_new_patchaction(v::icalparameter_patchaction)
    ccall((:icalparameter_new_patchaction, libical), Ptr{icalparameter}, (icalparameter_patchaction,), v)
end

function icalparameter_get_patchaction(value)
    ccall((:icalparameter_get_patchaction, libical), icalparameter_patchaction, (Ptr{icalparameter},), value)
end

function icalparameter_set_patchaction(value, v::icalparameter_patchaction)
    ccall((:icalparameter_set_patchaction, libical), Nothing, (Ptr{icalparameter}, icalparameter_patchaction), value, v)
end

function icalparameter_new_publiccomment(v)
    ccall((:icalparameter_new_publiccomment, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_publiccomment(value)
    ccall((:icalparameter_get_publiccomment, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_publiccomment(value, v)
    ccall((:icalparameter_set_publiccomment, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_range(v::icalparameter_range)
    ccall((:icalparameter_new_range, libical), Ptr{icalparameter}, (icalparameter_range,), v)
end

function icalparameter_get_range(value)
    ccall((:icalparameter_get_range, libical), icalparameter_range, (Ptr{icalparameter},), value)
end

function icalparameter_set_range(value, v::icalparameter_range)
    ccall((:icalparameter_set_range, libical), Nothing, (Ptr{icalparameter}, icalparameter_range), value, v)
end

function icalparameter_new_reason(v)
    ccall((:icalparameter_new_reason, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_reason(value)
    ccall((:icalparameter_get_reason, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_reason(value, v)
    ccall((:icalparameter_set_reason, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_related(v::icalparameter_related)
    ccall((:icalparameter_new_related, libical), Ptr{icalparameter}, (icalparameter_related,), v)
end

function icalparameter_get_related(value)
    ccall((:icalparameter_get_related, libical), icalparameter_related, (Ptr{icalparameter},), value)
end

function icalparameter_set_related(value, v::icalparameter_related)
    ccall((:icalparameter_set_related, libical), Nothing, (Ptr{icalparameter}, icalparameter_related), value, v)
end

function icalparameter_new_reltype(v::icalparameter_reltype)
    ccall((:icalparameter_new_reltype, libical), Ptr{icalparameter}, (icalparameter_reltype,), v)
end

function icalparameter_get_reltype(value)
    ccall((:icalparameter_get_reltype, libical), icalparameter_reltype, (Ptr{icalparameter},), value)
end

function icalparameter_set_reltype(value, v::icalparameter_reltype)
    ccall((:icalparameter_set_reltype, libical), Nothing, (Ptr{icalparameter}, icalparameter_reltype), value, v)
end

function icalparameter_new_required(v::icalparameter_required)
    ccall((:icalparameter_new_required, libical), Ptr{icalparameter}, (icalparameter_required,), v)
end

function icalparameter_get_required(value)
    ccall((:icalparameter_get_required, libical), icalparameter_required, (Ptr{icalparameter},), value)
end

function icalparameter_set_required(value, v::icalparameter_required)
    ccall((:icalparameter_set_required, libical), Nothing, (Ptr{icalparameter}, icalparameter_required), value, v)
end

function icalparameter_new_response(v::Cint)
    ccall((:icalparameter_new_response, libical), Ptr{icalparameter}, (Cint,), v)
end

function icalparameter_get_response(value)
    ccall((:icalparameter_get_response, libical), Cint, (Ptr{icalparameter},), value)
end

function icalparameter_set_response(value, v::Cint)
    ccall((:icalparameter_set_response, libical), Nothing, (Ptr{icalparameter}, Cint), value, v)
end

function icalparameter_new_role(v::icalparameter_role)
    ccall((:icalparameter_new_role, libical), Ptr{icalparameter}, (icalparameter_role,), v)
end

function icalparameter_get_role(value)
    ccall((:icalparameter_get_role, libical), icalparameter_role, (Ptr{icalparameter},), value)
end

function icalparameter_set_role(value, v::icalparameter_role)
    ccall((:icalparameter_set_role, libical), Nothing, (Ptr{icalparameter}, icalparameter_role), value, v)
end

function icalparameter_new_rsvp(v::icalparameter_rsvp)
    ccall((:icalparameter_new_rsvp, libical), Ptr{icalparameter}, (icalparameter_rsvp,), v)
end

function icalparameter_get_rsvp(value)
    ccall((:icalparameter_get_rsvp, libical), icalparameter_rsvp, (Ptr{icalparameter},), value)
end

function icalparameter_set_rsvp(value, v::icalparameter_rsvp)
    ccall((:icalparameter_set_rsvp, libical), Nothing, (Ptr{icalparameter}, icalparameter_rsvp), value, v)
end

function icalparameter_new_scheduleagent(v::icalparameter_scheduleagent)
    ccall((:icalparameter_new_scheduleagent, libical), Ptr{icalparameter}, (icalparameter_scheduleagent,), v)
end

function icalparameter_get_scheduleagent(value)
    ccall((:icalparameter_get_scheduleagent, libical), icalparameter_scheduleagent, (Ptr{icalparameter},), value)
end

function icalparameter_set_scheduleagent(value, v::icalparameter_scheduleagent)
    ccall((:icalparameter_set_scheduleagent, libical), Nothing, (Ptr{icalparameter}, icalparameter_scheduleagent), value, v)
end

function icalparameter_new_scheduleforcesend(v::icalparameter_scheduleforcesend)
    ccall((:icalparameter_new_scheduleforcesend, libical), Ptr{icalparameter}, (icalparameter_scheduleforcesend,), v)
end

function icalparameter_get_scheduleforcesend(value)
    ccall((:icalparameter_get_scheduleforcesend, libical), icalparameter_scheduleforcesend, (Ptr{icalparameter},), value)
end

function icalparameter_set_scheduleforcesend(value, v::icalparameter_scheduleforcesend)
    ccall((:icalparameter_set_scheduleforcesend, libical), Nothing, (Ptr{icalparameter}, icalparameter_scheduleforcesend), value, v)
end

function icalparameter_new_schedulestatus(v)
    ccall((:icalparameter_new_schedulestatus, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_schedulestatus(value)
    ccall((:icalparameter_get_schedulestatus, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_schedulestatus(value, v)
    ccall((:icalparameter_set_schedulestatus, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_sentby(v)
    ccall((:icalparameter_new_sentby, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_sentby(value)
    ccall((:icalparameter_get_sentby, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_sentby(value, v)
    ccall((:icalparameter_set_sentby, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_size(v)
    ccall((:icalparameter_new_size, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_size(value)
    ccall((:icalparameter_get_size, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_size(value, v)
    ccall((:icalparameter_set_size, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_stayinformed(v::icalparameter_stayinformed)
    ccall((:icalparameter_new_stayinformed, libical), Ptr{icalparameter}, (icalparameter_stayinformed,), v)
end

function icalparameter_get_stayinformed(value)
    ccall((:icalparameter_get_stayinformed, libical), icalparameter_stayinformed, (Ptr{icalparameter},), value)
end

function icalparameter_set_stayinformed(value, v::icalparameter_stayinformed)
    ccall((:icalparameter_set_stayinformed, libical), Nothing, (Ptr{icalparameter}, icalparameter_stayinformed), value, v)
end

function icalparameter_new_substate(v::icalparameter_substate)
    ccall((:icalparameter_new_substate, libical), Ptr{icalparameter}, (icalparameter_substate,), v)
end

function icalparameter_get_substate(value)
    ccall((:icalparameter_get_substate, libical), icalparameter_substate, (Ptr{icalparameter},), value)
end

function icalparameter_set_substate(value, v::icalparameter_substate)
    ccall((:icalparameter_set_substate, libical), Nothing, (Ptr{icalparameter}, icalparameter_substate), value, v)
end

function icalparameter_new_tzid(v)
    ccall((:icalparameter_new_tzid, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_tzid(value)
    ccall((:icalparameter_get_tzid, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_tzid(value, v)
    ccall((:icalparameter_set_tzid, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_value(v::icalparameter_value)
    ccall((:icalparameter_new_value, libical), Ptr{icalparameter}, (icalparameter_value,), v)
end

function icalparameter_get_value(value)
    ccall((:icalparameter_get_value, libical), icalparameter_value, (Ptr{icalparameter},), value)
end

function icalparameter_set_value(value, v::icalparameter_value)
    ccall((:icalparameter_set_value, libical), Nothing, (Ptr{icalparameter}, icalparameter_value), value, v)
end

function icalparameter_new_x(v)
    ccall((:icalparameter_new_x, libical), Ptr{icalparameter}, (Cstring,), v)
end

function icalparameter_get_x(value)
    ccall((:icalparameter_get_x, libical), Cstring, (Ptr{icalparameter},), value)
end

function icalparameter_set_x(value, v)
    ccall((:icalparameter_set_x, libical), Nothing, (Ptr{icalparameter}, Cstring), value, v)
end

function icalparameter_new_xliccomparetype(v::icalparameter_xliccomparetype)
    ccall((:icalparameter_new_xliccomparetype, libical), Ptr{icalparameter}, (icalparameter_xliccomparetype,), v)
end

function icalparameter_get_xliccomparetype(value)
    ccall((:icalparameter_get_xliccomparetype, libical), icalparameter_xliccomparetype, (Ptr{icalparameter},), value)
end

function icalparameter_set_xliccomparetype(value, v::icalparameter_xliccomparetype)
    ccall((:icalparameter_set_xliccomparetype, libical), Nothing, (Ptr{icalparameter}, icalparameter_xliccomparetype), value, v)
end

function icalparameter_new_xlicerrortype(v::icalparameter_xlicerrortype)
    ccall((:icalparameter_new_xlicerrortype, libical), Ptr{icalparameter}, (icalparameter_xlicerrortype,), v)
end

function icalparameter_get_xlicerrortype(value)
    ccall((:icalparameter_get_xlicerrortype, libical), icalparameter_xlicerrortype, (Ptr{icalparameter},), value)
end

function icalparameter_set_xlicerrortype(value, v::icalparameter_xlicerrortype)
    ccall((:icalparameter_set_xlicerrortype, libical), Nothing, (Ptr{icalparameter}, icalparameter_xlicerrortype), value, v)
end

function icalvalue_new(kind::icalvalue_kind)
    ccall((:icalvalue_new, libical), Ptr{icalvalue}, (icalvalue_kind,), kind)
end

function icalvalue_new_clone(value)
    ccall((:icalvalue_new_clone, libical), Ptr{icalvalue}, (Ptr{icalvalue},), value)
end

function icalvalue_new_from_string(kind::icalvalue_kind, str)
    ccall((:icalvalue_new_from_string, libical), Ptr{icalvalue}, (icalvalue_kind, Cstring), kind, str)
end

function icalvalue_free(value)
    ccall((:icalvalue_free, libical), Nothing, (Ptr{icalvalue},), value)
end

function icalvalue_is_valid(value)
    ccall((:icalvalue_is_valid, libical), Cint, (Ptr{icalvalue},), value)
end

function icalvalue_as_ical_string(value)
    ccall((:icalvalue_as_ical_string, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_as_ical_string_r(value)
    ccall((:icalvalue_as_ical_string_r, libical), Cstring, (Ptr{icalvalue},), value)
end

function icalvalue_isa(value)
    ccall((:icalvalue_isa, libical), icalvalue_kind, (Ptr{icalvalue},), value)
end

function icalvalue_isa_value(arg1)
    ccall((:icalvalue_isa_value, libical), Cint, (Ptr{Nothing},), arg1)
end

function icalvalue_compare(a, b)
    ccall((:icalvalue_compare, libical), icalparameter_xliccomparetype, (Ptr{icalvalue}, Ptr{icalvalue}), a, b)
end

function icalvalue_string_to_kind(str)
    ccall((:icalvalue_string_to_kind, libical), icalvalue_kind, (Cstring,), str)
end

function icalvalue_kind_to_string(kind::icalvalue_kind)
    ccall((:icalvalue_kind_to_string, libical), Cstring, (icalvalue_kind,), kind)
end

function icalvalue_kind_is_valid(kind::icalvalue_kind)
    ccall((:icalvalue_kind_is_valid, libical), Cint, (icalvalue_kind,), kind)
end

function icalvalue_encode_ical_string(szText, szEncText, MaxBufferLen::Cint)
    ccall((:icalvalue_encode_ical_string, libical), Cint, (Cstring, Cstring, Cint), szText, szEncText, MaxBufferLen)
end

function icalvalue_decode_ical_string(szText, szDecText, nMaxBufferLen::Cint)
    ccall((:icalvalue_decode_ical_string, libical), Cint, (Cstring, Cstring, Cint), szText, szDecText, nMaxBufferLen)
end

function print_date_to_string(str, data)
    ccall((:print_date_to_string, libical), Nothing, (Cstring, Ptr{Nothing}), str, data)
end

function print_datetime_to_string(str, data)
    ccall((:print_datetime_to_string, libical), Nothing, (Cstring, Ptr{Nothing}), str, data)
end

function icalparameter_new(kind::icalparameter_kind)
    ccall((:icalparameter_new, libical), Ptr{icalparameter}, (icalparameter_kind,), kind)
end

function icalparameter_new_clone(p)
    ccall((:icalparameter_new_clone, libical), Ptr{icalparameter}, (Ptr{icalparameter},), p)
end

function icalparameter_new_from_string(value)
    ccall((:icalparameter_new_from_string, libical), Ptr{icalparameter}, (Cstring,), value)
end

function icalparameter_new_from_value_string(kind::icalparameter_kind, value)
    ccall((:icalparameter_new_from_value_string, libical), Ptr{icalparameter}, (icalparameter_kind, Cstring), kind, value)
end

function icalparameter_free(parameter)
    ccall((:icalparameter_free, libical), Nothing, (Ptr{icalparameter},), parameter)
end

function icalparameter_as_ical_string(parameter)
    ccall((:icalparameter_as_ical_string, libical), Cstring, (Ptr{icalparameter},), parameter)
end

function icalparameter_as_ical_string_r(parameter)
    ccall((:icalparameter_as_ical_string_r, libical), Cstring, (Ptr{icalparameter},), parameter)
end

function icalparameter_isa(parameter)
    ccall((:icalparameter_isa, libical), icalparameter_kind, (Ptr{icalparameter},), parameter)
end

function icalparameter_isa_parameter(param)
    ccall((:icalparameter_isa_parameter, libical), Cint, (Ptr{Nothing},), param)
end

function icalparameter_set_xname(param, v)
    ccall((:icalparameter_set_xname, libical), Nothing, (Ptr{icalparameter}, Cstring), param, v)
end

function icalparameter_get_xname(param)
    ccall((:icalparameter_get_xname, libical), Cstring, (Ptr{icalparameter},), param)
end

function icalparameter_set_xvalue(param, v)
    ccall((:icalparameter_set_xvalue, libical), Nothing, (Ptr{icalparameter}, Cstring), param, v)
end

function icalparameter_get_xvalue(param)
    ccall((:icalparameter_get_xvalue, libical), Cstring, (Ptr{icalparameter},), param)
end

function icalparameter_set_iana_name(param, v)
    ccall((:icalparameter_set_iana_name, libical), Nothing, (Ptr{icalparameter}, Cstring), param, v)
end

function icalparameter_get_iana_name(param)
    ccall((:icalparameter_get_iana_name, libical), Cstring, (Ptr{icalparameter},), param)
end

function icalparameter_set_iana_value(param, v)
    ccall((:icalparameter_set_iana_value, libical), Nothing, (Ptr{icalparameter}, Cstring), param, v)
end

function icalparameter_get_iana_value(param)
    ccall((:icalparameter_get_iana_value, libical), Cstring, (Ptr{icalparameter},), param)
end

function icalparameter_has_same_name(param1, param2)
    ccall((:icalparameter_has_same_name, libical), Cint, (Ptr{icalparameter}, Ptr{icalparameter}), param1, param2)
end

function icalparameter_kind_to_string(kind::icalparameter_kind)
    ccall((:icalparameter_kind_to_string, libical), Cstring, (icalparameter_kind,), kind)
end

function icalparameter_string_to_kind(string)
    ccall((:icalparameter_string_to_kind, libical), icalparameter_kind, (Cstring,), string)
end

function icalproperty_new_acceptresponse(v)
    ccall((:icalproperty_new_acceptresponse, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_acceptresponse(prop, v)
    ccall((:icalproperty_set_acceptresponse, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_acceptresponse(prop)
    ccall((:icalproperty_get_acceptresponse, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_acknowledged(v::Nothing)
    ccall((:icalproperty_new_acknowledged, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_acknowledged(prop, v::Nothing)
    ccall((:icalproperty_set_acknowledged, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_acknowledged(prop)
    ccall((:icalproperty_get_acknowledged, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_action(v::Nothing)
    ccall((:icalproperty_new_action, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_action(prop, v::Nothing)
    ccall((:icalproperty_set_action, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_action(prop)
    ccall((:icalproperty_get_action, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_allowconflict(v)
    ccall((:icalproperty_new_allowconflict, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_allowconflict(prop, v)
    ccall((:icalproperty_set_allowconflict, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_allowconflict(prop)
    ccall((:icalproperty_get_allowconflict, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_attach(v)
    ccall((:icalproperty_new_attach, libical), Ptr{icalproperty}, (Ptr{icalattach},), v)
end

function icalproperty_set_attach(prop, v)
    ccall((:icalproperty_set_attach, libical), Nothing, (Ptr{icalproperty}, Ptr{icalattach}), prop, v)
end

function icalproperty_get_attach(prop)
    ccall((:icalproperty_get_attach, libical), Ptr{icalattach}, (Ptr{icalproperty},), prop)
end

function icalproperty_new_attendee(v)
    ccall((:icalproperty_new_attendee, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_attendee(prop, v)
    ccall((:icalproperty_set_attendee, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_attendee(prop)
    ccall((:icalproperty_get_attendee, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_busytype(v::Nothing)
    ccall((:icalproperty_new_busytype, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_busytype(prop, v::Nothing)
    ccall((:icalproperty_set_busytype, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_busytype(prop)
    ccall((:icalproperty_get_busytype, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_calid(v)
    ccall((:icalproperty_new_calid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_calid(prop, v)
    ccall((:icalproperty_set_calid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_calid(prop)
    ccall((:icalproperty_get_calid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_calmaster(v)
    ccall((:icalproperty_new_calmaster, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_calmaster(prop, v)
    ccall((:icalproperty_set_calmaster, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_calmaster(prop)
    ccall((:icalproperty_get_calmaster, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_calscale(v)
    ccall((:icalproperty_new_calscale, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_calscale(prop, v)
    ccall((:icalproperty_set_calscale, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_calscale(prop)
    ccall((:icalproperty_get_calscale, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_capversion(v)
    ccall((:icalproperty_new_capversion, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_capversion(prop, v)
    ccall((:icalproperty_set_capversion, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_capversion(prop)
    ccall((:icalproperty_get_capversion, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_carlevel(v::Nothing)
    ccall((:icalproperty_new_carlevel, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_carlevel(prop, v::Nothing)
    ccall((:icalproperty_set_carlevel, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_carlevel(prop)
    ccall((:icalproperty_get_carlevel, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_carid(v)
    ccall((:icalproperty_new_carid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_carid(prop, v)
    ccall((:icalproperty_set_carid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_carid(prop)
    ccall((:icalproperty_get_carid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_categories(v)
    ccall((:icalproperty_new_categories, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_categories(prop, v)
    ccall((:icalproperty_set_categories, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_categories(prop)
    ccall((:icalproperty_get_categories, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_class(v::Nothing)
    ccall((:icalproperty_new_class, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_class(prop, v::Nothing)
    ccall((:icalproperty_set_class, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_class(prop)
    ccall((:icalproperty_get_class, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_cmd(v::Nothing)
    ccall((:icalproperty_new_cmd, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_cmd(prop, v::Nothing)
    ccall((:icalproperty_set_cmd, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_cmd(prop)
    ccall((:icalproperty_get_cmd, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_color(v)
    ccall((:icalproperty_new_color, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_color(prop, v)
    ccall((:icalproperty_set_color, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_color(prop)
    ccall((:icalproperty_get_color, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_comment(v)
    ccall((:icalproperty_new_comment, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_comment(prop, v)
    ccall((:icalproperty_set_comment, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_comment(prop)
    ccall((:icalproperty_get_comment, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_completed(v::Nothing)
    ccall((:icalproperty_new_completed, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_completed(prop, v::Nothing)
    ccall((:icalproperty_set_completed, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_completed(prop)
    ccall((:icalproperty_get_completed, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_components(v)
    ccall((:icalproperty_new_components, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_components(prop, v)
    ccall((:icalproperty_set_components, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_components(prop)
    ccall((:icalproperty_get_components, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_conference(v)
    ccall((:icalproperty_new_conference, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_conference(prop, v)
    ccall((:icalproperty_set_conference, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_conference(prop)
    ccall((:icalproperty_get_conference, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_contact(v)
    ccall((:icalproperty_new_contact, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_contact(prop, v)
    ccall((:icalproperty_set_contact, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_contact(prop)
    ccall((:icalproperty_get_contact, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_created(v::Nothing)
    ccall((:icalproperty_new_created, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_created(prop, v::Nothing)
    ccall((:icalproperty_set_created, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_created(prop)
    ccall((:icalproperty_get_created, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_csid(v)
    ccall((:icalproperty_new_csid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_csid(prop, v)
    ccall((:icalproperty_set_csid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_csid(prop)
    ccall((:icalproperty_get_csid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_datemax(v::Nothing)
    ccall((:icalproperty_new_datemax, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_datemax(prop, v::Nothing)
    ccall((:icalproperty_set_datemax, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_datemax(prop)
    ccall((:icalproperty_get_datemax, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_datemin(v::Nothing)
    ccall((:icalproperty_new_datemin, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_datemin(prop, v::Nothing)
    ccall((:icalproperty_set_datemin, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_datemin(prop)
    ccall((:icalproperty_get_datemin, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_decreed(v)
    ccall((:icalproperty_new_decreed, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_decreed(prop, v)
    ccall((:icalproperty_set_decreed, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_decreed(prop)
    ccall((:icalproperty_get_decreed, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_defaultcharset(v)
    ccall((:icalproperty_new_defaultcharset, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_defaultcharset(prop, v)
    ccall((:icalproperty_set_defaultcharset, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_defaultcharset(prop)
    ccall((:icalproperty_get_defaultcharset, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_defaultlocale(v)
    ccall((:icalproperty_new_defaultlocale, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_defaultlocale(prop, v)
    ccall((:icalproperty_set_defaultlocale, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_defaultlocale(prop)
    ccall((:icalproperty_get_defaultlocale, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_defaulttzid(v)
    ccall((:icalproperty_new_defaulttzid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_defaulttzid(prop, v)
    ccall((:icalproperty_set_defaulttzid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_defaulttzid(prop)
    ccall((:icalproperty_get_defaulttzid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_defaultvcars(v)
    ccall((:icalproperty_new_defaultvcars, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_defaultvcars(prop, v)
    ccall((:icalproperty_set_defaultvcars, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_defaultvcars(prop)
    ccall((:icalproperty_get_defaultvcars, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_deny(v)
    ccall((:icalproperty_new_deny, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_deny(prop, v)
    ccall((:icalproperty_set_deny, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_deny(prop)
    ccall((:icalproperty_get_deny, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_description(v)
    ccall((:icalproperty_new_description, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_description(prop, v)
    ccall((:icalproperty_set_description, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_description(prop)
    ccall((:icalproperty_get_description, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_dtend(v::Nothing)
    ccall((:icalproperty_new_dtend, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_dtend(prop, v::Nothing)
    ccall((:icalproperty_set_dtend, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_dtend(prop)
    ccall((:icalproperty_get_dtend, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_dtstamp(v::Nothing)
    ccall((:icalproperty_new_dtstamp, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_dtstamp(prop, v::Nothing)
    ccall((:icalproperty_set_dtstamp, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_dtstamp(prop)
    ccall((:icalproperty_get_dtstamp, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_dtstart(v::Nothing)
    ccall((:icalproperty_new_dtstart, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_dtstart(prop, v::Nothing)
    ccall((:icalproperty_set_dtstart, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_dtstart(prop)
    ccall((:icalproperty_get_dtstart, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_due(v::Nothing)
    ccall((:icalproperty_new_due, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_due(prop, v::Nothing)
    ccall((:icalproperty_set_due, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_due(prop)
    ccall((:icalproperty_get_due, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_duration(v::Nothing)
    ccall((:icalproperty_new_duration, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_duration(prop, v::Nothing)
    ccall((:icalproperty_set_duration, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_duration(prop)
    ccall((:icalproperty_get_duration, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_estimatedduration(v::Nothing)
    ccall((:icalproperty_new_estimatedduration, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_estimatedduration(prop, v::Nothing)
    ccall((:icalproperty_set_estimatedduration, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_estimatedduration(prop)
    ccall((:icalproperty_get_estimatedduration, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_exdate(v::Nothing)
    ccall((:icalproperty_new_exdate, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_exdate(prop, v::Nothing)
    ccall((:icalproperty_set_exdate, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_exdate(prop)
    ccall((:icalproperty_get_exdate, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_expand(v::Cint)
    ccall((:icalproperty_new_expand, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_expand(prop, v::Cint)
    ccall((:icalproperty_set_expand, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_expand(prop)
    ccall((:icalproperty_get_expand, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_exrule(v::Nothing)
    ccall((:icalproperty_new_exrule, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_exrule(prop, v::Nothing)
    ccall((:icalproperty_set_exrule, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_exrule(prop)
    ccall((:icalproperty_get_exrule, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_freebusy(v::Nothing)
    ccall((:icalproperty_new_freebusy, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_freebusy(prop, v::Nothing)
    ccall((:icalproperty_set_freebusy, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_freebusy(prop)
    ccall((:icalproperty_get_freebusy, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_geo(v::Nothing)
    ccall((:icalproperty_new_geo, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_geo(prop, v::Nothing)
    ccall((:icalproperty_set_geo, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_geo(prop)
    ccall((:icalproperty_get_geo, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_grant(v)
    ccall((:icalproperty_new_grant, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_grant(prop, v)
    ccall((:icalproperty_set_grant, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_grant(prop)
    ccall((:icalproperty_get_grant, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_image(v)
    ccall((:icalproperty_new_image, libical), Ptr{icalproperty}, (Ptr{icalattach},), v)
end

function icalproperty_set_image(prop, v)
    ccall((:icalproperty_set_image, libical), Nothing, (Ptr{icalproperty}, Ptr{icalattach}), prop, v)
end

function icalproperty_get_image(prop)
    ccall((:icalproperty_get_image, libical), Ptr{icalattach}, (Ptr{icalproperty},), prop)
end

function icalproperty_new_itipversion(v)
    ccall((:icalproperty_new_itipversion, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_itipversion(prop, v)
    ccall((:icalproperty_set_itipversion, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_itipversion(prop)
    ccall((:icalproperty_get_itipversion, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_lastmodified(v::Nothing)
    ccall((:icalproperty_new_lastmodified, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_lastmodified(prop, v::Nothing)
    ccall((:icalproperty_set_lastmodified, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_lastmodified(prop)
    ccall((:icalproperty_get_lastmodified, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_location(v)
    ccall((:icalproperty_new_location, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_location(prop, v)
    ccall((:icalproperty_set_location, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_location(prop)
    ccall((:icalproperty_get_location, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_maxcomponentsize(v::Cint)
    ccall((:icalproperty_new_maxcomponentsize, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_maxcomponentsize(prop, v::Cint)
    ccall((:icalproperty_set_maxcomponentsize, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_maxcomponentsize(prop)
    ccall((:icalproperty_get_maxcomponentsize, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_maxdate(v::Nothing)
    ccall((:icalproperty_new_maxdate, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_maxdate(prop, v::Nothing)
    ccall((:icalproperty_set_maxdate, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_maxdate(prop)
    ccall((:icalproperty_get_maxdate, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_maxresults(v::Cint)
    ccall((:icalproperty_new_maxresults, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_maxresults(prop, v::Cint)
    ccall((:icalproperty_set_maxresults, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_maxresults(prop)
    ccall((:icalproperty_get_maxresults, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_maxresultssize(v::Cint)
    ccall((:icalproperty_new_maxresultssize, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_maxresultssize(prop, v::Cint)
    ccall((:icalproperty_set_maxresultssize, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_maxresultssize(prop)
    ccall((:icalproperty_get_maxresultssize, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_method(v::Nothing)
    ccall((:icalproperty_new_method, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_method(prop, v::Nothing)
    ccall((:icalproperty_set_method, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_method(prop)
    ccall((:icalproperty_get_method, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_mindate(v::Nothing)
    ccall((:icalproperty_new_mindate, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_mindate(prop, v::Nothing)
    ccall((:icalproperty_set_mindate, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_mindate(prop)
    ccall((:icalproperty_get_mindate, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_multipart(v)
    ccall((:icalproperty_new_multipart, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_multipart(prop, v)
    ccall((:icalproperty_set_multipart, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_multipart(prop)
    ccall((:icalproperty_get_multipart, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_name(v)
    ccall((:icalproperty_new_name, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_name(prop, v)
    ccall((:icalproperty_set_name, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_name(prop)
    ccall((:icalproperty_get_name, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_organizer(v)
    ccall((:icalproperty_new_organizer, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_organizer(prop, v)
    ccall((:icalproperty_set_organizer, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_organizer(prop)
    ccall((:icalproperty_get_organizer, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_owner(v)
    ccall((:icalproperty_new_owner, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_owner(prop, v)
    ccall((:icalproperty_set_owner, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_owner(prop)
    ccall((:icalproperty_get_owner, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_patchdelete(v)
    ccall((:icalproperty_new_patchdelete, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_patchdelete(prop, v)
    ccall((:icalproperty_set_patchdelete, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_patchdelete(prop)
    ccall((:icalproperty_get_patchdelete, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_patchorder(v::Cint)
    ccall((:icalproperty_new_patchorder, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_patchorder(prop, v::Cint)
    ccall((:icalproperty_set_patchorder, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_patchorder(prop)
    ccall((:icalproperty_get_patchorder, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_patchparameter(v)
    ccall((:icalproperty_new_patchparameter, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_patchparameter(prop, v)
    ccall((:icalproperty_set_patchparameter, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_patchparameter(prop)
    ccall((:icalproperty_get_patchparameter, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_patchtarget(v)
    ccall((:icalproperty_new_patchtarget, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_patchtarget(prop, v)
    ccall((:icalproperty_set_patchtarget, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_patchtarget(prop)
    ccall((:icalproperty_get_patchtarget, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_patchversion(v)
    ccall((:icalproperty_new_patchversion, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_patchversion(prop, v)
    ccall((:icalproperty_set_patchversion, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_patchversion(prop)
    ccall((:icalproperty_get_patchversion, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_percentcomplete(v::Cint)
    ccall((:icalproperty_new_percentcomplete, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_percentcomplete(prop, v::Cint)
    ccall((:icalproperty_set_percentcomplete, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_percentcomplete(prop)
    ccall((:icalproperty_get_percentcomplete, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_permission(v)
    ccall((:icalproperty_new_permission, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_permission(prop, v)
    ccall((:icalproperty_set_permission, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_permission(prop)
    ccall((:icalproperty_get_permission, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_pollcompletion(v::Nothing)
    ccall((:icalproperty_new_pollcompletion, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_pollcompletion(prop, v::Nothing)
    ccall((:icalproperty_set_pollcompletion, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_pollcompletion(prop)
    ccall((:icalproperty_get_pollcompletion, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_pollitemid(v::Cint)
    ccall((:icalproperty_new_pollitemid, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_pollitemid(prop, v::Cint)
    ccall((:icalproperty_set_pollitemid, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_pollitemid(prop)
    ccall((:icalproperty_get_pollitemid, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_pollmode(v::Nothing)
    ccall((:icalproperty_new_pollmode, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_pollmode(prop, v::Nothing)
    ccall((:icalproperty_set_pollmode, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_pollmode(prop)
    ccall((:icalproperty_get_pollmode, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_pollproperties(v)
    ccall((:icalproperty_new_pollproperties, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_pollproperties(prop, v)
    ccall((:icalproperty_set_pollproperties, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_pollproperties(prop)
    ccall((:icalproperty_get_pollproperties, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_pollwinner(v::Cint)
    ccall((:icalproperty_new_pollwinner, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_pollwinner(prop, v::Cint)
    ccall((:icalproperty_set_pollwinner, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_pollwinner(prop)
    ccall((:icalproperty_get_pollwinner, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_priority(v::Cint)
    ccall((:icalproperty_new_priority, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_priority(prop, v::Cint)
    ccall((:icalproperty_set_priority, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_priority(prop)
    ccall((:icalproperty_get_priority, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_prodid(v)
    ccall((:icalproperty_new_prodid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_prodid(prop, v)
    ccall((:icalproperty_set_prodid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_prodid(prop)
    ccall((:icalproperty_get_prodid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_query(v)
    ccall((:icalproperty_new_query, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_query(prop, v)
    ccall((:icalproperty_set_query, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_query(prop)
    ccall((:icalproperty_get_query, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_querylevel(v::Nothing)
    ccall((:icalproperty_new_querylevel, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_querylevel(prop, v::Nothing)
    ccall((:icalproperty_set_querylevel, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_querylevel(prop)
    ccall((:icalproperty_get_querylevel, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_queryid(v)
    ccall((:icalproperty_new_queryid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_queryid(prop, v)
    ccall((:icalproperty_set_queryid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_queryid(prop)
    ccall((:icalproperty_get_queryid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_queryname(v)
    ccall((:icalproperty_new_queryname, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_queryname(prop, v)
    ccall((:icalproperty_set_queryname, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_queryname(prop)
    ccall((:icalproperty_get_queryname, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_rdate(v::Nothing)
    ccall((:icalproperty_new_rdate, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_rdate(prop, v::Nothing)
    ccall((:icalproperty_set_rdate, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_rdate(prop)
    ccall((:icalproperty_get_rdate, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_recuraccepted(v)
    ccall((:icalproperty_new_recuraccepted, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_recuraccepted(prop, v)
    ccall((:icalproperty_set_recuraccepted, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_recuraccepted(prop)
    ccall((:icalproperty_get_recuraccepted, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_recurexpand(v)
    ccall((:icalproperty_new_recurexpand, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_recurexpand(prop, v)
    ccall((:icalproperty_set_recurexpand, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_recurexpand(prop)
    ccall((:icalproperty_get_recurexpand, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_recurlimit(v)
    ccall((:icalproperty_new_recurlimit, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_recurlimit(prop, v)
    ccall((:icalproperty_set_recurlimit, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_recurlimit(prop)
    ccall((:icalproperty_get_recurlimit, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_recurrenceid(v::Nothing)
    ccall((:icalproperty_new_recurrenceid, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_recurrenceid(prop, v::Nothing)
    ccall((:icalproperty_set_recurrenceid, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_recurrenceid(prop)
    ccall((:icalproperty_get_recurrenceid, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_refreshinterval(v::Nothing)
    ccall((:icalproperty_new_refreshinterval, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_refreshinterval(prop, v::Nothing)
    ccall((:icalproperty_set_refreshinterval, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_refreshinterval(prop)
    ccall((:icalproperty_get_refreshinterval, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_relatedto(v)
    ccall((:icalproperty_new_relatedto, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_relatedto(prop, v)
    ccall((:icalproperty_set_relatedto, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_relatedto(prop)
    ccall((:icalproperty_get_relatedto, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_relcalid(v)
    ccall((:icalproperty_new_relcalid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_relcalid(prop, v)
    ccall((:icalproperty_set_relcalid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_relcalid(prop)
    ccall((:icalproperty_get_relcalid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_repeat(v::Cint)
    ccall((:icalproperty_new_repeat, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_repeat(prop, v::Cint)
    ccall((:icalproperty_set_repeat, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_repeat(prop)
    ccall((:icalproperty_get_repeat, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_replyurl(v)
    ccall((:icalproperty_new_replyurl, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_replyurl(prop, v)
    ccall((:icalproperty_set_replyurl, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_replyurl(prop)
    ccall((:icalproperty_get_replyurl, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_requeststatus(v::Nothing)
    ccall((:icalproperty_new_requeststatus, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_requeststatus(prop, v::Nothing)
    ccall((:icalproperty_set_requeststatus, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_requeststatus(prop)
    ccall((:icalproperty_get_requeststatus, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_resources(v)
    ccall((:icalproperty_new_resources, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_resources(prop, v)
    ccall((:icalproperty_set_resources, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_resources(prop)
    ccall((:icalproperty_get_resources, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_response(v::Cint)
    ccall((:icalproperty_new_response, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_response(prop, v::Cint)
    ccall((:icalproperty_set_response, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_response(prop)
    ccall((:icalproperty_get_response, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_restriction(v)
    ccall((:icalproperty_new_restriction, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_restriction(prop, v)
    ccall((:icalproperty_set_restriction, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_restriction(prop)
    ccall((:icalproperty_get_restriction, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_rrule(v::Nothing)
    ccall((:icalproperty_new_rrule, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_rrule(prop, v::Nothing)
    ccall((:icalproperty_set_rrule, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_rrule(prop)
    ccall((:icalproperty_get_rrule, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_scope(v)
    ccall((:icalproperty_new_scope, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_scope(prop, v)
    ccall((:icalproperty_set_scope, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_scope(prop)
    ccall((:icalproperty_get_scope, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_sequence(v::Cint)
    ccall((:icalproperty_new_sequence, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_sequence(prop, v::Cint)
    ccall((:icalproperty_set_sequence, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_sequence(prop)
    ccall((:icalproperty_get_sequence, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_source(v)
    ccall((:icalproperty_new_source, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_source(prop, v)
    ccall((:icalproperty_set_source, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_source(prop)
    ccall((:icalproperty_get_source, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_status(v::Nothing)
    ccall((:icalproperty_new_status, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_status(prop, v::Nothing)
    ccall((:icalproperty_set_status, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_status(prop)
    ccall((:icalproperty_get_status, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_storesexpanded(v)
    ccall((:icalproperty_new_storesexpanded, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_storesexpanded(prop, v)
    ccall((:icalproperty_set_storesexpanded, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_storesexpanded(prop)
    ccall((:icalproperty_get_storesexpanded, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_summary(v)
    ccall((:icalproperty_new_summary, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_summary(prop, v)
    ccall((:icalproperty_set_summary, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_summary(prop)
    ccall((:icalproperty_get_summary, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_target(v)
    ccall((:icalproperty_new_target, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_target(prop, v)
    ccall((:icalproperty_set_target, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_target(prop)
    ccall((:icalproperty_get_target, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_taskmode(v::Nothing)
    ccall((:icalproperty_new_taskmode, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_taskmode(prop, v::Nothing)
    ccall((:icalproperty_set_taskmode, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_taskmode(prop)
    ccall((:icalproperty_get_taskmode, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_transp(v::Nothing)
    ccall((:icalproperty_new_transp, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_transp(prop, v::Nothing)
    ccall((:icalproperty_set_transp, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_transp(prop)
    ccall((:icalproperty_get_transp, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_trigger(v::Nothing)
    ccall((:icalproperty_new_trigger, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_trigger(prop, v::Nothing)
    ccall((:icalproperty_set_trigger, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_trigger(prop)
    ccall((:icalproperty_get_trigger, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzid(v)
    ccall((:icalproperty_new_tzid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_tzid(prop, v)
    ccall((:icalproperty_set_tzid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_tzid(prop)
    ccall((:icalproperty_get_tzid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzidaliasof(v)
    ccall((:icalproperty_new_tzidaliasof, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_tzidaliasof(prop, v)
    ccall((:icalproperty_set_tzidaliasof, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_tzidaliasof(prop)
    ccall((:icalproperty_get_tzidaliasof, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzname(v)
    ccall((:icalproperty_new_tzname, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_tzname(prop, v)
    ccall((:icalproperty_set_tzname, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_tzname(prop)
    ccall((:icalproperty_get_tzname, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzoffsetfrom(v::Cint)
    ccall((:icalproperty_new_tzoffsetfrom, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_tzoffsetfrom(prop, v::Cint)
    ccall((:icalproperty_set_tzoffsetfrom, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_tzoffsetfrom(prop)
    ccall((:icalproperty_get_tzoffsetfrom, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzoffsetto(v::Cint)
    ccall((:icalproperty_new_tzoffsetto, libical), Ptr{icalproperty}, (Cint,), v)
end

function icalproperty_set_tzoffsetto(prop, v::Cint)
    ccall((:icalproperty_set_tzoffsetto, libical), Nothing, (Ptr{icalproperty}, Cint), prop, v)
end

function icalproperty_get_tzoffsetto(prop)
    ccall((:icalproperty_get_tzoffsetto, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzuntil(v::Nothing)
    ccall((:icalproperty_new_tzuntil, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_tzuntil(prop, v::Nothing)
    ccall((:icalproperty_set_tzuntil, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_tzuntil(prop)
    ccall((:icalproperty_get_tzuntil, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_tzurl(v)
    ccall((:icalproperty_new_tzurl, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_tzurl(prop, v)
    ccall((:icalproperty_set_tzurl, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_tzurl(prop)
    ccall((:icalproperty_get_tzurl, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_uid(v)
    ccall((:icalproperty_new_uid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_uid(prop, v)
    ccall((:icalproperty_set_uid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_uid(prop)
    ccall((:icalproperty_get_uid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_url(v)
    ccall((:icalproperty_new_url, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_url(prop, v)
    ccall((:icalproperty_set_url, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_url(prop)
    ccall((:icalproperty_get_url, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_version(v)
    ccall((:icalproperty_new_version, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_version(prop, v)
    ccall((:icalproperty_set_version, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_version(prop)
    ccall((:icalproperty_get_version, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_voter(v)
    ccall((:icalproperty_new_voter, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_voter(prop, v)
    ccall((:icalproperty_set_voter, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_voter(prop)
    ccall((:icalproperty_get_voter, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_x(v)
    ccall((:icalproperty_new_x, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_x(prop, v)
    ccall((:icalproperty_set_x, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_x(prop)
    ccall((:icalproperty_get_x, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicclass(v::Nothing)
    ccall((:icalproperty_new_xlicclass, libical), Ptr{icalproperty}, (Nothing,), v)
end

function icalproperty_set_xlicclass(prop, v::Nothing)
    ccall((:icalproperty_set_xlicclass, libical), Nothing, (Ptr{icalproperty}, Nothing), prop, v)
end

function icalproperty_get_xlicclass(prop)
    ccall((:icalproperty_get_xlicclass, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicclustercount(v)
    ccall((:icalproperty_new_xlicclustercount, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicclustercount(prop, v)
    ccall((:icalproperty_set_xlicclustercount, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicclustercount(prop)
    ccall((:icalproperty_get_xlicclustercount, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicerror(v)
    ccall((:icalproperty_new_xlicerror, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicerror(prop, v)
    ccall((:icalproperty_set_xlicerror, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicerror(prop)
    ccall((:icalproperty_get_xlicerror, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicmimecharset(v)
    ccall((:icalproperty_new_xlicmimecharset, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicmimecharset(prop, v)
    ccall((:icalproperty_set_xlicmimecharset, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicmimecharset(prop)
    ccall((:icalproperty_get_xlicmimecharset, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicmimecid(v)
    ccall((:icalproperty_new_xlicmimecid, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicmimecid(prop, v)
    ccall((:icalproperty_set_xlicmimecid, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicmimecid(prop)
    ccall((:icalproperty_get_xlicmimecid, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicmimecontenttype(v)
    ccall((:icalproperty_new_xlicmimecontenttype, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicmimecontenttype(prop, v)
    ccall((:icalproperty_set_xlicmimecontenttype, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicmimecontenttype(prop)
    ccall((:icalproperty_get_xlicmimecontenttype, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicmimeencoding(v)
    ccall((:icalproperty_new_xlicmimeencoding, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicmimeencoding(prop, v)
    ccall((:icalproperty_set_xlicmimeencoding, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicmimeencoding(prop)
    ccall((:icalproperty_get_xlicmimeencoding, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicmimefilename(v)
    ccall((:icalproperty_new_xlicmimefilename, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicmimefilename(prop, v)
    ccall((:icalproperty_set_xlicmimefilename, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicmimefilename(prop)
    ccall((:icalproperty_get_xlicmimefilename, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new_xlicmimeoptinfo(v)
    ccall((:icalproperty_new_xlicmimeoptinfo, libical), Ptr{icalproperty}, (Cstring,), v)
end

function icalproperty_set_xlicmimeoptinfo(prop, v)
    ccall((:icalproperty_set_xlicmimeoptinfo, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, v)
end

function icalproperty_get_xlicmimeoptinfo(prop)
    ccall((:icalproperty_get_xlicmimeoptinfo, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_new(kind::icalproperty_kind)
    ccall((:icalproperty_new, libical), Ptr{icalproperty}, (icalproperty_kind,), kind)
end

function icalproperty_new_impl(kind::icalproperty_kind)
    ccall((:icalproperty_new_impl, libical), Ptr{icalproperty}, (icalproperty_kind,), kind)
end

function icalproperty_new_clone(prop)
    ccall((:icalproperty_new_clone, libical), Ptr{icalproperty}, (Ptr{icalproperty},), prop)
end

function icalproperty_new_from_string(str)
    ccall((:icalproperty_new_from_string, libical), Ptr{icalproperty}, (Cstring,), str)
end

function icalproperty_as_ical_string(prop)
    ccall((:icalproperty_as_ical_string, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_as_ical_string_r(prop)
    ccall((:icalproperty_as_ical_string_r, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_free(prop)
    ccall((:icalproperty_free, libical), Nothing, (Ptr{icalproperty},), prop)
end

function icalproperty_isa(property)
    ccall((:icalproperty_isa, libical), icalproperty_kind, (Ptr{icalproperty},), property)
end

function icalproperty_isa_property(property)
    ccall((:icalproperty_isa_property, libical), Cint, (Ptr{Nothing},), property)
end

#= Skip: vararg function (see https://github.com/JuliaLang/julia/issues/6661)
function icalproperty_add_parameters(prop, args::va_list)
    ccall((:icalproperty_add_parameters, libical), Nothing, (Ptr{Nothing}, va_list), prop, args)
end
=#

function icalproperty_add_parameter(prop, parameter)
    ccall((:icalproperty_add_parameter, libical), Nothing, (Ptr{icalproperty}, Ptr{icalparameter}), prop, parameter)
end

function icalproperty_set_parameter(prop, parameter)
    ccall((:icalproperty_set_parameter, libical), Nothing, (Ptr{icalproperty}, Ptr{icalparameter}), prop, parameter)
end

function icalproperty_set_parameter_from_string(prop, name, value)
    ccall((:icalproperty_set_parameter_from_string, libical), Nothing, (Ptr{icalproperty}, Cstring, Cstring), prop, name, value)
end

function icalproperty_get_parameter_as_string(prop, name)
    ccall((:icalproperty_get_parameter_as_string, libical), Cstring, (Ptr{icalproperty}, Cstring), prop, name)
end

function icalproperty_get_parameter_as_string_r(prop, name)
    ccall((:icalproperty_get_parameter_as_string_r, libical), Cstring, (Ptr{icalproperty}, Cstring), prop, name)
end

function icalproperty_remove_parameter_by_kind(prop, kind::icalparameter_kind)
    ccall((:icalproperty_remove_parameter_by_kind, libical), Nothing, (Ptr{icalproperty}, icalparameter_kind), prop, kind)
end

function icalproperty_remove_parameter_by_name(prop, name)
    ccall((:icalproperty_remove_parameter_by_name, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, name)
end

function icalproperty_remove_parameter_by_ref(prop, param)
    ccall((:icalproperty_remove_parameter_by_ref, libical), Nothing, (Ptr{icalproperty}, Ptr{icalparameter}), prop, param)
end

function icalproperty_count_parameters(prop)
    ccall((:icalproperty_count_parameters, libical), Cint, (Ptr{icalproperty},), prop)
end

function icalproperty_get_first_parameter(prop, kind::icalparameter_kind)
    ccall((:icalproperty_get_first_parameter, libical), Ptr{icalparameter}, (Ptr{icalproperty}, icalparameter_kind), prop, kind)
end

function icalproperty_get_next_parameter(prop, kind::icalparameter_kind)
    ccall((:icalproperty_get_next_parameter, libical), Ptr{icalparameter}, (Ptr{icalproperty}, icalparameter_kind), prop, kind)
end

function icalproperty_set_value(prop, value)
    ccall((:icalproperty_set_value, libical), Nothing, (Ptr{icalproperty}, Ptr{icalvalue}), prop, value)
end

function icalproperty_set_value_from_string(prop, value, kind)
    ccall((:icalproperty_set_value_from_string, libical), Nothing, (Ptr{icalproperty}, Cstring, Cstring), prop, value, kind)
end

function icalproperty_get_value(prop)
    ccall((:icalproperty_get_value, libical), Ptr{icalvalue}, (Ptr{icalproperty},), prop)
end

function icalproperty_get_value_as_string(prop)
    ccall((:icalproperty_get_value_as_string, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_get_value_as_string_r(prop)
    ccall((:icalproperty_get_value_as_string_r, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalvalue_set_parent(value, property)
    ccall((:icalvalue_set_parent, libical), Nothing, (Ptr{icalvalue}, Ptr{icalproperty}), value, property)
end

function icalvalue_get_parent(value)
    ccall((:icalvalue_get_parent, libical), Ptr{icalproperty}, (Ptr{icalvalue},), value)
end

function icalproperty_set_x_name(prop, name)
    ccall((:icalproperty_set_x_name, libical), Nothing, (Ptr{icalproperty}, Cstring), prop, name)
end

function icalproperty_get_x_name(prop)
    ccall((:icalproperty_get_x_name, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_get_property_name(prop)
    ccall((:icalproperty_get_property_name, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalproperty_get_property_name_r(prop)
    ccall((:icalproperty_get_property_name_r, libical), Cstring, (Ptr{icalproperty},), prop)
end

function icalparameter_value_to_value_kind(value::icalparameter_value)
    ccall((:icalparameter_value_to_value_kind, libical), icalvalue_kind, (icalparameter_value,), value)
end

function icalparameter_set_parent(param, property)
    ccall((:icalparameter_set_parent, libical), Nothing, (Ptr{icalparameter}, Ptr{icalproperty}), param, property)
end

function icalparameter_get_parent(param)
    ccall((:icalparameter_get_parent, libical), Ptr{icalproperty}, (Ptr{icalparameter},), param)
end

function icalproperty_kind_to_value_kind(kind::icalproperty_kind)
    ccall((:icalproperty_kind_to_value_kind, libical), icalvalue_kind, (icalproperty_kind,), kind)
end

function icalproperty_value_kind_to_kind(kind::icalvalue_kind)
    ccall((:icalproperty_value_kind_to_kind, libical), icalproperty_kind, (icalvalue_kind,), kind)
end

function icalproperty_kind_to_string(kind::icalproperty_kind)
    ccall((:icalproperty_kind_to_string, libical), Cstring, (icalproperty_kind,), kind)
end

function icalproperty_string_to_kind(string)
    ccall((:icalproperty_string_to_kind, libical), icalproperty_kind, (Cstring,), string)
end

function icalproperty_kind_is_valid(kind::icalproperty_kind)
    ccall((:icalproperty_kind_is_valid, libical), Cint, (icalproperty_kind,), kind)
end

function icalproperty_string_to_method(str)
    ccall((:icalproperty_string_to_method, libical), icalproperty_method, (Cstring,), str)
end

function icalproperty_method_to_string(method::icalproperty_method)
    ccall((:icalproperty_method_to_string, libical), Cstring, (icalproperty_method,), method)
end

function icalproperty_enum_to_string(e::Cint)
    ccall((:icalproperty_enum_to_string, libical), Cstring, (Cint,), e)
end

function icalproperty_enum_to_string_r(e::Cint)
    ccall((:icalproperty_enum_to_string_r, libical), Cstring, (Cint,), e)
end

function icalproperty_kind_and_string_to_enum(kind::Cint, str)
    ccall((:icalproperty_kind_and_string_to_enum, libical), Cint, (Cint, Cstring), kind, str)
end

function icalproperty_status_to_string(arg1::icalproperty_status)
    ccall((:icalproperty_status_to_string, libical), Cstring, (icalproperty_status,), arg1)
end

function icalproperty_string_to_status(string)
    ccall((:icalproperty_string_to_status, libical), icalproperty_status, (Cstring,), string)
end

function icalproperty_enum_belongs_to_property(kind::icalproperty_kind, e::Cint)
    ccall((:icalproperty_enum_belongs_to_property, libical), Cint, (icalproperty_kind, Cint), kind, e)
end

function icalproperty_normalize(prop)
    ccall((:icalproperty_normalize, libical), Nothing, (Ptr{icalproperty},), prop)
end

function pvl_new_element(d, next::pvl_elem, prior::pvl_elem)
    ccall((:pvl_new_element, libical), pvl_elem, (Ptr{Nothing}, pvl_elem, pvl_elem), d, next, prior)
end

function pvl_newlist()
    ccall((:pvl_newlist, libical), pvl_list, ())
end

function pvl_free(arg1::pvl_list)
    ccall((:pvl_free, libical), Nothing, (pvl_list,), arg1)
end

function pvl_unshift(l::pvl_list, d)
    ccall((:pvl_unshift, libical), Nothing, (pvl_list, Ptr{Nothing}), l, d)
end

function pvl_shift(l::pvl_list)
    ccall((:pvl_shift, libical), Ptr{Nothing}, (pvl_list,), l)
end

function pvl_head(arg1::pvl_list)
    ccall((:pvl_head, libical), pvl_elem, (pvl_list,), arg1)
end

function pvl_push(l::pvl_list, d)
    ccall((:pvl_push, libical), Nothing, (pvl_list, Ptr{Nothing}), l, d)
end

function pvl_pop(l::pvl_list)
    ccall((:pvl_pop, libical), Ptr{Nothing}, (pvl_list,), l)
end

function pvl_tail(arg1::pvl_list)
    ccall((:pvl_tail, libical), pvl_elem, (pvl_list,), arg1)
end

function pvl_insert_ordered(l::pvl_list, f::pvl_comparef, d)
    ccall((:pvl_insert_ordered, libical), Nothing, (pvl_list, pvl_comparef, Ptr{Nothing}), l, f, d)
end

function pvl_insert_after(l::pvl_list, e::pvl_elem, d)
    ccall((:pvl_insert_after, libical), Nothing, (pvl_list, pvl_elem, Ptr{Nothing}), l, e, d)
end

function pvl_insert_before(l::pvl_list, e::pvl_elem, d)
    ccall((:pvl_insert_before, libical), Nothing, (pvl_list, pvl_elem, Ptr{Nothing}), l, e, d)
end

function pvl_remove(arg1::pvl_list, arg2::pvl_elem)
    ccall((:pvl_remove, libical), Ptr{Nothing}, (pvl_list, pvl_elem), arg1, arg2)
end

function pvl_clear(arg1::pvl_list)
    ccall((:pvl_clear, libical), Nothing, (pvl_list,), arg1)
end

function pvl_count(arg1::pvl_list)
    ccall((:pvl_count, libical), Cint, (pvl_list,), arg1)
end

function pvl_next(e::pvl_elem)
    ccall((:pvl_next, libical), pvl_elem, (pvl_elem,), e)
end

function pvl_prior(e::pvl_elem)
    ccall((:pvl_prior, libical), pvl_elem, (pvl_elem,), e)
end

function pvl_data(arg1::pvl_elem)
    ccall((:pvl_data, libical), Ptr{Nothing}, (pvl_elem,), arg1)
end

function pvl_find(l::pvl_list, f::pvl_findf, v)
    ccall((:pvl_find, libical), pvl_elem, (pvl_list, pvl_findf, Ptr{Nothing}), l, f, v)
end

function pvl_find_next(l::pvl_list, f::pvl_findf, v)
    ccall((:pvl_find_next, libical), pvl_elem, (pvl_list, pvl_findf, Ptr{Nothing}), l, f, v)
end

function pvl_apply(l::pvl_list, f::pvl_applyf, v)
    ccall((:pvl_apply, libical), Nothing, (pvl_list, pvl_applyf, Ptr{Nothing}), l, f, v)
end

function icalcomponent_new(kind::icalcomponent_kind)
    ccall((:icalcomponent_new, libical), Ptr{icalcomponent}, (icalcomponent_kind,), kind)
end

function icalcomponent_new_clone(component)
    ccall((:icalcomponent_new_clone, libical), Ptr{icalcomponent}, (Ptr{icalcomponent},), component)
end

function icalcomponent_new_from_string(str)
    ccall((:icalcomponent_new_from_string, libical), Ptr{icalcomponent}, (Cstring,), str)
end

function icalcomponent_new_x(x_name)
    ccall((:icalcomponent_new_x, libical), Ptr{icalcomponent}, (Cstring,), x_name)
end

function icalcomponent_free(component)
    ccall((:icalcomponent_free, libical), Nothing, (Ptr{icalcomponent},), component)
end

function icalcomponent_as_ical_string(component)
    ccall((:icalcomponent_as_ical_string, libical), Cstring, (Ptr{icalcomponent},), component)
end

function icalcomponent_as_ical_string_r(component)
    ccall((:icalcomponent_as_ical_string_r, libical), Cstring, (Ptr{icalcomponent},), component)
end

function icalcomponent_is_valid(component)
    ccall((:icalcomponent_is_valid, libical), Cint, (Ptr{icalcomponent},), component)
end

function icalcomponent_isa(component)
    ccall((:icalcomponent_isa, libical), icalcomponent_kind, (Ptr{icalcomponent},), component)
end

function icalcomponent_isa_component(component)
    ccall((:icalcomponent_isa_component, libical), Cint, (Ptr{Nothing},), component)
end

function icalcomponent_add_property(component, property)
    ccall((:icalcomponent_add_property, libical), Nothing, (Ptr{icalcomponent}, Ptr{icalproperty}), component, property)
end

function icalcomponent_remove_property(component, property)
    ccall((:icalcomponent_remove_property, libical), Nothing, (Ptr{icalcomponent}, Ptr{icalproperty}), component, property)
end

function icalcomponent_count_properties(component, kind::icalproperty_kind)
    ccall((:icalcomponent_count_properties, libical), Cint, (Ptr{icalcomponent}, icalproperty_kind), component, kind)
end

function icalproperty_set_parent(property, component)
    ccall((:icalproperty_set_parent, libical), Nothing, (Ptr{icalproperty}, Ptr{icalcomponent}), property, component)
end

function icalproperty_get_parent(property)
    ccall((:icalproperty_get_parent, libical), Ptr{icalcomponent}, (Ptr{icalproperty},), property)
end

function icalcomponent_get_current_property(component)
    ccall((:icalcomponent_get_current_property, libical), Ptr{icalproperty}, (Ptr{icalcomponent},), component)
end

function icalcomponent_get_first_property(component, kind::icalproperty_kind)
    ccall((:icalcomponent_get_first_property, libical), Ptr{icalproperty}, (Ptr{icalcomponent}, icalproperty_kind), component, kind)
end

function icalcomponent_get_next_property(component, kind::icalproperty_kind)
    ccall((:icalcomponent_get_next_property, libical), Ptr{icalproperty}, (Ptr{icalcomponent}, icalproperty_kind), component, kind)
end

function icalcomponent_get_inner(comp)
    ccall((:icalcomponent_get_inner, libical), Ptr{icalcomponent}, (Ptr{icalcomponent},), comp)
end

function icalcomponent_add_component(parent, child)
    ccall((:icalcomponent_add_component, libical), Nothing, (Ptr{icalcomponent}, Ptr{icalcomponent}), parent, child)
end

function icalcomponent_remove_component(parent, child)
    ccall((:icalcomponent_remove_component, libical), Nothing, (Ptr{icalcomponent}, Ptr{icalcomponent}), parent, child)
end

function icalcomponent_count_components(component, kind::icalcomponent_kind)
    ccall((:icalcomponent_count_components, libical), Cint, (Ptr{icalcomponent}, icalcomponent_kind), component, kind)
end

function icalcomponent_merge_component(comp, comp_to_merge)
    ccall((:icalcomponent_merge_component, libical), Nothing, (Ptr{icalcomponent}, Ptr{icalcomponent}), comp, comp_to_merge)
end

function icalcomponent_get_current_component(component)
    ccall((:icalcomponent_get_current_component, libical), Ptr{icalcomponent}, (Ptr{icalcomponent},), component)
end

function icalcomponent_get_first_component(component, kind::icalcomponent_kind)
    ccall((:icalcomponent_get_first_component, libical), Ptr{icalcomponent}, (Ptr{icalcomponent}, icalcomponent_kind), component, kind)
end

function icalcomponent_get_next_component(component, kind::icalcomponent_kind)
    ccall((:icalcomponent_get_next_component, libical), Ptr{icalcomponent}, (Ptr{icalcomponent}, icalcomponent_kind), component, kind)
end

function icalcomponent_begin_component(component, kind::icalcomponent_kind)
    ccall((:icalcomponent_begin_component, libical), icalcompiter, (Ptr{icalcomponent}, icalcomponent_kind), component, kind)
end

function icalcomponent_end_component(component, kind::icalcomponent_kind)
    ccall((:icalcomponent_end_component, libical), icalcompiter, (Ptr{icalcomponent}, icalcomponent_kind), component, kind)
end

function icalcompiter_next(i)
    ccall((:icalcompiter_next, libical), Ptr{icalcomponent}, (Ptr{icalcompiter},), i)
end

function icalcompiter_prior(i)
    ccall((:icalcompiter_prior, libical), Ptr{icalcomponent}, (Ptr{icalcompiter},), i)
end

function icalcompiter_deref(i)
    ccall((:icalcompiter_deref, libical), Ptr{icalcomponent}, (Ptr{icalcompiter},), i)
end

function icalcomponent_check_restrictions(comp)
    ccall((:icalcomponent_check_restrictions, libical), Cint, (Ptr{icalcomponent},), comp)
end

function icalcomponent_count_errors(component)
    ccall((:icalcomponent_count_errors, libical), Cint, (Ptr{icalcomponent},), component)
end

function icalcomponent_strip_errors(component)
    ccall((:icalcomponent_strip_errors, libical), Nothing, (Ptr{icalcomponent},), component)
end

function icalcomponent_convert_errors(component)
    ccall((:icalcomponent_convert_errors, libical), Nothing, (Ptr{icalcomponent},), component)
end

function icalcomponent_get_parent(component)
    ccall((:icalcomponent_get_parent, libical), Ptr{icalcomponent}, (Ptr{icalcomponent},), component)
end

function icalcomponent_set_parent(component, parent)
    ccall((:icalcomponent_set_parent, libical), Nothing, (Ptr{icalcomponent}, Ptr{icalcomponent}), component, parent)
end

function icalcomponent_kind_is_valid(kind::icalcomponent_kind)
    ccall((:icalcomponent_kind_is_valid, libical), Cint, (icalcomponent_kind,), kind)
end

function icalcomponent_string_to_kind(string)
    ccall((:icalcomponent_string_to_kind, libical), icalcomponent_kind, (Cstring,), string)
end

function icalcomponent_kind_to_string(kind::icalcomponent_kind)
    ccall((:icalcomponent_kind_to_string, libical), Cstring, (icalcomponent_kind,), kind)
end

function icalcomponent_get_first_real_component(c)
    ccall((:icalcomponent_get_first_real_component, libical), Ptr{icalcomponent}, (Ptr{icalcomponent},), c)
end

function icalcomponent_get_span(comp)
    ccall((:icalcomponent_get_span, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_dtstart(comp, v::Nothing)
    ccall((:icalcomponent_set_dtstart, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_get_dtstart(comp)
    ccall((:icalcomponent_get_dtstart, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_get_dtend(comp)
    ccall((:icalcomponent_get_dtend, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_dtend(comp, v::Nothing)
    ccall((:icalcomponent_set_dtend, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_get_due(comp)
    ccall((:icalcomponent_get_due, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_due(comp, v::Nothing)
    ccall((:icalcomponent_set_due, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_set_duration(comp, v::Nothing)
    ccall((:icalcomponent_set_duration, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_get_duration(comp)
    ccall((:icalcomponent_get_duration, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_method(comp, method::icalproperty_method)
    ccall((:icalcomponent_set_method, libical), Nothing, (Ptr{icalcomponent}, icalproperty_method), comp, method)
end

function icalcomponent_get_method(comp)
    ccall((:icalcomponent_get_method, libical), icalproperty_method, (Ptr{icalcomponent},), comp)
end

function icalcomponent_get_dtstamp(comp)
    ccall((:icalcomponent_get_dtstamp, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_dtstamp(comp, v::Nothing)
    ccall((:icalcomponent_set_dtstamp, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_set_summary(comp, v)
    ccall((:icalcomponent_set_summary, libical), Nothing, (Ptr{icalcomponent}, Cstring), comp, v)
end

function icalcomponent_get_summary(comp)
    ccall((:icalcomponent_get_summary, libical), Cstring, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_comment(comp, v)
    ccall((:icalcomponent_set_comment, libical), Nothing, (Ptr{icalcomponent}, Cstring), comp, v)
end

function icalcomponent_get_comment(comp)
    ccall((:icalcomponent_get_comment, libical), Cstring, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_uid(comp, v)
    ccall((:icalcomponent_set_uid, libical), Nothing, (Ptr{icalcomponent}, Cstring), comp, v)
end

function icalcomponent_get_uid(comp)
    ccall((:icalcomponent_get_uid, libical), Cstring, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_relcalid(comp, v)
    ccall((:icalcomponent_set_relcalid, libical), Nothing, (Ptr{icalcomponent}, Cstring), comp, v)
end

function icalcomponent_get_relcalid(comp)
    ccall((:icalcomponent_get_relcalid, libical), Cstring, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_recurrenceid(comp, v::Nothing)
    ccall((:icalcomponent_set_recurrenceid, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_get_recurrenceid(comp)
    ccall((:icalcomponent_get_recurrenceid, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_description(comp, v)
    ccall((:icalcomponent_set_description, libical), Nothing, (Ptr{icalcomponent}, Cstring), comp, v)
end

function icalcomponent_get_description(comp)
    ccall((:icalcomponent_get_description, libical), Cstring, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_location(comp, v)
    ccall((:icalcomponent_set_location, libical), Nothing, (Ptr{icalcomponent}, Cstring), comp, v)
end

function icalcomponent_get_location(comp)
    ccall((:icalcomponent_get_location, libical), Cstring, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_sequence(comp, v::Cint)
    ccall((:icalcomponent_set_sequence, libical), Nothing, (Ptr{icalcomponent}, Cint), comp, v)
end

function icalcomponent_get_sequence(comp)
    ccall((:icalcomponent_get_sequence, libical), Cint, (Ptr{icalcomponent},), comp)
end

function icalcomponent_set_status(comp, v::Nothing)
    ccall((:icalcomponent_set_status, libical), Nothing, (Ptr{icalcomponent}, Nothing), comp, v)
end

function icalcomponent_get_status(comp)
    ccall((:icalcomponent_get_status, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_foreach_tzid(comp, callback, callback_data)
    ccall((:icalcomponent_foreach_tzid, libical), Nothing, (Ptr{icalcomponent}, Ptr{Nothing}, Ptr{Nothing}), comp, callback, callback_data)
end

function icalcomponent_get_timezone(comp, tzid)
    ccall((:icalcomponent_get_timezone, libical), Ptr{icaltimezone}, (Ptr{icalcomponent}, Cstring), comp, tzid)
end

function icalproperty_recurrence_is_excluded(comp, dtstart, recurtime)
    ccall((:icalproperty_recurrence_is_excluded, libical), Cint, (Ptr{icalcomponent}, Ptr{Nothing}, Ptr{Nothing}), comp, dtstart, recurtime)
end

function icalcomponent_foreach_recurrence(comp, start::Nothing, _end::Nothing, callback, callback_data)
    ccall((:icalcomponent_foreach_recurrence, libical), Nothing, (Ptr{icalcomponent}, Nothing, Nothing, Ptr{Nothing}, Ptr{Nothing}), comp, start, _end, callback, callback_data)
end

function icalcomponent_normalize(comp)
    ccall((:icalcomponent_normalize, libical), Nothing, (Ptr{icalcomponent},), comp)
end

function icalcomponent_new_vcalendar()
    ccall((:icalcomponent_new_vcalendar, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vevent()
    ccall((:icalcomponent_new_vevent, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vtodo()
    ccall((:icalcomponent_new_vtodo, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vjournal()
    ccall((:icalcomponent_new_vjournal, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_valarm()
    ccall((:icalcomponent_new_valarm, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vfreebusy()
    ccall((:icalcomponent_new_vfreebusy, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vtimezone()
    ccall((:icalcomponent_new_vtimezone, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_xstandard()
    ccall((:icalcomponent_new_xstandard, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_xdaylight()
    ccall((:icalcomponent_new_xdaylight, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vagenda()
    ccall((:icalcomponent_new_vagenda, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vquery()
    ccall((:icalcomponent_new_vquery, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vavailability()
    ccall((:icalcomponent_new_vavailability, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_xavailable()
    ccall((:icalcomponent_new_xavailable, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vpoll()
    ccall((:icalcomponent_new_vpoll, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vvoter()
    ccall((:icalcomponent_new_vvoter, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_xvote()
    ccall((:icalcomponent_new_xvote, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_vpatch()
    ccall((:icalcomponent_new_vpatch, libical), Ptr{icalcomponent}, ())
end

function icalcomponent_new_xpatch()
    ccall((:icalcomponent_new_xpatch, libical), Ptr{icalcomponent}, ())
end

function icaltimezone_new()
    ccall((:icaltimezone_new, libical), Ptr{icaltimezone}, ())
end

function icaltimezone_copy(originalzone)
    ccall((:icaltimezone_copy, libical), Ptr{icaltimezone}, (Ptr{icaltimezone},), originalzone)
end

function icaltimezone_free(zone, free_struct::Cint)
    ccall((:icaltimezone_free, libical), Nothing, (Ptr{icaltimezone}, Cint), zone, free_struct)
end

function icaltimezone_set_tzid_prefix(new_prefix)
    ccall((:icaltimezone_set_tzid_prefix, libical), Nothing, (Cstring,), new_prefix)
end

function icaltimezone_free_builtin_timezones()
    ccall((:icaltimezone_free_builtin_timezones, libical), Nothing, ())
end

function icaltimezone_get_builtin_timezones()
    ccall((:icaltimezone_get_builtin_timezones, libical), Ptr{icalarray}, ())
end

function icaltimezone_get_builtin_timezone(location)
    ccall((:icaltimezone_get_builtin_timezone, libical), Ptr{icaltimezone}, (Cstring,), location)
end

function icaltimezone_get_builtin_timezone_from_offset(offset::Cint, tzname)
    ccall((:icaltimezone_get_builtin_timezone_from_offset, libical), Ptr{icaltimezone}, (Cint, Cstring), offset, tzname)
end

function icaltimezone_get_builtin_timezone_from_tzid(tzid)
    ccall((:icaltimezone_get_builtin_timezone_from_tzid, libical), Ptr{icaltimezone}, (Cstring,), tzid)
end

function icaltimezone_get_utc_timezone()
    ccall((:icaltimezone_get_utc_timezone, libical), Ptr{icaltimezone}, ())
end

function icaltimezone_get_tzid(zone)
    ccall((:icaltimezone_get_tzid, libical), Cstring, (Ptr{icaltimezone},), zone)
end

function icaltimezone_get_location(zone)
    ccall((:icaltimezone_get_location, libical), Cstring, (Ptr{icaltimezone},), zone)
end

function icaltimezone_get_tznames(zone)
    ccall((:icaltimezone_get_tznames, libical), Cstring, (Ptr{icaltimezone},), zone)
end

function icaltimezone_get_latitude(zone)
    ccall((:icaltimezone_get_latitude, libical), Cdouble, (Ptr{icaltimezone},), zone)
end

function icaltimezone_get_longitude(zone)
    ccall((:icaltimezone_get_longitude, libical), Cdouble, (Ptr{icaltimezone},), zone)
end

function icaltimezone_get_component(zone)
    ccall((:icaltimezone_get_component, libical), Ptr{icalcomponent}, (Ptr{icaltimezone},), zone)
end

function icaltimezone_set_component(zone, comp)
    ccall((:icaltimezone_set_component, libical), Cint, (Ptr{icaltimezone}, Ptr{icalcomponent}), zone, comp)
end

function icaltimezone_get_display_name(zone)
    ccall((:icaltimezone_get_display_name, libical), Cstring, (Ptr{icaltimezone},), zone)
end

function icaltimezone_convert_time(tt, from_zone, to_zone)
    ccall((:icaltimezone_convert_time, libical), Nothing, (Ptr{Nothing}, Ptr{icaltimezone}, Ptr{icaltimezone}), tt, from_zone, to_zone)
end

function icaltimezone_get_utc_offset(zone, tt, is_daylight)
    ccall((:icaltimezone_get_utc_offset, libical), Cint, (Ptr{icaltimezone}, Ptr{Nothing}, Ptr{Cint}), zone, tt, is_daylight)
end

function icaltimezone_get_utc_offset_of_utc_time(zone, tt, is_daylight)
    ccall((:icaltimezone_get_utc_offset_of_utc_time, libical), Cint, (Ptr{icaltimezone}, Ptr{Nothing}, Ptr{Cint}), zone, tt, is_daylight)
end

function icaltimezone_array_new()
    ccall((:icaltimezone_array_new, libical), Ptr{icalarray}, ())
end

function icaltimezone_array_append_from_vtimezone(timezones, child)
    ccall((:icaltimezone_array_append_from_vtimezone, libical), Nothing, (Ptr{icalarray}, Ptr{icalcomponent}), timezones, child)
end

function icaltimezone_array_free(timezones)
    ccall((:icaltimezone_array_free, libical), Nothing, (Ptr{icalarray},), timezones)
end

function icaltimezone_expand_vtimezone(comp, end_year::Cint, changes)
    ccall((:icaltimezone_expand_vtimezone, libical), Nothing, (Ptr{icalcomponent}, Cint, Ptr{icalarray}), comp, end_year, changes)
end

function icaltimezone_get_location_from_vtimezone(component)
    ccall((:icaltimezone_get_location_from_vtimezone, libical), Cstring, (Ptr{icalcomponent},), component)
end

function icaltimezone_get_tznames_from_vtimezone(component)
    ccall((:icaltimezone_get_tznames_from_vtimezone, libical), Cstring, (Ptr{icalcomponent},), component)
end

function set_zone_directory(path)
    ccall((:set_zone_directory, libical), Nothing, (Cstring,), path)
end

function free_zone_directory()
    ccall((:free_zone_directory, libical), Nothing, ())
end

function icaltimezone_release_zone_tab()
    ccall((:icaltimezone_release_zone_tab, libical), Nothing, ())
end

function icaltimezone_set_builtin_tzdata(set::Cint)
    ccall((:icaltimezone_set_builtin_tzdata, libical), Nothing, (Cint,), set)
end

function icaltimezone_get_builtin_tzdata()
    ccall((:icaltimezone_get_builtin_tzdata, libical), Cint, ())
end

function icaltimezone_dump_changes(zone, max_year::Cint, fp)
    ccall((:icaltimezone_dump_changes, libical), Cint, (Ptr{icaltimezone}, Cint, Ptr{Nothing}), zone, max_year, fp)
end

function icaltimezone_tzid_prefix()
    ccall((:icaltimezone_tzid_prefix, libical), Cstring, ())
end

function icaltzutil_get_zone_directory()
    ccall((:icaltzutil_get_zone_directory, libical), Cstring, ())
end

function icaltzutil_fetch_timezone(location)
    ccall((:icaltzutil_fetch_timezone, libical), Ptr{icalcomponent}, (Cstring,), location)
end

function icalparser_new()
    ccall((:icalparser_new, libical), Ptr{icalparser}, ())
end

function icalparser_add_line(parser, str)
    ccall((:icalparser_add_line, libical), Ptr{icalcomponent}, (Ptr{icalparser}, Cstring), parser, str)
end

function icalparser_clean(parser)
    ccall((:icalparser_clean, libical), Ptr{icalcomponent}, (Ptr{icalparser},), parser)
end

function icalparser_get_state(parser)
    ccall((:icalparser_get_state, libical), icalparser_state, (Ptr{icalparser},), parser)
end

function icalparser_free(parser)
    ccall((:icalparser_free, libical), Nothing, (Ptr{icalparser},), parser)
end

function icalparser_parse(parser, line_gen_func)
    ccall((:icalparser_parse, libical), Ptr{icalcomponent}, (Ptr{icalparser}, Ptr{Nothing}), parser, line_gen_func)
end

function icalparser_set_gen_data(parser, data)
    ccall((:icalparser_set_gen_data, libical), Nothing, (Ptr{icalparser}, Ptr{Nothing}), parser, data)
end

function icalparser_parse_string(str)
    ccall((:icalparser_parse_string, libical), Ptr{icalcomponent}, (Cstring,), str)
end

function icalparser_get_line(parser, line_gen_func)
    ccall((:icalparser_get_line, libical), Cstring, (Ptr{icalparser}, Ptr{Nothing}), parser, line_gen_func)
end

function icalparser_string_line_generator(out, buf_size::Csize_t, d)
    ccall((:icalparser_string_line_generator, libical), Cstring, (Cstring, Csize_t, Ptr{Nothing}), out, buf_size, d)
end

function icalmemory_tmp_buffer(size::Csize_t)
    ccall((:icalmemory_tmp_buffer, libical), Ptr{Nothing}, (Csize_t,), size)
end

function icalmemory_tmp_copy(str)
    ccall((:icalmemory_tmp_copy, libical), Cstring, (Cstring,), str)
end

function icalmemory_add_tmp_buffer(buf)
    ccall((:icalmemory_add_tmp_buffer, libical), Nothing, (Ptr{Nothing},), buf)
end

function icalmemory_free_ring()
    ccall((:icalmemory_free_ring, libical), Nothing, ())
end

function icalmemory_new_buffer(size::Csize_t)
    ccall((:icalmemory_new_buffer, libical), Ptr{Nothing}, (Csize_t,), size)
end

function icalmemory_resize_buffer(buf, size::Csize_t)
    ccall((:icalmemory_resize_buffer, libical), Ptr{Nothing}, (Ptr{Nothing}, Csize_t), buf, size)
end

function icalmemory_free_buffer(buf)
    ccall((:icalmemory_free_buffer, libical), Nothing, (Ptr{Nothing},), buf)
end

function icalmemory_append_string(buf, pos, buf_size, string)
    ccall((:icalmemory_append_string, libical), Nothing, (Ptr{Cstring}, Ptr{Cstring}, Ptr{Csize_t}, Cstring), buf, pos, buf_size, string)
end

function icalmemory_append_char(buf, pos, buf_size, ch::UInt8)
    ccall((:icalmemory_append_char, libical), Nothing, (Ptr{Cstring}, Ptr{Cstring}, Ptr{Csize_t}, UInt8), buf, pos, buf_size, ch)
end

function icalmemory_strdup(s)
    ccall((:icalmemory_strdup, libical), Cstring, (Cstring,), s)
end

function icalerror_stop_here()
    ccall((:icalerror_stop_here, libical), Nothing, ())
end

function icalerror_crash_here()
    ccall((:icalerror_crash_here, libical), Nothing, ())
end

function icalerrno_return()
    ccall((:icalerrno_return, libical), Ptr{icalerrorenum}, ())
end

function icalerror_set_errors_are_fatal(fatal::Cint)
    ccall((:icalerror_set_errors_are_fatal, libical), Nothing, (Cint,), fatal)
end

function icalerror_get_errors_are_fatal()
    ccall((:icalerror_get_errors_are_fatal, libical), Cint, ())
end

function icalerror_clear_errno()
    ccall((:icalerror_clear_errno, libical), Nothing, ())
end

function icalerror_strerror(e::icalerrorenum)
    ccall((:icalerror_strerror, libical), Cstring, (icalerrorenum,), e)
end

function icalerror_perror()
    ccall((:icalerror_perror, libical), Cstring, ())
end

function ical_bt()
    ccall((:ical_bt, libical), Nothing, ())
end

function icalerror_set_error_state(error::icalerrorenum, state::icalerrorstate)
    ccall((:icalerror_set_error_state, libical), Nothing, (icalerrorenum, icalerrorstate), error, state)
end

function icalerror_get_error_state(error::icalerrorenum)
    ccall((:icalerror_get_error_state, libical), icalerrorstate, (icalerrorenum,), error)
end

function icalerror_error_from_string(str)
    ccall((:icalerror_error_from_string, libical), icalerrorenum, (Cstring,), str)
end

function icalerror_set_errno(x::icalerrorenum)
    ccall((:icalerror_set_errno, libical), Nothing, (icalerrorenum,), x)
end

function icalerror_supress(error)
    ccall((:icalerror_supress, libical), icalerrorstate, (Cstring,), error)
end

function icalerror_restore(error, es::icalerrorstate)
    ccall((:icalerror_restore, libical), Nothing, (Cstring, icalerrorstate), error, es)
end

function icalrestriction_compare(restr::icalrestriction_kind, count::Cint)
    ccall((:icalrestriction_compare, libical), Cint, (icalrestriction_kind, Cint), restr, count)
end

function icalrestriction_check(comp)
    ccall((:icalrestriction_check, libical), Cint, (Ptr{icalcomponent},), comp)
end

function sspm_major_type_string(_type::Nothing)
    ccall((:sspm_major_type_string, libical), Cstring, (Nothing,), _type)
end

function sspm_minor_type_string(_type::Nothing)
    ccall((:sspm_minor_type_string, libical), Cstring, (Nothing,), _type)
end

function sspm_encoding_string(_type::Nothing)
    ccall((:sspm_encoding_string, libical), Cstring, (Nothing,), _type)
end

function sspm_parse_mime(parts, max_parts::Csize_t, actions, get_string, get_string_data, first_header)
    ccall((:sspm_parse_mime, libical), Cint, (Ptr{Nothing}, Csize_t, Ptr{Nothing}, Ptr{Nothing}, Ptr{Nothing}, Ptr{Nothing}), parts, max_parts, actions, get_string, get_string_data, first_header)
end

function sspm_free_parts(parts, max_parts::Csize_t)
    ccall((:sspm_free_parts, libical), Nothing, (Ptr{Nothing}, Csize_t), parts, max_parts)
end

function decode_quoted_printable(dest, src, size)
    ccall((:decode_quoted_printable, libical), Cstring, (Cstring, Cstring, Ptr{Csize_t}), dest, src, size)
end

function decode_base64(dest, src, size)
    ccall((:decode_base64, libical), Cstring, (Cstring, Cstring, Ptr{Csize_t}), dest, src, size)
end

function sspm_write_mime(parts, num_parts::Csize_t, output_string, header)
    ccall((:sspm_write_mime, libical), Cint, (Ptr{Nothing}, Csize_t, Ptr{Cstring}, Cstring), parts, num_parts, output_string, header)
end

function icalmime_parse(line_gen_func, data)
    ccall((:icalmime_parse, libical), Ptr{icalcomponent}, (Ptr{Nothing}, Ptr{Nothing}), line_gen_func, data)
end

function icallangbind_new_array(size::Cint)
    ccall((:icallangbind_new_array, libical), Ptr{Cint}, (Cint,), size)
end

function icallangbind_free_array(array)
    ccall((:icallangbind_free_array, libical), Nothing, (Ptr{Cint},), array)
end

function icallangbind_access_array(array, index::Cint)
    ccall((:icallangbind_access_array, libical), Cint, (Ptr{Cint}, Cint), array, index)
end

function icallangbind_get_first_property(c, prop)
    ccall((:icallangbind_get_first_property, libical), Ptr{icalproperty}, (Ptr{icalcomponent}, Cstring), c, prop)
end

function icallangbind_get_next_property(c, prop)
    ccall((:icallangbind_get_next_property, libical), Ptr{icalproperty}, (Ptr{icalcomponent}, Cstring), c, prop)
end

function icallangbind_get_first_component(c, comp)
    ccall((:icallangbind_get_first_component, libical), Ptr{icalcomponent}, (Ptr{icalcomponent}, Cstring), c, comp)
end

function icallangbind_get_next_component(c, comp)
    ccall((:icallangbind_get_next_component, libical), Ptr{icalcomponent}, (Ptr{icalcomponent}, Cstring), c, comp)
end

function icallangbind_get_first_parameter(prop)
    ccall((:icallangbind_get_first_parameter, libical), Ptr{icalparameter}, (Ptr{icalproperty},), prop)
end

function icallangbind_get_next_parameter(prop)
    ccall((:icallangbind_get_next_parameter, libical), Ptr{icalparameter}, (Ptr{icalproperty},), prop)
end

function icallangbind_property_eval_string(prop, sep)
    ccall((:icallangbind_property_eval_string, libical), Cstring, (Ptr{icalproperty}, Cstring), prop, sep)
end

function icallangbind_property_eval_string_r(prop, sep)
    ccall((:icallangbind_property_eval_string_r, libical), Cstring, (Ptr{icalproperty}, Cstring), prop, sep)
end

function icallangbind_string_to_open_flag(str)
    ccall((:icallangbind_string_to_open_flag, libical), Cint, (Cstring,), str)
end

function icallangbind_quote_as_ical(str)
    ccall((:icallangbind_quote_as_ical, libical), Cstring, (Cstring,), str)
end

function icallangbind_quote_as_ical_r(str)
    ccall((:icallangbind_quote_as_ical_r, libical), Cstring, (Cstring,), str)
end
