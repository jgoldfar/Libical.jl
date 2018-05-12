# Automatically generated using Clang.jl wrap_c, version 0.0.0

const OBJC_NEW_PROPERTIES = 1
const ICAL_PACKAGE = "libical"
const ICAL_VERSION = "3.0"
const ICAL_MAJOR_VERSION = 3
const ICAL_MINOR_VERSION = 0
const ICAL_PATCH_VERSION = 1
const ICAL_MICRO_VERSION = ICAL_PATCH_VERSION

# Skipping MacroDefinition: ICAL_CHECK_VERSION ( major , minor , micro ) ; ( ICAL_MAJOR_VERSION > ( major ) || ; ( ICAL_MAJOR_VERSION == ( major ) && ICAL_MINOR_VERSION > ( minor ) ) || ; ( ICAL_MAJOR_VERSION == ( major ) && ICAL_MINOR_VERSION == ( minor ) && ; ICAL_MICRO_VERSION >= ( micro ) ) )
# Skipping MacroDefinition: LIBICAL_ICAL_EXPORT __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: LIBICAL_ICAL_NO_EXPORT __attribute__ ( ( visibility ( "hidden" ) ) )

const CLOCKS_PER_SEC = 1000000

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const _CLOCK_REALTIME = (UInt32)(0)
const _CLOCK_MONOTONIC = (UInt32)(6)
const _CLOCK_MONOTONIC_RAW = (UInt32)(4)
const _CLOCK_MONOTONIC_RAW_APPROX = (UInt32)(5)
const _CLOCK_UPTIME_RAW = (UInt32)(8)
const _CLOCK_UPTIME_RAW_APPROX = (UInt32)(9)
const _CLOCK_PROCESS_CPUTIME_ID = (UInt32)(12)
const _CLOCK_THREAD_CPUTIME_ID = (UInt32)(16)
# end enum ANONYMOUS_1

const CLOCK_REALTIME = _CLOCK_REALTIME
const CLOCK_MONOTONIC = _CLOCK_MONOTONIC
const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW
const CLOCK_MONOTONIC_RAW_APPROX = _CLOCK_MONOTONIC_RAW_APPROX
const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW
const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX
const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID
const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID

# Skipping MacroDefinition: icalenum_property_kind_to_string ( x ) icalproperty_kind_to_string ( x )
# Skipping MacroDefinition: icalenum_string_to_property_kind ( x ) icalproperty_string_to_kind ( x )
# Skipping MacroDefinition: icalenum_property_kind_to_value_kind ( x ) icalproperty_kind_to_value_kind ( x )
# Skipping MacroDefinition: icalenum_method_to_string ( x ) icalproperty_method_to_string ( x )
# Skipping MacroDefinition: icalenum_string_to_method ( x ) icalproperty_string_to_method ( x )
# Skipping MacroDefinition: icalenum_status_to_string ( x ) icalproperty_status_to_string ( x )
# Skipping MacroDefinition: icalenum_string_to_status ( x ) icalproperty_string_to_status ( x )
# Skipping MacroDefinition: icalenum_string_to_value_kind ( x ) icalvalue_string_to_kind ( x )
# Skipping MacroDefinition: icalenum_value_kind_to_string ( x ) icalvalue_kind_to_string ( x )
# Skipping MacroDefinition: icalenum_component_kind_to_string ( x ) icalcomponent_kind_to_string ( x )
# Skipping MacroDefinition: icalenum_string_to_component_kind ( x ) icalcomponent_string_to_kind ( x )

const ICAL_BY_SECOND_SIZE = 62
const ICAL_BY_MINUTE_SIZE = 61
const ICAL_BY_HOUR_SIZE = 25
const ICAL_BY_MONTH_SIZE = 14
const ICAL_BY_MONTHDAY_SIZE = 32
const ICAL_BY_WEEKNO_SIZE = 56
const ICAL_BY_YEARDAY_SIZE = 386
const ICAL_BY_SETPOS_SIZE = ICAL_BY_YEARDAY_SIZE

# Skipping MacroDefinition: ICAL_BY_DAY_SIZE 7 * ( ICAL_BY_WEEKNO_SIZE - 1 ) + 1

const ICALPROPERTY_FIRST_ENUM = 10000
const ICALPROPERTY_LAST_ENUM = 11300
const ICALPARAMETER_FIRST_ENUM = 20000
const ICALPARAMETER_LAST_ENUM = 22300
const ICAL_BOOLEAN_TRUE = 1
const ICAL_BOOLEAN_FALSE = 0

const ZONES_TAB_SYSTEM_FILENAME = "zone.tab"

# Skipping MacroDefinition: assert ( e ) ( __builtin_expect ( ! ( e ) , 0 ) ? __assert_rtn ( __func__ , __FILE__ , __LINE__ , # e ) : ( void ) 0 )
# Skipping MacroDefinition: icalerrno ( * ( icalerrno_return ( ) ) )
# Skipping MacroDefinition: icalerror_warn ( message ) ; { fprintf ( stderr , "%s:%d: %s\n" , __FILE__ , __LINE__ , message ) ; }

const ICAL_ERRORS_ARE_FATAL = 0

# Skipping MacroDefinition: icalerror_check_value_type ( value , type ) ;
# Skipping MacroDefinition: icalerror_check_property_type ( value , type ) ;
# Skipping MacroDefinition: icalerror_check_parameter_type ( value , type ) ;
# Skipping MacroDefinition: icalerror_check_component_type ( value , type ) ;
# Skipping MacroDefinition: icalerror_assert ( test , message )
# Skipping MacroDefinition: icalerror_check_arg ( test , arg ) ; if ( ! ( test ) ) { ; icalerror_set_errno ( ICAL_BADARG_ERROR ) ; ; }
# Skipping MacroDefinition: icalerror_check_arg_rv ( test , arg ) ; if ( ! ( test ) ) { ; icalerror_set_errno ( ICAL_BADARG_ERROR ) ; ; return ; ; }
# Skipping MacroDefinition: icalerror_check_arg_rz ( test , arg ) ; if ( ! ( test ) ) { ; icalerror_set_errno ( ICAL_BADARG_ERROR ) ; ; return 0 ; ; }
# Skipping MacroDefinition: icalerror_check_arg_re ( test , arg , error ) ; if ( ! ( test ) ) { ; icalerror_stop_here ( ) ; ; assert ( 0 ) ; ; return error ; ; }
# Skipping MacroDefinition: icalerror_check_arg_rx ( test , arg , x ) ; if ( ! ( test ) ) { ; icalerror_set_errno ( ICAL_BADARG_ERROR ) ; ; return x ; ; }

mutable struct tm
    tm_sec::Cint
    tm_min::Cint
    tm_hour::Cint
    tm_mday::Cint
    tm_mon::Cint
    tm_year::Cint
    tm_wday::Cint
    tm_yday::Cint
    tm_isdst::Cint
    tm_gmtoff::Clong
    tm_zone::Cstring
end

mutable struct _icaltimezone
end

const icaltimezone = Nothing

const clock_t = Clonglong
const clockid_t = Cint
# time_t should be an Int, apparently.
# See https://github.com/JuliaLang/julia/blob/195008690739cc98719773c734a07b41a618906c/base/libc.jl#L160
# Which calls some version of the code here
# https://github.com/JuliaLang/julia/blob/ee66f2ef53e53049e85f044023741bcc56852cc9/src/jl_uv.c#L315
const time_t = Int

mutable struct timespec
    tv_sec::time_t
    tv_nsec::Clong
end

mutable struct icaltime_span
    start::time_t
    _end::time_t
    is_busy::Cint
end

mutable struct icaltimetype
    year::Cint
    month::Cint
    day::Cint
    hour::Cint
    minute::Cint
    second::Cint
    is_date::Cint
    is_daylight::Cint
    zone::Ptr{icaltimezone}
end

mutable struct icaldurationtype
    is_neg::Cint
    days::UInt32
    weeks::UInt32
    hours::UInt32
    minutes::UInt32
    seconds::UInt32
end

mutable struct icalperiodtype
    start::Nothing
    _end::Nothing
    duration::Nothing
end

