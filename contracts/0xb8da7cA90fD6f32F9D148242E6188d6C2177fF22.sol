contract main {




// =====================  Runtime code  =====================


address address;

function getAddress() {
    return address
}

function _fallback() payable {
    revert
}



}
