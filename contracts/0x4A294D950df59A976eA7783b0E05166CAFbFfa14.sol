contract main {




// =====================  Runtime code  =====================


function claim() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}



}
