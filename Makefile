BOWER_FILES=lib/angular/angular.min.js

JS_SRC=src/
JS_TESTS=test/

release:
	mkdir $@

third: release
	@echo "Compiling Third Party JS"
	@cat $(BOWER_FILES) > release/3rd.js

jsdbg: release, third
	@echo "Combining JS"
	@./node_modules/jshint/bin/jhint src/*[^min].js
	find src/ -type f -exec cat {} \; > release/app.js

clean:
	rm -rf release/
