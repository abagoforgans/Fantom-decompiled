contract main {




// =====================  Runtime code  =====================


array of uint256 greeting;

function getGreeting() payable {
    return greeting[0 len greeting.length]
}

function _fallback() payable {
    revert
}



}
