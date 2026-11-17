#!/bin/bash

IimBriefDescription="lcntProc.sh based on seedLcntProc.sh"

ORIGIN="
* Revision And Libre-Halaal CopyLeft -- Part Of ByStar -- Best Used With Blee
"

####+BEGIN: bx:bash:top-of-file :vc "cvs" partof: "bystar" :copyleft "halaal+minimal"
### Args: :control "enabled|disabled|hide|release|fVar"  :vc "cvs|git|nil" :partof "bystar|nil" :copyleft "halaal+minimal|halaal+brief|nil"
typeset RcsId="$Id: dblock-iim-bash.el,v 1.4 2017-02-08 06:42:32 lsipusr Exp $"
# *CopyLeft*
__copying__="
* Libre-Halaal Software"
#  This is part of ByStar Libre Services. http://www.by-star.net
#  This is a Halaal Poly-Existential. See http://www.freeprotocols.org

####+END:

__author__="
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
"

####+BEGIN: bx:bisos:bash:seed-spec :types "/bisos/core/lcnt/bin/seedLcntProc.sh"
SEED="
*  /[dblock]/ /Seed/ :: [[file:/bisos/core/lcnt/bin/seedLcntProc.sh]] |
"
FILE="
*  /This File/ :: /bxRepos/bxlcnt/bro_lcntBases-rawBisos/lcnt/lgpc/rawBisos/permanent/examples/aiActivity_EmacsConf26/lcntProc.sh
"
if [ "${loadFiles}" == "" ] ; then
    /bisos/core/lcnt/bin/seedLcntProc.sh -l $0 "$@"
    exit $?
fi
####+END:


_CommentBegin_
####+BEGIN: bx:dblock:global:file-insert-cond :cond "./blee.el" :file "/bisos/apps/defaults/software/plusOrg/dblock/inserts/topControls.org"
*  /Controls/ ::  [[elisp:(org-cycle)][| ]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(delete-other-windows)][(1)]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
####+END:
_CommentEnd_


