package main

import (
	"flag"
	"os"
)

var projectBaseDIR string
var sourceFileType string

var slackHookURL string
var slackHookImage string
var slackHookName string

func init() {
	flag.StringVar(&projectBaseDIR, "projectBaseDIR", "", "project base dir")
	flag.StringVar(&sourceFileType, "sourceFileType", "", "source file type (ex. swift)")
	flag.StringVar(&slackHookURL, "slackHookURL", "", "slack hook url")
	flag.StringVar(&slackHookImage, "slackHookImage", "", "slack hook image")
	flag.StringVar(&slackHookName, "slackHookName", "" , "slack hook name")
	flag.Parse()
}

func invalidArgs() {
	flag.Usage()
	os.Exit(-1)
}

func main() {

	if len(os.Args) < 2 || len(projectBaseDIR) == 0 || len(sourceFileType) == 0 {
		invalidArgs()
		return
	}
	
	// TODO
}