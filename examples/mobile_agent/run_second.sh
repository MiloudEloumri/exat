#!/bin/sh
cd ../..
erl -pa examples/mobile_agent -pa ebin/ -pa lib/*/ebin/ -pa ../../ebin/ -boot start_sasl \
    -s exat_app \
    -http_port 7779 \
    -config examples/mobile_agent/mobility \
    -m_tcp_port 1805 \
    -name b@192.168.1.100 \
    -setcookie ABCD \
    -start mobile_pingeragent $*
    # -eval "t:t(agent)." \
    # -eval "t:t(simple_pingeragent)." \
