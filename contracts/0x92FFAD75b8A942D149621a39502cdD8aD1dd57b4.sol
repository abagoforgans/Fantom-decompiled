contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 sub_33470433;
address stor2;

function getInfo(uint256 arg1) payable {
    return sub_33470433[arg1][0 len sub_33470433[arg1].length]
}

function sub_33470433(?) payable {
    return sub_33470433[arg1][0 len sub_33470433[arg1].length]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_fb9cba30(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ab29511b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2.0x63321e27 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734164647265737320646f6573206e6f742062656c6f6e6720746f2061207374616b6572,
                    mem[200 len 28]
    sub_33470433[ext_call.return_data[0]] = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_33470433[ext_call.return_data[0]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_33470433[ext_call.return_data[0]].length + 31 / 32 > idx:
        sub_33470433[ext_call.return_data[0]][idx] = 0
        idx = idx + 1
        continue 
    emit 0x3a668b70: ext_call.return_data[0]
}



}