# begin enum icalcomponent_kind
const icalcomponent_kind = UInt32
const ICAL_NO_COMPONENT = (UInt32)(0)
const ICAL_ANY_COMPONENT = (UInt32)(1)
const ICAL_XROOT_COMPONENT = (UInt32)(2)
const ICAL_XATTACH_COMPONENT = (UInt32)(3)
const ICAL_VEVENT_COMPONENT = (UInt32)(4)
const ICAL_VTODO_COMPONENT = (UInt32)(5)
const ICAL_VJOURNAL_COMPONENT = (UInt32)(6)
const ICAL_VCALENDAR_COMPONENT = (UInt32)(7)
const ICAL_VAGENDA_COMPONENT = (UInt32)(8)
const ICAL_VFREEBUSY_COMPONENT = (UInt32)(9)
const ICAL_VALARM_COMPONENT = (UInt32)(10)
const ICAL_XAUDIOALARM_COMPONENT = (UInt32)(11)
const ICAL_XDISPLAYALARM_COMPONENT = (UInt32)(12)
const ICAL_XEMAILALARM_COMPONENT = (UInt32)(13)
const ICAL_XPROCEDUREALARM_COMPONENT = (UInt32)(14)
const ICAL_VTIMEZONE_COMPONENT = (UInt32)(15)
const ICAL_XSTANDARD_COMPONENT = (UInt32)(16)
const ICAL_XDAYLIGHT_COMPONENT = (UInt32)(17)
const ICAL_X_COMPONENT = (UInt32)(18)
const ICAL_VSCHEDULE_COMPONENT = (UInt32)(19)
const ICAL_VQUERY_COMPONENT = (UInt32)(20)
const ICAL_VREPLY_COMPONENT = (UInt32)(21)
const ICAL_VCAR_COMPONENT = (UInt32)(22)
const ICAL_VCOMMAND_COMPONENT = (UInt32)(23)
const ICAL_XLICINVALID_COMPONENT = (UInt32)(24)
const ICAL_XLICMIMEPART_COMPONENT = (UInt32)(25)
const ICAL_VAVAILABILITY_COMPONENT = (UInt32)(26)
const ICAL_XAVAILABLE_COMPONENT = (UInt32)(27)
const ICAL_VPOLL_COMPONENT = (UInt32)(28)
const ICAL_VVOTER_COMPONENT = (UInt32)(29)
const ICAL_XVOTE_COMPONENT = (UInt32)(30)
const ICAL_VPATCH_COMPONENT = (UInt32)(31)
const ICAL_XPATCH_COMPONENT = (UInt32)(32)
# end enum icalcomponent_kind

# begin enum icalrequeststatus
const icalrequeststatus = UInt32
const ICAL_UNKNOWN_STATUS = (UInt32)(0)
const ICAL_2_0_SUCCESS_STATUS = (UInt32)(1)
const ICAL_2_1_FALLBACK_STATUS = (UInt32)(2)
const ICAL_2_2_IGPROP_STATUS = (UInt32)(3)
const ICAL_2_3_IGPARAM_STATUS = (UInt32)(4)
const ICAL_2_4_IGXPROP_STATUS = (UInt32)(5)
const ICAL_2_5_IGXPARAM_STATUS = (UInt32)(6)
const ICAL_2_6_IGCOMP_STATUS = (UInt32)(7)
const ICAL_2_7_FORWARD_STATUS = (UInt32)(8)
const ICAL_2_8_ONEEVENT_STATUS = (UInt32)(9)
const ICAL_2_9_TRUNC_STATUS = (UInt32)(10)
const ICAL_2_10_ONETODO_STATUS = (UInt32)(11)
const ICAL_2_11_TRUNCRRULE_STATUS = (UInt32)(12)
const ICAL_3_0_INVPROPNAME_STATUS = (UInt32)(13)
const ICAL_3_1_INVPROPVAL_STATUS = (UInt32)(14)
const ICAL_3_2_INVPARAM_STATUS = (UInt32)(15)
const ICAL_3_3_INVPARAMVAL_STATUS = (UInt32)(16)
const ICAL_3_4_INVCOMP_STATUS = (UInt32)(17)
const ICAL_3_5_INVTIME_STATUS = (UInt32)(18)
const ICAL_3_6_INVRULE_STATUS = (UInt32)(19)
const ICAL_3_7_INVCU_STATUS = (UInt32)(20)
const ICAL_3_8_NOAUTH_STATUS = (UInt32)(21)
const ICAL_3_9_BADVERSION_STATUS = (UInt32)(22)
const ICAL_3_10_TOOBIG_STATUS = (UInt32)(23)
const ICAL_3_11_MISSREQCOMP_STATUS = (UInt32)(24)
const ICAL_3_12_UNKCOMP_STATUS = (UInt32)(25)
const ICAL_3_13_BADCOMP_STATUS = (UInt32)(26)
const ICAL_3_14_NOCAP_STATUS = (UInt32)(27)
const ICAL_3_15_INVCOMMAND = (UInt32)(28)
const ICAL_4_0_BUSY_STATUS = (UInt32)(29)
const ICAL_4_1_STORE_ACCESS_DENIED = (UInt32)(30)
const ICAL_4_2_STORE_FAILED = (UInt32)(31)
const ICAL_4_3_STORE_NOT_FOUND = (UInt32)(32)
const ICAL_5_0_MAYBE_STATUS = (UInt32)(33)
const ICAL_5_1_UNAVAIL_STATUS = (UInt32)(34)
const ICAL_5_2_NOSERVICE_STATUS = (UInt32)(35)
const ICAL_5_3_NOSCHED_STATUS = (UInt32)(36)
const ICAL_6_1_CONTAINER_NOT_FOUND = (UInt32)(37)
const ICAL_9_0_UNRECOGNIZED_COMMAND = (UInt32)(38)
# end enum icalrequeststatus

mutable struct icaldatetimeperiodtype
    time::Nothing
    period::Nothing
end

mutable struct icalgeotype
    lat::Cdouble
    lon::Cdouble
end

mutable struct icaltriggertype
    time::Nothing
    duration::Nothing
end

mutable struct icalreqstattype
    code::icalrequeststatus
    desc::Cstring
    debug::Cstring
end

mutable struct icaltimezonephase
    tzname::Cstring
    is_stdandard::Cint
    dtstart::Nothing
    offsetto::Cint
    tzoffsetfrom::Cint
    comment::Cstring
    rdate::Nothing
    rrule::Cstring
end

mutable struct icaltimezonetype
    tzid::Cstring
    last_mod::Nothing
    tzurl::Cstring
    phases::Ptr{Nothing}
end

# begin enum ical_unknown_token_handling
const ical_unknown_token_handling = UInt32
const ICAL_ASSUME_IANA_TOKEN = (UInt32)(1)
const ICAL_DISCARD_TOKEN = (UInt32)(2)
const ICAL_TREAT_AS_ERROR = (UInt32)(3)
# end enum ical_unknown_token_handling

mutable struct _icalarray
    element_size::Csize_t
    increment_size::Csize_t
    num_elements::Csize_t
    space_allocated::Csize_t
    chunks::Ptr{Ptr{Nothing}}
end

const icalarray = Nothing

# begin enum icalrecurrencetype_frequency
const icalrecurrencetype_frequency = UInt32
const ICAL_SECONDLY_RECURRENCE = (UInt32)(0)
const ICAL_MINUTELY_RECURRENCE = (UInt32)(1)
const ICAL_HOURLY_RECURRENCE = (UInt32)(2)
const ICAL_DAILY_RECURRENCE = (UInt32)(3)
const ICAL_WEEKLY_RECURRENCE = (UInt32)(4)
const ICAL_MONTHLY_RECURRENCE = (UInt32)(5)
const ICAL_YEARLY_RECURRENCE = (UInt32)(6)
const ICAL_NO_RECURRENCE = (UInt32)(7)
# end enum icalrecurrencetype_frequency

