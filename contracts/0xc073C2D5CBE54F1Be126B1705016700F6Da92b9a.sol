contract main {




// =====================  Runtime code  =====================


#
#  - sub_91d16ac8(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address stor0; offset 16

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        address(stor0.field_16) = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(stor0.field_16) = arg1
        else:
            uint16(stor0.field_0) = 257
            address(stor0.field_16) = arg1
            uint8(stor0.field_8) = 0
}



}
