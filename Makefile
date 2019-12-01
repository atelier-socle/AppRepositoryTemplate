install: bootstrap xcodeproj_gen
first_install: brew_install bootstrap xcodeproj_gen swiftgen

brew_install:
	brew install mint libxml2

bootstrap: 
	mint bootstrap
	bundle install
	mint run carthage carthage bootstrap --cache-builds

xcodeproj_gen:
	mint run xcodegen xcodegen generate

swiftgen: 
	mint run swiftgen
