contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_fb22198b;
address brushAddress;
uint256 officialNFTDiscount;
address stor4;

function officialNFTDiscount() payable {
    return officialNFTDiscount
}

function brush() payable {
    return brushAddress
}

function owner() payable {
    return owner
}

function sub_fb22198b(?) payable {
    return sub_fb22198b
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7e7de151(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fb22198b = arg1
    emit 0x124b2aaf: sub_fb22198b, arg1
}

function sub_39a091f0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 100
    officialNFTDiscount = arg1
    emit 0x66f4642c: officialNFTDiscount, arg1
}

function sub_1af844d2(?) payable {
    if 100 < officialNFTDiscount:
        revert with 0, 17
    if sub_fb22198b and -officialNFTDiscount + 100 > -1 / sub_fb22198b:
        revert with 0, 17
    return ((100 * sub_fb22198b) - (officialNFTDiscount * sub_fb22198b) / 100)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn() payable {
    require ext_code.size(brushAddress)
    staticcall brushAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(brushAddress)
    call brushAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a606f124(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return sub_fb22198b
    if 100 < officialNFTDiscount:
        revert with 0, 17
    if sub_fb22198b and -officialNFTDiscount + 100 > -1 / sub_fb22198b:
        revert with 0, 17
    return ((100 * sub_fb22198b) - (officialNFTDiscount * sub_fb22198b) / 100)
}



}
