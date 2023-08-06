---
title: event export
layout: event_export
overview: The scouting of the wilds near Boulderton has been going well.  The Goblins and Gnolls have been scared from the area, though a few small groupings of them exist.  There is an elemental influx near Port Jebbeddo that needs to be investigated, Undead gathering in the wilds near Boulderton, and a strange organization forming under the symbol of an arrow pointed skyward.
---
<h2>Overview</h2>
<p>{{ .Params.overview  -}}</p>
<h2>Modules</h2>
{{ $schedules := (slice "opening" "mid" "friday night" "saturday" "saturday morning" "saturday early afternoon" "saturday early evening" "saturday night" "reaction" "tavern setup" "townsfolk" "randoms" nil "end" ) }}

{{ range  $schedules }}
{{ $current_schedule := . }}

{{ if sort (where (where $event_pages "Layout" "==" "module" ) ".Params.schedule" "=="  $current_schedule ) "Params.weight" -}}
<p><b>{{ title  $current_schedule }}{{ if eq $current_schedule  nil }} NO SCHEDULE!! {{ end }}</b>
<b>({{ len (where (where $event_pages "Layout" "==" "module" ) ".Params.schedule" "=="  $current_schedule ) -}}</b>)

{{ if eq $current_schedule  nil }}<p>Please add a schedule to your modules</p>{{ end }}
{{ range $index, $value := where (where $event_pages "Layout" "=="  "module" ) ".Params.schedule" "=="  $current_schedule -}}
      {{ if (ne $index 0) }}, {{ end }}
      <a href="{{- .Permalink -}}"> {{ title .Title }}</a> 

{{ end }}
</p>
{{ end }} 
{{ end }}







<h2>Jobs</h2>
{{ $factions := (slice "Craft Guild" "Thieves Guild"  "Merchant Guild" "Research Guild"  "Dwarf" "Elf" "Haulfin" "Human" "Kinfolk" "Orc" nil ) }}
{{ range  $factions }}
{{ $current_faction := . }} 

{{ if sort (where (where $event_pages "Layout" "==" "job" ) ".Params.faction" "=="  $current_faction ) "Params.weight" -}}
<p><b>{{ title  $current_faction }}{{ if eq $current_faction  nil }} NO Faction on this Job!! {{ end }}</b>
<b>({{ len (where (where $event_pages "Layout" "==" "job" ) ".Params.faction" "=="  $current_faction ) -}})</b>
{{ end }}
        {{ range $index, $value :=where (where $event_pages "Layout" "=="  "job" ) ".Params.faction" "=="  $current_faction -}}
            {{ if (ne $index 0) }}, {{ end }}
       <a href="{{- .Permalink -}}"> {{ title .Title }}</a>
      {{ end }}
</p>
{{ end }}

<h2>Faction Goals</h2>
<p>One days don't have faction goals that are tracked because the cast changes creatures more often than during full weekend events</p>
<h2>Pioneer Encounters</h2>
<p><b>Cards in the Woods</b> These have not been introduced yet.</p>
<p><b>Stockpiles</b> These have not been introduced yet.<p>