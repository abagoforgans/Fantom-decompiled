contract main {




// =====================  Runtime code  =====================


address owner;
address nftAddress;
uint128 discount;
address sub_502122e2Address;
mapping of uint8 stor4;
mapping of uint256 sub_97964a37;
uint128 sub_6ada44c7;
uint128 sub_14b6ae4e; offset 128
address devAddr;
array of address collections;
uint256 sub_eb95de57;

function sub_14b6ae4e(?) payable {
    return sub_14b6ae4e
}

function nft() payable {
    return nftAddress
}

function sub_502122e2(?) payable {
    return sub_502122e2Address
}

function sub_6ada44c7(?) payable {
    return sub_6ada44c7
}

function discount() payable {
    return discount
}

function sub_70cfd509(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    return bool(stor4[arg1][arg2][arg3])
}

function owner() payable {
    return owner
}

function sub_97964a37(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_97964a37[arg1][arg2]
}

function devAddr() payable {
    return devAddr
}

function sub_eb95de57(?) payable {
    return sub_eb95de57
}

function collections(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < collections.length
    return collections[arg1]
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

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddr = arg1
}

function sub_9cf9fb4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_14b6ae4e = uint128(arg1)
}

function sub_de5f6a03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6ada44c7 = uint128(arg1)
    emit 0xfc2d5582: sub_6ada44c7, sub_6ada44c7
}

function sub_06ad2c2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint128(arg1) <= 50
    discount = uint128(arg1)
    emit 0x66f4642c: discount, uint128(arg1)
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

function sub_58805a13(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if not stor4[arg1][address(arg2)][arg3]:
        revert with 0, 'Is not in this collection'
    stor4[arg1][address(arg2)][arg3] = 0
    if not sub_97964a37[address(arg2)][arg3]:
        revert with 'NH{q', 17
    sub_97964a37[address(arg2)][arg3]--
    if arg1 >= collections.length:
        revert with 'NH{q', 50
    require ext_code.size(address(arg2))
    staticcall address(arg2).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if collections[arg1] != msg.sender:
            revert with 0, 'Is not the creator of this collection'
    else:
        require ext_code.size(address(arg2))
        staticcall address(arg2).ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Is not the owner of this nft'
    emit 0x2f214523: address(arg2), arg3, arg1
}

function sub_405a0e0b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if arg1 >= collections.length:
        revert with 'NH{q', 50
    if collections[arg1] != msg.sender:
        revert with 0, 'Is not the collection creator'
    require ext_code.size(0x34004b93f0d5e7dd22d8f50f72a6c26bd896e69d)
    delegate 0x34004b93f0d5e7dd22d8f50f72a6c26bd896e69d.0xf8156bb4 with:
         gas gas_remaining wei
        args address(arg2)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'Not an ERC721 or ERC1155 contract'
    if stor4[arg1][address(arg2)][arg3]:
        revert with 0, 'Already in this collection'
    if sub_97964a37[address(arg2)][arg3] >= sub_14b6ae4e:
        revert with 0, 'This nft is in too many collection'
    if sub_97964a37[address(arg2)][arg3] == -1:
        revert with 'NH{q', 17
    sub_97964a37[address(arg2)][arg3]++
    require ext_code.size(address(arg2))
    staticcall address(arg2).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    if not ext_call.return_data[0]:
        staticcall address(arg2).ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Is not the owner of this nft'
    else:
        staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Is not one of the owners of this nft'
    stor4[arg1][address(arg2)][arg3] = 1
    emit 0x2b8ee8c4: address(arg2), arg3, arg1
}

function sub_ece86c21(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    collections.length++
    collections[collections.length] = msg.sender
    require ext_code.size(nftAddress)
    staticcall nftAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(sub_502122e2Address)
        call sub_502122e2Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, devAddr, sub_6ada44c7
    else:
        if 100 < discount:
            revert with 'NH{q', 17
        if sub_6ada44c7 and uint128(-discount + 100) > test266151307() / sub_6ada44c7:
            revert with 'NH{q', 17
        require ext_code.size(sub_502122e2Address)
        call sub_502122e2Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, devAddr, uint128(uint128(sub_6ada44c7 * uint128(-discount + 100)) / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + ceil32(arg1.length) + 320] = arg2.length
    mem[ceil32(return_data.size) + ceil32(arg1.length) + 352 len arg2.length] = arg2[all]
    mem[ceil32(return_data.size) + ceil32(arg1.length) + arg2.length + 352] = 0
    mem[ceil32(return_data.size) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg3.length
    mem[ceil32(return_data.size) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len arg3.length] = arg3[all]
    mem[ceil32(return_data.size) + ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 384] = 0
    emit 0xdb60c2c2: sub_eb95de57, msg.sender, 160, ceil32(arg1.length) + 192, ceil32(arg1.length) + ceil32(arg2.length) + 224, arg1.length, arg1[all], 0, mem[ceil32(return_data.size) + arg1.length + 352 len ceil32(arg1.length) + ceil32(arg2.length) + -arg1.length + 32], arg3[all], mem[ceil32(return_data.size) + ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 384 len ceil32(arg3.length) - arg3.length]
    if sub_eb95de57 == -1:
        revert with 'NH{q', 17
    sub_eb95de57++
}



}
