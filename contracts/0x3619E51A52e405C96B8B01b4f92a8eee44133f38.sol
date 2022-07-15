contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_a734408d;
uint256 sub_e99f2b2a;
uint8 stor3;
address stor3;
address walletAddress; offset 8
uint256 stor3;
address sub_74709ae4Address;
address gtonAddress;

function sub_3ccafd11(?) payable {
    return bool(uint8(stor3.field_0))
}

function wallet() payable {
    return walletAddress
}

function sub_74709ae4(?) payable {
    return sub_74709ae4Address
}

function owner() payable {
    return owner
}

function sub_a734408d(?) payable {
    return sub_a734408d
}

function gton() payable {
    return gtonAddress
}

function sub_e99f2b2a(?) payable {
    return sub_e99f2b2a
}

function _fallback() payable {
    revert
}

function getValues() payable {
    return sub_a734408d, sub_e99f2b2a
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner allowed.'
    owner = arg1
}

function setWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner allowed.'
    walletAddress = arg1
}

function sub_975deca9(?) payable {
    if owner != msg.sender:
        revert with 0, 'Only owner allowed.'
    uint256(stor3.field_0) = not bool(uint8(stor3.field_0)) or Mask(248, 8, uint256(stor3.field_0))
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner allowed.'
    sub_a734408d = arg1
    sub_e99f2b2a = arg2
}

function sub_fb19453c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and sub_a734408d > -1 / arg1:
        revert with 'NH{q', 17
    if not sub_e99f2b2a:
        revert with 'NH{q', 18
    return (arg1 * sub_a734408d / sub_e99f2b2a)
}

function convert(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor3.field_0):
        revert with 0, 'Only owner allowed.'
    require ext_code.size(sub_74709ae4Address)
    call sub_74709ae4Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not enought of allowed gton.'
    if arg1 and sub_a734408d > -1 / arg1:
        revert with 'NH{q', 17
    if not sub_e99f2b2a:
        revert with 'NH{q', 18
    require ext_code.size(gtonAddress)
    call gtonAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(stor3.field_0), msg.sender, arg1 * sub_a734408d / sub_e99f2b2a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Convert(arg1, arg1 * sub_a734408d / sub_e99f2b2a, msg.sender);
}



}
