#!/bin/bash

cd ~/lab0

ls -lR claude_monet | grep '^-' | sort -k5,5nr | head -n 6

grep -rhiE 'вик|наст' . | grep -vi 'столик' | sort -r | head -n 5

grep -il 'гост' claude_monet/hall/table_plan claude_monet/hall/guest_requests claude_monet/hall/guest_complaints claude_monet/hall/terrace_backup/* | wc -l

{
    head -q -n 1 claude_monet/bar/kostya_shift claude_monet/bar/cocktail_card
    tail -q -n 1 claude_monet/bar/kostya_shift claude_monet/bar/cocktail_card
} | grep -iE 'кост|вик' | sort

grep -vi 'столик' claude_monet/reception/evening_guests | sort -r | head -n 4 | wc -w

ls -lR . | grep -E '^-[^[:space:]]+[[:space:]]+2[[:space:]]' | sort -k9,9r

ls -lR . | grep '^l' | grep -v 'guest' | sort -k9,9