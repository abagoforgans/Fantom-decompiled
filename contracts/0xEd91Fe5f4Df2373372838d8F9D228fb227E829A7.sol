contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[24 len 209]
}



// =====================  Runtime code  =====================


uint256 count;

function getCount() {
    return count
}

function incrementCounter() {
    count++
}

function decrementCounter() {
    count--
}

function _fallback() payable {
    revert 
}



}