_CommentBegin_
*      ================
*  [[elisp:(beginning-of-buffer)][Top]] ################ [[elisp:(delete-other-windows)][(1)]] CONTENTS-LIST ################
*  [[elisp:(org-cycle)][| ]]  Notes         :: *[Current-Info]*  Status, Notes (Tasks/Todo Lists, etc.) [[elisp:(org-cycle)][| ]]
_CommentEnd_

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_moduleDescription    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_moduleDescription {  cat  << _EOF_
*  [[elisp:(org-cycle)][| ]]  Xrefs         :: *[Related/Xrefs:]*  <<Xref->>  -- External Documents  [[elisp:(org-cycle)][| ]]
**  [[elisp:(org-cycle)][| ]]  BxPanel      ::  [[elisp:(find-file "/de/bx/nne/dev-py/bin/iimBeamerImpressiveEmacs.py")][iimBeamerImpressiveEmacs.py]]   [[elisp:(find-file "/opt/public/osmt/bin/bx-desktopCapture")][bx-desktopCapture]] lcntProc.sh  [[elisp:(find-file "/bisos/apps/defaults/activeDocs/blee/bystarContinuum/videoProc/fullUsagePanel-en.org")][VideoProc Pannel]] [[elisp:(org-cycle)][| ]]
*  [[elisp:(org-cycle)][| ]]  Info          :: *[Module Description:]* [[elisp:(org-cycle)][| ]]
**  [[elisp:(org-cycle)][| ]]  SysD         :: BISOS Customizations [[elisp:(org-cycle)][| ]]
    Based on the generic SysD (systemd) init daemon Start/Stop/Restart.
    This facility only manages the start/stop of daemon.

_EOF_
}

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_describe    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_describe { vis_moduleDescription; }


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Extensions    :: Seed Hooks [[elisp:(org-cycle)][| ]]
_CommentEnd_


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  buildPre    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function buildPre {
    #if [[ ! -d tables ]] ; then ln -s ../Q1-2007-BusPlan/tables tables; fi    
    #lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/bystar/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi
    return
}

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  buildPost    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function buildPost {
  #if [[ -L tables ]] ; then /bin/rm tables; fi
  return
}


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  cleanPost    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function cleanPost {
  #if [[ -L tables ]] ; then /bin/rm tables; fi
  #if [[ -L figures ]] ; then /bin/rm figures; fi
  return
}

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Examples      :: Extension Examples [[elisp:(org-cycle)][| ]]
_CommentEnd_


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  examplesHookPost    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function examplesHookPost {
    local extraInfo=""
    cat  << _EOF_
$( examplesSeperatorTopLabel "EXTENSION EXAMPLES" )
${G_myName} ${extraInfo} -i beamerPdfPages
${G_myName} ${extraInfo} -i interimFullClean
${G_myName} ${extraInfo} -i interimFullBuild
$( examplesSeperatorTopLabel "Subtitles" )
python -m aeneas.tools.execute_task  ./video/plpc-180072.mp4  plpc-180072.narration  "task_language=eng|os_task_file_format=vtt|is_text_type=plain"  map.vtt
_EOF_
}


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  iimParam_extent    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function iimParam_extent {
    if [ $# -eq 0 ] ; then    
	IimParam extent=(
	    [name]="extent"
	    [value]="build"
	    [type]="string"
	    [description]="Extent Specification For mmDoc build commands"
	    [enums]="my_enums" 
	)
    fi

    function my_enums { cat  << _EOF_
build
view
build+view
_EOF_
    }

    if [ $# -eq 1 ] ; then $1; lpReturn; fi
}



_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Extensions    :: Additional Features [[elisp:(org-cycle)][| ]]
_CommentEnd_


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_lcnLcntInputPre    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_lcnLcntInputPre {
    G_funcEntry
    function describeF {  cat  << _EOF_
_EOF_
    }
    #
    # NOTYET, name of articleEn... needs to be figured out
    #
    heveaHtmlBasedir=heveaHtml-articleEnFa

    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi

    if [[ ! -d ${heveaHtmlBasedir}/figures ]] ; then opDo ln -s ../figures ${heveaHtmlBasedir}/figures; fi

    heveaHtmlBasedir=heveaHtml-artFullEnFa

    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi

    if [[ ! -d ${heveaHtmlBasedir}/figures ]] ; then opDo ln -s ../figures ${heveaHtmlBasedir}/figures; fi


    lpReturn
}


function vis_revealDrive {
    G_funcEntry
    function describeF {  cat  << _EOF_
_EOF_
    }
    #
    # NOTYET, name of articleEn... needs to be figured out
    #
    heveaHtmlBasedir=heveaHtml-articleEnFa

    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi

    if [[ ! -d ${heveaHtmlBasedir}/figures ]] ; then opDo ln -s ../figures ${heveaHtmlBasedir}/figures; fi

    heveaHtmlBasedir=heveaHtml-artFullEnFa

    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi

    if [[ ! -d ${heveaHtmlBasedir}/figures ]] ; then opDo ln -s ../figures ${heveaHtmlBasedir}/figures; fi


    lpReturn
}


function vis_beamerPdfPages {
    G_funcEntry
    function describeF {  cat  << _EOF_
Will run the python file that splits the presPdf into pages corresponding to pages.
beamerPdfPages.cs does that work using pdftk.
_EOF_
    }

    lpDo beamerPdfPages.cs -v 20  -i updatePages ./presentationEnFa.pdf

    lpReturn
}


function vis_interimFullClean {
    G_funcEntry
    function describeF {  cat  << _EOF_

_EOF_
    }

    lpDo lcntProc.sh  -i fullClean
    lpDo lcntProc.sh  -i mmUniteClean   # Clean Auto Generated Audio/Video Inputs

    lpReturn
}

function vis_interimFullBuild {
    G_funcEntry
    function describeF {  cat  << _EOF_

_EOF_
    }

    lpDo lcntProc.sh  -i mmUnitePrep

    lpDo vis_beamerPdfPages

    lpDo lcntProc.sh -h -v -n showRun -p extent="build+view" -i lcntBuild cur  # Runs dblock

    lpReturn
}




function vis_buildRevealDrived_Obsoleted {
    G_funcEntry
    function describeF {  cat  << _EOF_
Look at ./LCNT-INFO/Builds/
if it does not exist or if essential, do nothing
if mold is derived, ln -s presentationEnFa.ttytex pres-derived.ttytex
rerun to generate hevea-pres-derived.
copy everything into revealJsDerived
send it to browser
_EOF_
    }

    local presDerivedFile='./pres-derived.ttytex'
    local presDerivedPrefix='pres-derived'

    if [ ! -f  ./LCNT-INFO/Builds/mold ] ; then
        ANT_raw "Reveal Drived Feature Is Not Enabled"
        lpReturn
    fi
    local moldValue=$( cat ./LCNT-INFO/Builds/mold )
    if [ "${moldValue}" != "derived" ] ; then
        ANT_raw "Reveal Drived Feature Is Not Enabled -- mold value is not derived"
        lpReturn
    fi

    lpDo ln -s ./presentationEnFa.ttytex ${presDerivedFile}

    opDo bx-dblock -h -v -n showRun -i dblockUpdateFiles  ${presDerivedFile}
    opDo lcnLcntInputProc.sh -p inFormat=xelatex -p outputs=heveaHtml -i buildDocs ${presDerivedFile}

    opDo vis_heveaRevealFixups ${presDerivedPrefix}

    opDo vis_revealJsDerivedPrep

    typeset  heveaBase="./heveaHtml-${presDerivedPrefix}"

    outFileName="./heveaHtml-${fileBaseName}/revealSlides.html"

    opDo cp ${heveaBase}/revealSlides.html ./revealJsDerived

    typeset imagesList=$( ls ${heveaBase}/*.png )

    if [ ! -z "${imagesList}" ] ; then
        opDo cp ${imagesList} ./revealJsDerived
    fi

    opDo cp /bisos/apps/defaults/web/revealJs/begin/contentStart.html  ./revealJsDerived/${presDerivedPrefix}.html

    opDo bx-dblock -h -v -n showRun -i dblockUpdateFiles  ./revealJsDerived/${presDerivedPrefix}.html

    opDo eoe-browser ./revealJsDerived/${presDerivedPrefix}.html

    lpReturn
}



_CommentBegin_
*  [[elisp:(beginning-of-buffer)][Top]] ################ [[elisp:(delete-other-windows)][(1)]]  *End Of Editable Text*
_CommentEnd_

####+BEGIN: bx:dblock:bash:end-of-file :types ""
_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Common        ::  /[dblock] -- End-Of-File Controls/ [[elisp:(org-cycle)][| ]]
_CommentEnd_
#+STARTUP: showall
#local variables:
#major-mode: sh-mode
#fill-column: 90
# end:
####+END:
