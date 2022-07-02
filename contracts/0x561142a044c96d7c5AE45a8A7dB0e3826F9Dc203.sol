contract main {




// =====================  Runtime code  =====================


function init() payable {
  stop
}

function _fallback() payable {
    revert
}



}
