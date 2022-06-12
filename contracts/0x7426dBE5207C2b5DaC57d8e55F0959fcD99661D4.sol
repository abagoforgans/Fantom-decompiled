contract main {




// =====================  Runtime code  =====================


const index = '', 0

const class = '', 0


function _fallback() payable {
    revert
}

function d8(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 8)
}

function d4(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 4)
}

function d6(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 6)
}

function d12(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 12)
}

function d20(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 20)
}

function d10(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 10)
}

function d100(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % 100)
}

function dn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.number < 1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    return (sha3(block.timestamp, block.hash(block.number - 1), arg1, address(msg.sender) >> 672) % arg2)
}



}
