contract main {




// =====================  Runtime code  =====================


#
#  - sub_59792406(?)
#  - sub_82da649a(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 isInitialized;
mapping of uint256 stor2;

function isInitialized() payable {
    return bool(isInitialized)
}

function _fallback() payable {
    revert
}

function sub_52e22aff(?) payable {
    require calldata.size - 4 >= 32
    isInitialized = sha3(isInitialized, arg1)
}

function getRandomNumber(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if block.number < 1:
        revert with 0, 17
    if stor2[tx.origin] == -1:
        revert with 0, 17
    stor2[tx.origin]++
    if not arg2 - arg1:
        revert with 0, 18
    if arg1 > !(sha3(block.hash(block.number - 1), isInitialized, tx.origin, stor2[tx.origin]) % arg2 - arg1):
        revert with 0, 17
    return (arg1 + (sha3(block.hash(block.number - 1), isInitialized, tx.origin, stor2[tx.origin]) % arg2 - arg1))
}

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        isInitialized = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            isInitialized = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            isInitialized = arg1
            uint8(stor0.field_8) = 0
}



}
