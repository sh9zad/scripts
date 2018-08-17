#!/bin/bash

# Put this in the bashrc change the patterns. 


function goto {
  BASE=/Users/Shervin/Repos

  case $1 in
    "a")
      echo "api"
      API=cleanroom-api-services
      case $2 in
        "se")
           echo "service"
           cd $BASE/$API/services/library
        ;;
        "sh")
           echo "shared"
           cd $BASE/$API/shared/library
        ;;
        "au")
           echo "auth"
           cd $BASE/$API/services/auth
        ;;
        *  )
           echo "base"
           cd $BASE/$API
         ;;
      esac
    ;;

    "g")
      echo "gateway"
      cd /Users/Shervin/go/src/github.com/VideoAmp/cleanroom-api-gateway
    ;;

    "l")
      echo "linear"
      case $2 in
        "da")
           echo "database"
           cd $BASE/linear-database-schemas
        ;;
        "pl")
           echo "planner"
           cd $BASE/linear-planner
        ;;
      esac
     ;;

    "la")
      echo "launchpad"
      cd $BASE/launchpad
     ;;
  esac
}