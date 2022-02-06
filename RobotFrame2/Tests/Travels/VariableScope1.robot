#Variable scopes

#Global scope
#Global variables are available everywhere in the test data
#where they are defibed or iported.

#Test suite scope
#Variable with the test case scope are visible in a
#test case and in all user keywords the test uses.

#Local scope
#Test cases and user keywords have a local variable scope
#that is not seen by other tests or *** keywords ***

#Notes
#Video18 Nro1

*** Settings ***

*** Variables ***
${TAPIO_VARIABLE} =  This is a GLOBAL variable

*** Test cases ***
This is demo test_tmy1
    Log  ${TAPIO_VARIABLE}

This is demo test_tmy2
    Log  ${TAPIO_VARIABLE}