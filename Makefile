
all: build 

build: xcode
	@swift build 

clean:
	@swift build --clean=dist

xcode:
	@rm -rf overlook.xcodeproject
	@swift package generate-xcodeproj

release: clean
	@swift build --configuration release
	