# begin enum icalrecurrencetype_weekday
const icalrecurrencetype_weekday = UInt32
const ICAL_NO_WEEKDAY = (UInt32)(0)
const ICAL_SUNDAY_WEEKDAY = (UInt32)(1)
const ICAL_MONDAY_WEEKDAY = (UInt32)(2)
const ICAL_TUESDAY_WEEKDAY = (UInt32)(3)
const ICAL_WEDNESDAY_WEEKDAY = (UInt32)(4)
const ICAL_THURSDAY_WEEKDAY = (UInt32)(5)
const ICAL_FRIDAY_WEEKDAY = (UInt32)(6)
const ICAL_SATURDAY_WEEKDAY = (UInt32)(7)
# end enum icalrecurrencetype_weekday

# begin enum icalrecurrencetype_skip
const icalrecurrencetype_skip = UInt32
const ICAL_SKIP_BACKWARD = (UInt32)(0)
const ICAL_SKIP_FORWARD = (UInt32)(1)
const ICAL_SKIP_OMIT = (UInt32)(2)
const ICAL_SKIP_UNDEFINED = (UInt32)(3)
# end enum icalrecurrencetype_skip

# begin enum icalrecurrence_array_max_values
const icalrecurrence_array_max_values = UInt32
const ICAL_RECURRENCE_ARRAY_MAX = (UInt32)(32639)
const ICAL_RECURRENCE_ARRAY_MAX_BYTE = (UInt32)(127)
# end enum icalrecurrence_array_max_values

mutable struct icalrecurrencetype
    freq::icalrecurrencetype_frequency
    until::Nothing
    count::Cint
    interval::Int16
    week_start::icalrecurrencetype_weekday
    by_second::NTuple{62, Int16}
    by_minute::NTuple{61, Int16}
    by_hour::NTuple{25, Int16}
    by_day::NTuple{386, Int16}
    by_month_day::NTuple{32, Int16}
    by_year_day::NTuple{386, Int16}
    by_week_no::NTuple{56, Int16}
    by_month::NTuple{14, Int16}
    by_set_pos::NTuple{386, Int16}
    rscale::Cstring
    skip::icalrecurrencetype_skip
end

mutable struct icalrecur_iterator_impl
end

const icalrecur_iterator = Nothing

mutable struct icalattach_impl
end

const icalattach = Nothing
const icalattach_free_fn_t = Ptr{Nothing}

mutable struct icalvalue_impl
end

const icalvalue = Nothing

# begin enum icalvalue_kind
const icalvalue_kind = UInt32
const ICAL_ANY_VALUE = (UInt32)(5000)
const ICAL_ACTION_VALUE = (UInt32)(5027)
const ICAL_ATTACH_VALUE = (UInt32)(5003)
const ICAL_BINARY_VALUE = (UInt32)(5011)
const ICAL_BOOLEAN_VALUE = (UInt32)(5021)
const ICAL_BUSYTYPE_VALUE = (UInt32)(5032)
const ICAL_CALADDRESS_VALUE = (UInt32)(5023)
const ICAL_CARLEVEL_VALUE = (UInt32)(5016)
const ICAL_CLASS_VALUE = (UInt32)(5019)
const ICAL_CMD_VALUE = (UInt32)(5010)
const ICAL_DATE_VALUE = (UInt32)(5002)
const ICAL_DATETIME_VALUE = (UInt32)(5028)
const ICAL_DATETIMEDATE_VALUE = (UInt32)(5036)
const ICAL_DATETIMEPERIOD_VALUE = (UInt32)(5015)
const ICAL_DURATION_VALUE = (UInt32)(5020)
const ICAL_FLOAT_VALUE = (UInt32)(5013)
const ICAL_GEO_VALUE = (UInt32)(5004)
const ICAL_INTEGER_VALUE = (UInt32)(5017)
const ICAL_METHOD_VALUE = (UInt32)(5030)
const ICAL_PERIOD_VALUE = (UInt32)(5014)
const ICAL_POLLCOMPLETION_VALUE = (UInt32)(5034)
const ICAL_POLLMODE_VALUE = (UInt32)(5033)
const ICAL_QUERY_VALUE = (UInt32)(5001)
const ICAL_QUERYLEVEL_VALUE = (UInt32)(5012)
const ICAL_RECUR_VALUE = (UInt32)(5026)
const ICAL_REQUESTSTATUS_VALUE = (UInt32)(5009)
const ICAL_STATUS_VALUE = (UInt32)(5005)
const ICAL_STRING_VALUE = (UInt32)(5007)
const ICAL_TASKMODE_VALUE = (UInt32)(5035)
const ICAL_TEXT_VALUE = (UInt32)(5008)
const ICAL_TRANSP_VALUE = (UInt32)(5006)
const ICAL_TRIGGER_VALUE = (UInt32)(5024)
const ICAL_URI_VALUE = (UInt32)(5018)
const ICAL_UTCOFFSET_VALUE = (UInt32)(5029)
const ICAL_X_VALUE = (UInt32)(5022)
const ICAL_XLICCLASS_VALUE = (UInt32)(5025)
const ICAL_NO_VALUE = (UInt32)(5031)
# end enum icalvalue_kind

# begin enum icalproperty_action
const icalproperty_action = UInt32
const ICAL_ACTION_X = (UInt32)(10000)
const ICAL_ACTION_AUDIO = (UInt32)(10001)
const ICAL_ACTION_DISPLAY = (UInt32)(10002)
const ICAL_ACTION_EMAIL = (UInt32)(10003)
const ICAL_ACTION_PROCEDURE = (UInt32)(10004)
const ICAL_ACTION_NONE = (UInt32)(10099)
# end enum icalproperty_action

# begin enum icalproperty_busytype
const icalproperty_busytype = UInt32
const ICAL_BUSYTYPE_X = (UInt32)(10100)
const ICAL_BUSYTYPE_BUSY = (UInt32)(10101)
const ICAL_BUSYTYPE_BUSYUNAVAILABLE = (UInt32)(10102)
const ICAL_BUSYTYPE_BUSYTENTATIVE = (UInt32)(10103)
const ICAL_BUSYTYPE_NONE = (UInt32)(10199)
# end enum icalproperty_busytype

# begin enum icalproperty_carlevel
const icalproperty_carlevel = UInt32
const ICAL_CARLEVEL_X = (UInt32)(10200)
const ICAL_CARLEVEL_CARNONE = (UInt32)(10201)
const ICAL_CARLEVEL_CARMIN = (UInt32)(10202)
const ICAL_CARLEVEL_CARFULL1 = (UInt32)(10203)
const ICAL_CARLEVEL_NONE = (UInt32)(10299)
# end enum icalproperty_carlevel

# begin enum icalproperty_class
const icalproperty_class = UInt32
const ICAL_CLASS_X = (UInt32)(10300)
const ICAL_CLASS_PUBLIC = (UInt32)(10301)
const ICAL_CLASS_PRIVATE = (UInt32)(10302)
const ICAL_CLASS_CONFIDENTIAL = (UInt32)(10303)
const ICAL_CLASS_NONE = (UInt32)(10399)
# end enum icalproperty_class

# begin enum icalproperty_cmd
const icalproperty_cmd = UInt32
const ICAL_CMD_X = (UInt32)(10400)
const ICAL_CMD_ABORT = (UInt32)(10401)
const ICAL_CMD_CONTINUE = (UInt32)(10402)
const ICAL_CMD_CREATE = (UInt32)(10403)
const ICAL_CMD_DELETE = (UInt32)(10404)
const ICAL_CMD_GENERATEUID = (UInt32)(10405)
const ICAL_CMD_GETCAPABILITY = (UInt32)(10406)
const ICAL_CMD_IDENTIFY = (UInt32)(10407)
const ICAL_CMD_MODIFY = (UInt32)(10408)
const ICAL_CMD_MOVE = (UInt32)(10409)
const ICAL_CMD_REPLY = (UInt32)(10410)
const ICAL_CMD_SEARCH = (UInt32)(10411)
const ICAL_CMD_SETLOCALE = (UInt32)(10412)
const ICAL_CMD_NONE = (UInt32)(10499)
# end enum icalproperty_cmd

