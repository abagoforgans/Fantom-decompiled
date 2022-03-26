contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 296]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function b(uint256 arg1) {
    return (2 * arg1)
}

function a(uint256 arg1) {
    return (arg1 * arg1)
}

function select(bool arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg2)
    return (2 * arg2)
}



}
