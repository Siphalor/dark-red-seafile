css_files = css/main.css
css_min_files = css/main.min.css

.PHONY: all css css_min

all: css css_min
css: $(css_files)
css_min: $(css_min_files)

$(css_files): css/%.css : %.scss
	sass $<:$@

$(css_min_files): css/%.min.css : %.scss
	sass $<:$@ -s compressed