# begin enum icalproperty_method
const icalproperty_method = UInt32
const ICAL_METHOD_X = (UInt32)(10500)
const ICAL_METHOD_PUBLISH = (UInt32)(10501)
const ICAL_METHOD_REQUEST = (UInt32)(10502)
const ICAL_METHOD_REPLY = (UInt32)(10503)
const ICAL_METHOD_ADD = (UInt32)(10504)
const ICAL_METHOD_CANCEL = (UInt32)(10505)
const ICAL_METHOD_REFRESH = (UInt32)(10506)
const ICAL_METHOD_COUNTER = (UInt32)(10507)
const ICAL_METHOD_DECLINECOUNTER = (UInt32)(10508)
const ICAL_METHOD_CREATE = (UInt32)(10509)
const ICAL_METHOD_READ = (UInt32)(10510)
const ICAL_METHOD_RESPONSE = (UInt32)(10511)
const ICAL_METHOD_MOVE = (UInt32)(10512)
const ICAL_METHOD_MODIFY = (UInt32)(10513)
const ICAL_METHOD_GENERATEUID = (UInt32)(10514)
const ICAL_METHOD_DELETE = (UInt32)(10515)
const ICAL_METHOD_POLLSTATUS = (UInt32)(10516)
const ICAL_METHOD_NONE = (UInt32)(10599)
# end enum icalproperty_method

# begin enum icalproperty_pollcompletion
const icalproperty_pollcompletion = UInt32
const ICAL_POLLCOMPLETION_X = (UInt32)(10600)
const ICAL_POLLCOMPLETION_SERVER = (UInt32)(10601)
const ICAL_POLLCOMPLETION_SERVERSUBMIT = (UInt32)(10602)
const ICAL_POLLCOMPLETION_SERVERCHOICE = (UInt32)(10603)
const ICAL_POLLCOMPLETION_CLIENT = (UInt32)(10604)
const ICAL_POLLCOMPLETION_NONE = (UInt32)(10699)
# end enum icalproperty_pollcompletion

# begin enum icalproperty_pollmode
const icalproperty_pollmode = UInt32
const ICAL_POLLMODE_X = (UInt32)(10700)
const ICAL_POLLMODE_BASIC = (UInt32)(10701)
const ICAL_POLLMODE_NONE = (UInt32)(10799)
# end enum icalproperty_pollmode

# begin enum icalproperty_querylevel
const icalproperty_querylevel = UInt32
const ICAL_QUERYLEVEL_X = (UInt32)(10800)
const ICAL_QUERYLEVEL_CALQL1 = (UInt32)(10801)
const ICAL_QUERYLEVEL_CALQLNONE = (UInt32)(10802)
const ICAL_QUERYLEVEL_NONE = (UInt32)(10899)
# end enum icalproperty_querylevel

# begin enum icalproperty_status
const icalproperty_status = UInt32
const ICAL_STATUS_X = (UInt32)(10900)
const ICAL_STATUS_TENTATIVE = (UInt32)(10901)
const ICAL_STATUS_CONFIRMED = (UInt32)(10902)
const ICAL_STATUS_COMPLETED = (UInt32)(10903)
const ICAL_STATUS_NEEDSACTION = (UInt32)(10904)
const ICAL_STATUS_CANCELLED = (UInt32)(10905)
const ICAL_STATUS_INPROCESS = (UInt32)(10906)
const ICAL_STATUS_DRAFT = (UInt32)(10907)
const ICAL_STATUS_FINAL = (UInt32)(10908)
const ICAL_STATUS_SUBMITTED = (UInt32)(10909)
const ICAL_STATUS_PENDING = (UInt32)(10910)
const ICAL_STATUS_FAILED = (UInt32)(10911)
const ICAL_STATUS_DELETED = (UInt32)(10912)
const ICAL_STATUS_NONE = (UInt32)(10999)
# end enum icalproperty_status

# begin enum icalproperty_taskmode
const icalproperty_taskmode = UInt32
const ICAL_TASKMODE_X = (UInt32)(11200)
const ICAL_TASKMODE_AUTOMATICCOMPLETION = (UInt32)(11201)
const ICAL_TASKMODE_AUTOMATICFAILURE = (UInt32)(11202)
const ICAL_TASKMODE_AUTOMATICSTATUS = (UInt32)(11203)
const ICAL_TASKMODE_NONE = (UInt32)(11299)
# end enum icalproperty_taskmode

# begin enum icalproperty_transp
const icalproperty_transp = UInt32
const ICAL_TRANSP_X = (UInt32)(11000)
const ICAL_TRANSP_OPAQUE = (UInt32)(11001)
const ICAL_TRANSP_OPAQUENOCONFLICT = (UInt32)(11002)
const ICAL_TRANSP_TRANSPARENT = (UInt32)(11003)
const ICAL_TRANSP_TRANSPARENTNOCONFLICT = (UInt32)(11004)
const ICAL_TRANSP_NONE = (UInt32)(11099)
# end enum icalproperty_transp

# begin enum icalproperty_xlicclass
const icalproperty_xlicclass = UInt32
const ICAL_XLICCLASS_X = (UInt32)(11100)
const ICAL_XLICCLASS_PUBLISHNEW = (UInt32)(11101)
const ICAL_XLICCLASS_PUBLISHUPDATE = (UInt32)(11102)
const ICAL_XLICCLASS_PUBLISHFREEBUSY = (UInt32)(11103)
const ICAL_XLICCLASS_REQUESTNEW = (UInt32)(11104)
const ICAL_XLICCLASS_REQUESTUPDATE = (UInt32)(11105)
const ICAL_XLICCLASS_REQUESTRESCHEDULE = (UInt32)(11106)
const ICAL_XLICCLASS_REQUESTDELEGATE = (UInt32)(11107)
const ICAL_XLICCLASS_REQUESTNEWORGANIZER = (UInt32)(11108)
const ICAL_XLICCLASS_REQUESTFORWARD = (UInt32)(11109)
const ICAL_XLICCLASS_REQUESTSTATUS = (UInt32)(11110)
const ICAL_XLICCLASS_REQUESTFREEBUSY = (UInt32)(11111)
const ICAL_XLICCLASS_REPLYACCEPT = (UInt32)(11112)
const ICAL_XLICCLASS_REPLYDECLINE = (UInt32)(11113)
const ICAL_XLICCLASS_REPLYDELEGATE = (UInt32)(11114)
const ICAL_XLICCLASS_REPLYCRASHERACCEPT = (UInt32)(11115)
const ICAL_XLICCLASS_REPLYCRASHERDECLINE = (UInt32)(11116)
const ICAL_XLICCLASS_ADDINSTANCE = (UInt32)(11117)
const ICAL_XLICCLASS_CANCELEVENT = (UInt32)(11118)
const ICAL_XLICCLASS_CANCELINSTANCE = (UInt32)(11119)
const ICAL_XLICCLASS_CANCELALL = (UInt32)(11120)
const ICAL_XLICCLASS_REFRESH = (UInt32)(11121)
const ICAL_XLICCLASS_COUNTER = (UInt32)(11122)
const ICAL_XLICCLASS_DECLINECOUNTER = (UInt32)(11123)
const ICAL_XLICCLASS_MALFORMED = (UInt32)(11124)
const ICAL_XLICCLASS_OBSOLETE = (UInt32)(11125)
const ICAL_XLICCLASS_MISSEQUENCED = (UInt32)(11126)
const ICAL_XLICCLASS_UNKNOWN = (UInt32)(11127)
const ICAL_XLICCLASS_NONE = (UInt32)(11199)
# end enum icalproperty_xlicclass

mutable struct icalparameter_impl
end

const icalparameter = Nothing

