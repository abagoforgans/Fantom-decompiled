contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of address sub_b65af940;

function sub_b65af940(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'access denied.'
    return sub_b65af940[arg1]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function'
    stor0 = arg1
    return 1
}

function sub_36ea85d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function.'
    sub_b65af940[arg2] = address(arg1)
    return 1
}

function setWhiteList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this function'
    stor1[address(arg1)] = uint8(arg2)
    return 1
}



}
