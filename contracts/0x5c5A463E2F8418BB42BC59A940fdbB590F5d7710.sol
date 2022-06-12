contract main {




// =====================  Runtime code  =====================


const index = '', 0

const class = '', 0


function _fallback() payable {
    revert
}

function d20(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1) % 20)
}



}