# begin enum icalparameter_kind
const icalparameter_kind = UInt32
const ICAL_ANY_PARAMETER = (UInt32)(0)
const ICAL_ACTIONPARAM_PARAMETER = (UInt32)(1)
const ICAL_ALTREP_PARAMETER = (UInt32)(2)
const ICAL_CHARSET_PARAMETER = (UInt32)(3)
const ICAL_CN_PARAMETER = (UInt32)(4)
const ICAL_CUTYPE_PARAMETER = (UInt32)(5)
const ICAL_DELEGATEDFROM_PARAMETER = (UInt32)(6)
const ICAL_DELEGATEDTO_PARAMETER = (UInt32)(7)
const ICAL_DIR_PARAMETER = (UInt32)(8)
const ICAL_DISPLAY_PARAMETER = (UInt32)(46)
const ICAL_EMAIL_PARAMETER = (UInt32)(50)
const ICAL_ENABLE_PARAMETER = (UInt32)(9)
const ICAL_ENCODING_PARAMETER = (UInt32)(10)
const ICAL_FBTYPE_PARAMETER = (UInt32)(11)
const ICAL_FEATURE_PARAMETER = (UInt32)(48)
const ICAL_FILENAME_PARAMETER = (UInt32)(42)
const ICAL_FMTTYPE_PARAMETER = (UInt32)(12)
const ICAL_IANA_PARAMETER = (UInt32)(33)
const ICAL_ID_PARAMETER = (UInt32)(13)
const ICAL_LABEL_PARAMETER = (UInt32)(49)
const ICAL_LANGUAGE_PARAMETER = (UInt32)(14)
const ICAL_LATENCY_PARAMETER = (UInt32)(15)
const ICAL_LOCAL_PARAMETER = (UInt32)(16)
const ICAL_LOCALIZE_PARAMETER = (UInt32)(17)
const ICAL_MANAGEDID_PARAMETER = (UInt32)(40)
const ICAL_MEMBER_PARAMETER = (UInt32)(18)
const ICAL_MODIFIED_PARAMETER = (UInt32)(44)
const ICAL_OPTIONS_PARAMETER = (UInt32)(19)
const ICAL_PARTSTAT_PARAMETER = (UInt32)(20)
const ICAL_PATCHACTION_PARAMETER = (UInt32)(51)
const ICAL_PUBLICCOMMENT_PARAMETER = (UInt32)(37)
const ICAL_RANGE_PARAMETER = (UInt32)(21)
const ICAL_REASON_PARAMETER = (UInt32)(43)
const ICAL_RELATED_PARAMETER = (UInt32)(22)
const ICAL_RELTYPE_PARAMETER = (UInt32)(23)
const ICAL_REQUIRED_PARAMETER = (UInt32)(43)
const ICAL_RESPONSE_PARAMETER = (UInt32)(38)
const ICAL_ROLE_PARAMETER = (UInt32)(24)
const ICAL_RSVP_PARAMETER = (UInt32)(25)
const ICAL_SCHEDULEAGENT_PARAMETER = (UInt32)(34)
const ICAL_SCHEDULEFORCESEND_PARAMETER = (UInt32)(35)
const ICAL_SCHEDULESTATUS_PARAMETER = (UInt32)(36)
const ICAL_SENTBY_PARAMETER = (UInt32)(26)
const ICAL_SIZE_PARAMETER = (UInt32)(41)
const ICAL_STAYINFORMED_PARAMETER = (UInt32)(39)
const ICAL_SUBSTATE_PARAMETER = (UInt32)(45)
const ICAL_TZID_PARAMETER = (UInt32)(27)
const ICAL_VALUE_PARAMETER = (UInt32)(28)
const ICAL_X_PARAMETER = (UInt32)(29)
const ICAL_XLICCOMPARETYPE_PARAMETER = (UInt32)(30)
const ICAL_XLICERRORTYPE_PARAMETER = (UInt32)(31)
const ICAL_NO_PARAMETER = (UInt32)(32)
# end enum icalparameter_kind

# begin enum icalparameter_action
const icalparameter_action = UInt32
const ICAL_ACTIONPARAM_X = (UInt32)(20000)
const ICAL_ACTIONPARAM_ASK = (UInt32)(20001)
const ICAL_ACTIONPARAM_ABORT = (UInt32)(20002)
const ICAL_ACTIONPARAM_NONE = (UInt32)(20099)
# end enum icalparameter_action

# begin enum icalparameter_cutype
const icalparameter_cutype = UInt32
const ICAL_CUTYPE_X = (UInt32)(20100)
const ICAL_CUTYPE_INDIVIDUAL = (UInt32)(20101)
const ICAL_CUTYPE_GROUP = (UInt32)(20102)
const ICAL_CUTYPE_RESOURCE = (UInt32)(20103)
const ICAL_CUTYPE_ROOM = (UInt32)(20104)
const ICAL_CUTYPE_UNKNOWN = (UInt32)(20105)
const ICAL_CUTYPE_NONE = (UInt32)(20199)
# end enum icalparameter_cutype

# begin enum icalparameter_display
const icalparameter_display = UInt32
const ICAL_DISPLAY_X = (UInt32)(22000)
const ICAL_DISPLAY_BADGE = (UInt32)(22001)
const ICAL_DISPLAY_GRAPHIC = (UInt32)(22002)
const ICAL_DISPLAY_FULLSIZE = (UInt32)(22003)
const ICAL_DISPLAY_THUMBNAIL = (UInt32)(22004)
const ICAL_DISPLAY_NONE = (UInt32)(22099)
# end enum icalparameter_display

# begin enum icalparameter_enable
const icalparameter_enable = UInt32
const ICAL_ENABLE_X = (UInt32)(20200)
const ICAL_ENABLE_TRUE = (UInt32)(20201)
const ICAL_ENABLE_FALSE = (UInt32)(20202)
const ICAL_ENABLE_NONE = (UInt32)(20299)
# end enum icalparameter_enable

# begin enum icalparameter_encoding
const icalparameter_encoding = UInt32
const ICAL_ENCODING_X = (UInt32)(20300)
const ICAL_ENCODING_8BIT = (UInt32)(20301)
const ICAL_ENCODING_BASE64 = (UInt32)(20302)
const ICAL_ENCODING_NONE = (UInt32)(20399)
# end enum icalparameter_encoding

# begin enum icalparameter_fbtype
const icalparameter_fbtype = UInt32
const ICAL_FBTYPE_X = (UInt32)(20400)
const ICAL_FBTYPE_FREE = (UInt32)(20401)
const ICAL_FBTYPE_BUSY = (UInt32)(20402)
const ICAL_FBTYPE_BUSYUNAVAILABLE = (UInt32)(20403)
const ICAL_FBTYPE_BUSYTENTATIVE = (UInt32)(20404)
const ICAL_FBTYPE_NONE = (UInt32)(20499)
# end enum icalparameter_fbtype

# begin enum icalparameter_feature
const icalparameter_feature = UInt32
const ICAL_FEATURE_X = (UInt32)(22100)
const ICAL_FEATURE_AUDIO = (UInt32)(22101)
const ICAL_FEATURE_CHAT = (UInt32)(22102)
const ICAL_FEATURE_FEED = (UInt32)(22103)
const ICAL_FEATURE_MODERATOR = (UInt32)(22104)
const ICAL_FEATURE_PHONE = (UInt32)(22105)
const ICAL_FEATURE_SCREEN = (UInt32)(22106)
const ICAL_FEATURE_VIDEO = (UInt32)(22107)
const ICAL_FEATURE_NONE = (UInt32)(22199)
# end enum icalparameter_feature

# begin enum icalparameter_local
const icalparameter_local = UInt32
const ICAL_LOCAL_X = (UInt32)(20500)
const ICAL_LOCAL_TRUE = (UInt32)(20501)
const ICAL_LOCAL_FALSE = (UInt32)(20502)
const ICAL_LOCAL_NONE = (UInt32)(20599)
# end enum icalparameter_local

# begin enum icalparameter_partstat
const icalparameter_partstat = UInt32
const ICAL_PARTSTAT_X = (UInt32)(20600)
const ICAL_PARTSTAT_NEEDSACTION = (UInt32)(20601)
const ICAL_PARTSTAT_ACCEPTED = (UInt32)(20602)
const ICAL_PARTSTAT_DECLINED = (UInt32)(20603)
const ICAL_PARTSTAT_TENTATIVE = (UInt32)(20604)
const ICAL_PARTSTAT_DELEGATED = (UInt32)(20605)
const ICAL_PARTSTAT_COMPLETED = (UInt32)(20606)
const ICAL_PARTSTAT_INPROCESS = (UInt32)(20607)
const ICAL_PARTSTAT_FAILED = (UInt32)(20608)
const ICAL_PARTSTAT_NONE = (UInt32)(20699)
# end enum icalparameter_partstat

