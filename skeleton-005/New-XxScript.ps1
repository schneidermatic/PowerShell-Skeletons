#!/usr/bin/env pwsh
#******************************************************************************
# Copyright {{ YEAR }} the original author or authors.                        *
#                                                                             *
# Licensed under the Apache License, Version 2.0 (the "License");             *
# you may not use this file except in compliance with the License.            *
# You may obtain a copy of the License at                                     *
#                                                                             *
# http://www.apache.org/licenses/LICENSE-2.0                                  *
#                                                                             *
# Unless required by applicable law or agreed to in writing, software         *
# distributed under the License is distributed on an "AS IS" BASIS,           *
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    *
# See the License for the specific language governing permissions and         *
# limitations under the License.                                              *
#******************************************************************************/

#==============================================================================
# SCRIPT:   {{ SCRIPT }}
# AUTOHR:   {{ AUTHOR }}
# DATE:     {{ DATE }}
# REV:      {{ REV }}
# PLATFORM: {{ PLATFORM }}
# PURPOSE:  {{ DESC }}
#==============================================================================

##----------------------------------------
## USAGE
##----------------------------------------
## PS > get-help ./New-RvScript.ps1 -detailed
[CmdletBinding()]
param
(
   [Parameter(Mandatory,HelpMessage="The Path to the script.")]
   [Alias("p")]
   [string]
   $Path = "Help",

   [Parameter(Mandatory,HelpMessage="The Script file name i.e. 'Get-Message.ps1'")]
   [Alias("f")]
   [string]
   $File = "Help"
)

##----------------------------------------
## CONFIG
##----------------------------------------
$CWD = Get-Location
. $CWD/Get-ZzCtx.ps1


##----------------------------------------
## SUBROUTINE(S)
##----------------------------------------
function Get-Message {
  "==> Path: $Path"
  "==> File: $File"
  "==> Message: $(& $Path/$File)"
}


##----------------------------------------
## MAIN
##----------------------------------------
function New-ZzScriptMain {
     Get-Message
}

New-ZzScriptMain