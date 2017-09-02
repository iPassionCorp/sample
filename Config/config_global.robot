*** Variables ***
${BROWSER} =  chrome
${URL} =  https://sffportal.ais.co.th/SFFWeb/pages/home/portal.jsf

#Valid User&Password
${SFF_USER} =  porntipp
${SFF_PASSWORD} =  0917#Lek

#Account No for Test
${AccountNo} =  31300004020900

#Button
${LOGIN_SUBMIT_BUTTON} =  xpath=//*[@id="frm"]/div/table/tbody/tr[1]/td/table/tbody/tr[6]/td/input
${SEARCH_ACCOUNT_BUTTON} =  //*[@id="frmSearch:j_id_id45"]
${BTN_ORDER_GO_BUTTON} =

#Input Text
${INPUT_ASSET_ACC_ACCOUNT_NO} =  //*[@id="frmSearch:AccountNo"]
${INPUT_ASSET_ACC_ID_CARD_NO} =  //*[@id="frmSearch:idNo"]
${INPUT_ASSET_ACC_ACCOUNT_NAME} =  //*[@id="frmSearch:AccountName"]

#List
${FIRST_ACCOUNT_LIST} =  //a[@id="frmlist:acclist:0:j_id_id58"]