# begin enum icalparameter_patchaction
const icalparameter_patchaction = UInt32
const ICAL_PATCHACTION_X = (UInt32)(22200)
const ICAL_PATCHACTION_CREATE = (UInt32)(22201)
const ICAL_PATCHACTION_BYNAME = (UInt32)(22202)
const ICAL_PATCHACTION_BYVALUE = (UInt32)(22203)
const ICAL_PATCHACTION_BYPARAM = (UInt32)(22204)
const ICAL_PATCHACTION_NONE = (UInt32)(22299)
# end enum icalparameter_patchaction

# begin enum icalparameter_range
const icalparameter_range = UInt32
const ICAL_RANGE_X = (UInt32)(20700)
const ICAL_RANGE_THISANDPRIOR = (UInt32)(20701)
const ICAL_RANGE_THISANDFUTURE = (UInt32)(20702)
const ICAL_RANGE_NONE = (UInt32)(20799)
# end enum icalparameter_range

# begin enum icalparameter_related
const icalparameter_related = UInt32
const ICAL_RELATED_X = (UInt32)(20800)
const ICAL_RELATED_START = (UInt32)(20801)
const ICAL_RELATED_END = (UInt32)(20802)
const ICAL_RELATED_NONE = (UInt32)(20899)
# end enum icalparameter_related

# begin enum icalparameter_reltype
const icalparameter_reltype = UInt32
const ICAL_RELTYPE_X = (UInt32)(20900)
const ICAL_RELTYPE_PARENT = (UInt32)(20901)
const ICAL_RELTYPE_CHILD = (UInt32)(20902)
const ICAL_RELTYPE_SIBLING = (UInt32)(20903)
const ICAL_RELTYPE_POLL = (UInt32)(20904)
const ICAL_RELTYPE_NONE = (UInt32)(20999)
# end enum icalparameter_reltype

# begin enum icalparameter_required
const icalparameter_required = UInt32
const ICAL_REQUIRED_X = (UInt32)(21000)
const ICAL_REQUIRED_TRUE = (UInt32)(21001)
const ICAL_REQUIRED_FALSE = (UInt32)(21002)
const ICAL_REQUIRED_NONE = (UInt32)(21099)
# end enum icalparameter_required

# begin enum icalparameter_role
const icalparameter_role = UInt32
const ICAL_ROLE_X = (UInt32)(21100)
const ICAL_ROLE_CHAIR = (UInt32)(21101)
const ICAL_ROLE_REQPARTICIPANT = (UInt32)(21102)
const ICAL_ROLE_OPTPARTICIPANT = (UInt32)(21103)
const ICAL_ROLE_NONPARTICIPANT = (UInt32)(21104)
const ICAL_ROLE_NONE = (UInt32)(21199)
# end enum icalparameter_role

# begin enum icalparameter_rsvp
const icalparameter_rsvp = UInt32
const ICAL_RSVP_X = (UInt32)(21200)
const ICAL_RSVP_TRUE = (UInt32)(21201)
const ICAL_RSVP_FALSE = (UInt32)(21202)
const ICAL_RSVP_NONE = (UInt32)(21299)
# end enum icalparameter_rsvp

# begin enum icalparameter_scheduleagent
const icalparameter_scheduleagent = UInt32
const ICAL_SCHEDULEAGENT_X = (UInt32)(21300)
const ICAL_SCHEDULEAGENT_SERVER = (UInt32)(21301)
const ICAL_SCHEDULEAGENT_CLIENT = (UInt32)(21302)
const ICAL_SCHEDULEAGENT_NONE = (UInt32)(21399)
# end enum icalparameter_scheduleagent

# begin enum icalparameter_scheduleforcesend
const icalparameter_scheduleforcesend = UInt32
const ICAL_SCHEDULEFORCESEND_X = (UInt32)(21400)
const ICAL_SCHEDULEFORCESEND_REQUEST = (UInt32)(21401)
const ICAL_SCHEDULEFORCESEND_REPLY = (UInt32)(21402)
const ICAL_SCHEDULEFORCESEND_NONE = (UInt32)(21499)
# end enum icalparameter_scheduleforcesend

# begin enum icalparameter_stayinformed
const icalparameter_stayinformed = UInt32
const ICAL_STAYINFORMED_X = (UInt32)(21500)
const ICAL_STAYINFORMED_TRUE = (UInt32)(21501)
const ICAL_STAYINFORMED_FALSE = (UInt32)(21502)
const ICAL_STAYINFORMED_NONE = (UInt32)(21599)
# end enum icalparameter_stayinformed

# begin enum icalparameter_substate
const icalparameter_substate = UInt32
const ICAL_SUBSTATE_X = (UInt32)(21900)
const ICAL_SUBSTATE_OK = (UInt32)(21901)
const ICAL_SUBSTATE_ERROR = (UInt32)(21902)
const ICAL_SUBSTATE_SUSPENDED = (UInt32)(21903)
const ICAL_SUBSTATE_NONE = (UInt32)(21999)
# end enum icalparameter_substate

# begin enum icalparameter_value
const icalparameter_value = UInt32
const ICAL_VALUE_X = (UInt32)(21600)
const ICAL_VALUE_BINARY = (UInt32)(21601)
const ICAL_VALUE_BOOLEAN = (UInt32)(21602)
const ICAL_VALUE_DATE = (UInt32)(21603)
const ICAL_VALUE_DURATION = (UInt32)(21604)
const ICAL_VALUE_FLOAT = (UInt32)(21605)
const ICAL_VALUE_INTEGER = (UInt32)(21606)
const ICAL_VALUE_PERIOD = (UInt32)(21607)
const ICAL_VALUE_RECUR = (UInt32)(21608)
const ICAL_VALUE_TEXT = (UInt32)(21609)
const ICAL_VALUE_URI = (UInt32)(21610)
const ICAL_VALUE_ERROR = (UInt32)(21611)
const ICAL_VALUE_DATETIME = (UInt32)(21612)
const ICAL_VALUE_UTCOFFSET = (UInt32)(21613)
const ICAL_VALUE_CALADDRESS = (UInt32)(21614)
const ICAL_VALUE_NONE = (UInt32)(21699)
# end enum icalparameter_value

# begin enum icalparameter_xliccomparetype
const icalparameter_xliccomparetype = UInt32
const ICAL_XLICCOMPARETYPE_X = (UInt32)(21700)
const ICAL_XLICCOMPARETYPE_EQUAL = (UInt32)(21701)
const ICAL_XLICCOMPARETYPE_NOTEQUAL = (UInt32)(21702)
const ICAL_XLICCOMPARETYPE_LESS = (UInt32)(21703)
const ICAL_XLICCOMPARETYPE_GREATER = (UInt32)(21704)
const ICAL_XLICCOMPARETYPE_LESSEQUAL = (UInt32)(21705)
const ICAL_XLICCOMPARETYPE_GREATEREQUAL = (UInt32)(21706)
const ICAL_XLICCOMPARETYPE_REGEX = (UInt32)(21707)
const ICAL_XLICCOMPARETYPE_ISNULL = (UInt32)(21708)
const ICAL_XLICCOMPARETYPE_ISNOTNULL = (UInt32)(21709)
const ICAL_XLICCOMPARETYPE_NONE = (UInt32)(21799)
# end enum icalparameter_xliccomparetype

# begin enum icalparameter_xlicerrortype
const icalparameter_xlicerrortype = UInt32
const ICAL_XLICERRORTYPE_X = (UInt32)(21800)
const ICAL_XLICERRORTYPE_COMPONENTPARSEERROR = (UInt32)(21801)
const ICAL_XLICERRORTYPE_PROPERTYPARSEERROR = (UInt32)(21802)
const ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR = (UInt32)(21803)
const ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR = (UInt32)(21804)
const ICAL_XLICERRORTYPE_VALUEPARSEERROR = (UInt32)(21805)
const ICAL_XLICERRORTYPE_INVALIDITIP = (UInt32)(21806)
const ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR = (UInt32)(21807)
const ICAL_XLICERRORTYPE_MIMEPARSEERROR = (UInt32)(21808)
const ICAL_XLICERRORTYPE_VCALPROPPARSEERROR = (UInt32)(21809)
const ICAL_XLICERRORTYPE_NONE = (UInt32)(21899)
# end enum icalparameter_xlicerrortype

mutable struct icalproperty_impl
end

const icalproperty = Nothing

