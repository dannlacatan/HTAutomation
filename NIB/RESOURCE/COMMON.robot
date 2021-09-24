#COMMON.robot

***Settings***
Library         SeleniumLibrary    WITH NAME    SEL
Library         Collections        WITH NAME    COL
Library         BuiltIn            WITH NAME    BIN


Variables       ${EXECDIR}${/}RESOURCE${/}MAPPING${/}MAPPING.py
Resource        ${EXECDIR}${/}CONFIG${/}URLS.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GENERIC.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_LOGIN.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GRPSETUP.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_GRPGPPT.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_MEMBERSHIP.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_BILLING.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_RECEIPT.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_CLAIMS.robot
Resource        ${EXECDIR}${/}RESOURCE${/}KEYWORDS${/}KEYWORD_PAYMENTRUN.robot