# begin enum icalproperty_kind
const icalproperty_kind = UInt32
const ICAL_ANY_PROPERTY = (UInt32)(0)
const ICAL_ACCEPTRESPONSE_PROPERTY = (UInt32)(102)
const ICAL_ACKNOWLEDGED_PROPERTY = (UInt32)(1)
const ICAL_ACTION_PROPERTY = (UInt32)(2)
const ICAL_ALLOWCONFLICT_PROPERTY = (UInt32)(3)
const ICAL_ATTACH_PROPERTY = (UInt32)(4)
const ICAL_ATTENDEE_PROPERTY = (UInt32)(5)
const ICAL_BUSYTYPE_PROPERTY = (UInt32)(101)
const ICAL_CALID_PROPERTY = (UInt32)(6)
const ICAL_CALMASTER_PROPERTY = (UInt32)(7)
const ICAL_CALSCALE_PROPERTY = (UInt32)(8)
const ICAL_CAPVERSION_PROPERTY = (UInt32)(9)
const ICAL_CARLEVEL_PROPERTY = (UInt32)(10)
const ICAL_CARID_PROPERTY = (UInt32)(11)
const ICAL_CATEGORIES_PROPERTY = (UInt32)(12)
const ICAL_CLASS_PROPERTY = (UInt32)(13)
const ICAL_CMD_PROPERTY = (UInt32)(14)
const ICAL_COLOR_PROPERTY = (UInt32)(118)
const ICAL_COMMENT_PROPERTY = (UInt32)(15)
const ICAL_COMPLETED_PROPERTY = (UInt32)(16)
const ICAL_COMPONENTS_PROPERTY = (UInt32)(17)
const ICAL_CONFERENCE_PROPERTY = (UInt32)(120)
const ICAL_CONTACT_PROPERTY = (UInt32)(18)
const ICAL_CREATED_PROPERTY = (UInt32)(19)
const ICAL_CSID_PROPERTY = (UInt32)(20)
const ICAL_DATEMAX_PROPERTY = (UInt32)(21)
const ICAL_DATEMIN_PROPERTY = (UInt32)(22)
const ICAL_DECREED_PROPERTY = (UInt32)(23)
const ICAL_DEFAULTCHARSET_PROPERTY = (UInt32)(24)
const ICAL_DEFAULTLOCALE_PROPERTY = (UInt32)(25)
const ICAL_DEFAULTTZID_PROPERTY = (UInt32)(26)
const ICAL_DEFAULTVCARS_PROPERTY = (UInt32)(27)
const ICAL_DENY_PROPERTY = (UInt32)(28)
const ICAL_DESCRIPTION_PROPERTY = (UInt32)(29)
const ICAL_DTEND_PROPERTY = (UInt32)(30)
const ICAL_DTSTAMP_PROPERTY = (UInt32)(31)
const ICAL_DTSTART_PROPERTY = (UInt32)(32)
const ICAL_DUE_PROPERTY = (UInt32)(33)
const ICAL_DURATION_PROPERTY = (UInt32)(34)
const ICAL_ESTIMATEDDURATION_PROPERTY = (UInt32)(113)
const ICAL_EXDATE_PROPERTY = (UInt32)(35)
const ICAL_EXPAND_PROPERTY = (UInt32)(36)
const ICAL_EXRULE_PROPERTY = (UInt32)(37)
const ICAL_FREEBUSY_PROPERTY = (UInt32)(38)
const ICAL_GEO_PROPERTY = (UInt32)(39)
const ICAL_GRANT_PROPERTY = (UInt32)(40)
const ICAL_IMAGE_PROPERTY = (UInt32)(119)
const ICAL_ITIPVERSION_PROPERTY = (UInt32)(41)
const ICAL_LASTMODIFIED_PROPERTY = (UInt32)(42)
const ICAL_LOCATION_PROPERTY = (UInt32)(43)
const ICAL_MAXCOMPONENTSIZE_PROPERTY = (UInt32)(44)
const ICAL_MAXDATE_PROPERTY = (UInt32)(45)
const ICAL_MAXRESULTS_PROPERTY = (UInt32)(46)
const ICAL_MAXRESULTSSIZE_PROPERTY = (UInt32)(47)
const ICAL_METHOD_PROPERTY = (UInt32)(48)
const ICAL_MINDATE_PROPERTY = (UInt32)(49)
const ICAL_MULTIPART_PROPERTY = (UInt32)(50)
const ICAL_NAME_PROPERTY = (UInt32)(115)
const ICAL_ORGANIZER_PROPERTY = (UInt32)(52)
const ICAL_OWNER_PROPERTY = (UInt32)(53)
const ICAL_PATCHDELETE_PROPERTY = (UInt32)(124)
const ICAL_PATCHORDER_PROPERTY = (UInt32)(122)
const ICAL_PATCHPARAMETER_PROPERTY = (UInt32)(125)
const ICAL_PATCHTARGET_PROPERTY = (UInt32)(123)
const ICAL_PATCHVERSION_PROPERTY = (UInt32)(121)
const ICAL_PERCENTCOMPLETE_PROPERTY = (UInt32)(54)
const ICAL_PERMISSION_PROPERTY = (UInt32)(55)
const ICAL_POLLCOMPLETION_PROPERTY = (UInt32)(110)
const ICAL_POLLITEMID_PROPERTY = (UInt32)(103)
const ICAL_POLLMODE_PROPERTY = (UInt32)(104)
const ICAL_POLLPROPERTIES_PROPERTY = (UInt32)(105)
const ICAL_POLLWINNER_PROPERTY = (UInt32)(106)
const ICAL_PRIORITY_PROPERTY = (UInt32)(56)
const ICAL_PRODID_PROPERTY = (UInt32)(57)
const ICAL_QUERY_PROPERTY = (UInt32)(58)
const ICAL_QUERYLEVEL_PROPERTY = (UInt32)(59)
const ICAL_QUERYID_PROPERTY = (UInt32)(60)
const ICAL_QUERYNAME_PROPERTY = (UInt32)(61)
const ICAL_RDATE_PROPERTY = (UInt32)(62)
const ICAL_RECURACCEPTED_PROPERTY = (UInt32)(63)
const ICAL_RECUREXPAND_PROPERTY = (UInt32)(64)
const ICAL_RECURLIMIT_PROPERTY = (UInt32)(65)
const ICAL_RECURRENCEID_PROPERTY = (UInt32)(66)
const ICAL_REFRESHINTERVAL_PROPERTY = (UInt32)(116)
const ICAL_RELATEDTO_PROPERTY = (UInt32)(67)
const ICAL_RELCALID_PROPERTY = (UInt32)(68)
const ICAL_REPEAT_PROPERTY = (UInt32)(69)
const ICAL_REPLYURL_PROPERTY = (UInt32)(111)
const ICAL_REQUESTSTATUS_PROPERTY = (UInt32)(70)
const ICAL_RESOURCES_PROPERTY = (UInt32)(71)
const ICAL_RESPONSE_PROPERTY = (UInt32)(112)
const ICAL_RESTRICTION_PROPERTY = (UInt32)(72)
const ICAL_RRULE_PROPERTY = (UInt32)(73)
const ICAL_SCOPE_PROPERTY = (UInt32)(74)
const ICAL_SEQUENCE_PROPERTY = (UInt32)(75)
const ICAL_SOURCE_PROPERTY = (UInt32)(117)
const ICAL_STATUS_PROPERTY = (UInt32)(76)
const ICAL_STORESEXPANDED_PROPERTY = (UInt32)(77)
const ICAL_SUMMARY_PROPERTY = (UInt32)(78)
const ICAL_TARGET_PROPERTY = (UInt32)(79)
const ICAL_TASKMODE_PROPERTY = (UInt32)(114)
const ICAL_TRANSP_PROPERTY = (UInt32)(80)
const ICAL_TRIGGER_PROPERTY = (UInt32)(81)
const ICAL_TZID_PROPERTY = (UInt32)(82)
const ICAL_TZIDALIASOF_PROPERTY = (UInt32)(108)
const ICAL_TZNAME_PROPERTY = (UInt32)(83)
const ICAL_TZOFFSETFROM_PROPERTY = (UInt32)(84)
const ICAL_TZOFFSETTO_PROPERTY = (UInt32)(85)
const ICAL_TZUNTIL_PROPERTY = (UInt32)(109)
const ICAL_TZURL_PROPERTY = (UInt32)(86)
const ICAL_UID_PROPERTY = (UInt32)(87)
const ICAL_URL_PROPERTY = (UInt32)(88)
const ICAL_VERSION_PROPERTY = (UInt32)(89)
const ICAL_VOTER_PROPERTY = (UInt32)(107)
const ICAL_X_PROPERTY = (UInt32)(90)
const ICAL_XLICCLASS_PROPERTY = (UInt32)(91)
const ICAL_XLICCLUSTERCOUNT_PROPERTY = (UInt32)(92)
const ICAL_XLICERROR_PROPERTY = (UInt32)(93)
const ICAL_XLICMIMECHARSET_PROPERTY = (UInt32)(94)
const ICAL_XLICMIMECID_PROPERTY = (UInt32)(95)
const ICAL_XLICMIMECONTENTTYPE_PROPERTY = (UInt32)(96)
const ICAL_XLICMIMEENCODING_PROPERTY = (UInt32)(97)
const ICAL_XLICMIMEFILENAME_PROPERTY = (UInt32)(98)
const ICAL_XLICMIMEOPTINFO_PROPERTY = (UInt32)(99)
const ICAL_NO_PROPERTY = (UInt32)(100)
# end enum icalproperty_kind

const pvl_list = Ptr{Nothing}

mutable struct pvl_elem_t
    MAGIC::Cint
    d::Ptr{Nothing}
    next::Ptr{Nothing}
    prior::Ptr{Nothing}
end

const pvl_elem = Ptr{Nothing}
const pvl_comparef = Ptr{Nothing}
const pvl_findf = Ptr{Nothing}
const pvl_applyf = Ptr{Nothing}

mutable struct icalcomponent_impl
end

const icalcomponent = Nothing

mutable struct icalcompiter
    kind::icalcomponent_kind
    iter::pvl_elem
end

mutable struct icalparser_impl
end

const icalparser = Nothing

# begin enum icalparser_state
const icalparser_state = UInt32
const ICALPARSER_ERROR = (UInt32)(0)
const ICALPARSER_SUCCESS = (UInt32)(1)
const ICALPARSER_BEGIN_COMP = (UInt32)(2)
const ICALPARSER_END_COMP = (UInt32)(3)
const ICALPARSER_IN_PROGRESS = (UInt32)(4)
# end enum icalparser_state

# begin enum icalerrorenum
const icalerrorenum = UInt32
const ICAL_NO_ERROR = (UInt32)(0)
const ICAL_BADARG_ERROR = (UInt32)(1)
const ICAL_NEWFAILED_ERROR = (UInt32)(2)
const ICAL_ALLOCATION_ERROR = (UInt32)(3)
const ICAL_MALFORMEDDATA_ERROR = (UInt32)(4)
const ICAL_PARSE_ERROR = (UInt32)(5)
const ICAL_INTERNAL_ERROR = (UInt32)(6)
const ICAL_FILE_ERROR = (UInt32)(7)
const ICAL_USAGE_ERROR = (UInt32)(8)
const ICAL_UNIMPLEMENTED_ERROR = (UInt32)(9)
const ICAL_UNKNOWN_ERROR = (UInt32)(10)
# end enum icalerrorenum

# begin enum icalerrorstate
const icalerrorstate = UInt32
const ICAL_ERROR_FATAL = (UInt32)(0)
const ICAL_ERROR_NONFATAL = (UInt32)(1)
const ICAL_ERROR_DEFAULT = (UInt32)(2)
const ICAL_ERROR_UNKNOWN = (UInt32)(3)
# end enum icalerrorstate

# begin enum icalrestriction_kind
const icalrestriction_kind = UInt32
const ICAL_RESTRICTION_NONE = (UInt32)(0)
const ICAL_RESTRICTION_ZERO = (UInt32)(1)
const ICAL_RESTRICTION_ONE = (UInt32)(2)
const ICAL_RESTRICTION_ZEROPLUS = (UInt32)(3)
const ICAL_RESTRICTION_ONEPLUS = (UInt32)(4)
const ICAL_RESTRICTION_ZEROORONE = (UInt32)(5)
const ICAL_RESTRICTION_ONEEXCLUSIVE = (UInt32)(6)
const ICAL_RESTRICTION_ONEMUTUAL = (UInt32)(7)
const ICAL_RESTRICTION_UNKNOWN = (UInt32)(8)
# end enum icalrestriction_kind

# begin enum sspm_major_type
const sspm_major_type = UInt32
const SSPM_NO_MAJOR_TYPE = (UInt32)(0)
const SSPM_TEXT_MAJOR_TYPE = (UInt32)(1)
const SSPM_IMAGE_MAJOR_TYPE = (UInt32)(2)
const SSPM_AUDIO_MAJOR_TYPE = (UInt32)(3)
const SSPM_VIDEO_MAJOR_TYPE = (UInt32)(4)
const SSPM_APPLICATION_MAJOR_TYPE = (UInt32)(5)
const SSPM_MULTIPART_MAJOR_TYPE = (UInt32)(6)
const SSPM_MESSAGE_MAJOR_TYPE = (UInt32)(7)
const SSPM_UNKNOWN_MAJOR_TYPE = (UInt32)(8)
# end enum sspm_major_type

# begin enum sspm_minor_type
const sspm_minor_type = UInt32
const SSPM_NO_MINOR_TYPE = (UInt32)(0)
const SSPM_ANY_MINOR_TYPE = (UInt32)(1)
const SSPM_PLAIN_MINOR_TYPE = (UInt32)(2)
const SSPM_RFC822_MINOR_TYPE = (UInt32)(3)
const SSPM_DIGEST_MINOR_TYPE = (UInt32)(4)
const SSPM_CALENDAR_MINOR_TYPE = (UInt32)(5)
const SSPM_MIXED_MINOR_TYPE = (UInt32)(6)
const SSPM_RELATED_MINOR_TYPE = (UInt32)(7)
const SSPM_ALTERNATIVE_MINOR_TYPE = (UInt32)(8)
const SSPM_PARALLEL_MINOR_TYPE = (UInt32)(9)
const SSPM_UNKNOWN_MINOR_TYPE = (UInt32)(10)
# end enum sspm_minor_type

# begin enum sspm_encoding
const sspm_encoding = UInt32
const SSPM_NO_ENCODING = (UInt32)(0)
const SSPM_QUOTED_PRINTABLE_ENCODING = (UInt32)(1)
const SSPM_8BIT_ENCODING = (UInt32)(2)
const SSPM_7BIT_ENCODING = (UInt32)(3)
const SSPM_BINARY_ENCODING = (UInt32)(4)
const SSPM_BASE64_ENCODING = (UInt32)(5)
const SSPM_UNKNOWN_ENCODING = (UInt32)(6)
# end enum sspm_encoding

# begin enum sspm_error
const sspm_error = UInt32
const SSPM_NO_ERROR = (UInt32)(0)
const SSPM_UNEXPECTED_BOUNDARY_ERROR = (UInt32)(1)
const SSPM_WRONG_BOUNDARY_ERROR = (UInt32)(2)
const SSPM_NO_BOUNDARY_ERROR = (UInt32)(3)
const SSPM_NO_HEADER_ERROR = (UInt32)(4)
const SSPM_MALFORMED_HEADER_ERROR = (UInt32)(5)
# end enum sspm_error

mutable struct sspm_header
    def::Cint
    boundary::Cstring
    major::Nothing
    minor::Nothing
    minor_text::Cstring
    content_type_params::Ptr{Cstring}
    charset::Cstring
    encoding::Nothing
    filename::Cstring
    content_id::Cstring
    error::Nothing
    error_text::Cstring
end

mutable struct sspm_part
    header::Nothing
    level::Cint
    data_size::Csize_t
    data::Ptr{Nothing}
end

mutable struct sspm_action_map
    major::Nothing
    minor::Nothing
    new_part::Ptr{Nothing}
    add_line::Ptr{Nothing}
    end_part::Ptr{Nothing}
    free_part::Ptr{Nothing}
end
