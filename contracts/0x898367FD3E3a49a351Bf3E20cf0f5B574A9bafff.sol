contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;
uint256 totalListings;
array of struct stor4;
uint128 sub_3f5c3e87;
mapping of struct listings;
mapping of uint256 sub_20c7852c;

function getListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    if listings[arg1].field_2560 >= 2:
        revert with 0, 33
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           listings[arg1].field_1024,
           listings[arg1].field_1280,
           listings[arg1].field_1536,
           listings[arg1].field_1792,
           listings[arg1].field_2048,
           listings[arg1].field_2304,
           listings[arg1].field_2560
}

function sub_20c7852c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_20c7852c[arg1][arg2]
}

function sub_3f5c3e87(?) payable {
    return sub_3f5c3e87
}

function totalListings() payable {
    return totalListings
}

function listings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if listings[arg1].field_2560 >= 2:
        revert with 0, 33
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           listings[arg1].field_1024,
           listings[arg1].field_1280,
           listings[arg1].field_1536,
           listings[arg1].field_1792,
           listings[arg1].field_2048,
           listings[arg1].field_2304,
           listings[arg1].field_2560
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor1)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function sub_09679b39(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == uint128(cd[4])
    require ext_code.size(stor2)
    staticcall stor2.PROTOCOL_ADMIN() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    if stor1 != msg.sender:
        staticcall stor2.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], msg.sender
    else:
        staticcall stor2.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Pack: only a protocol admin can call this function.'
    sub_3f5c3e87 = uint128(cd[4])
    emit 0xd50e64e6: uint128(cd[4])
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 128 < 96 or (32 * arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if (32 * arg4.length) + 160 < 128 or (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    idx = 0
    while idx < arg4.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2.PROTOCOL_ADMIN() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    if stor1 != msg.sender:
        staticcall stor2.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], msg.sender
    else:
        staticcall stor2.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Pack: only a protocol admin can call this function.'
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor4[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor4[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function unlist(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        if listings[arg1].field_256 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: Only the seller can call this function.'
    else:
        if listings[arg1].field_256 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: Only the seller can call this function.'
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    if listings[arg1].field_1024 < arg2:
        revert with 0, 'Market: cannot unlist more tokens than are listed.'
    if listings[arg1].field_1024 < arg2:
        revert with 0, 17
    listings[arg1].field_256 = listings[arg1].field_256
    listings[arg1].field_512 = listings[arg1].field_512
    listings[arg1].field_1024 -= arg2
    listings[arg1].field_1280 = listings[arg1].field_1280
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    listings[arg1].field_2560 = listings[arg1].field_2560
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    if not listings[arg1].field_2560:
        require ext_code.size(listings[arg1].field_512)
        if stor1 != msg.sender:
            call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, listings[arg1].field_768, arg2, 160, 0
        else:
            call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(this.address), Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_768, arg2, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if listings[arg1].field_2560 > 1:
            revert with 0, 33
        if listings[arg1].field_2560 == 1:
            if arg2 != 1:
                revert with 0, 'Market: Cannot unlist more than one of an ERC 721 NFT.'
            require ext_code.size(listings[arg1].field_512)
            if stor1 != msg.sender:
                call listings[arg1].field_512.0xb88d4fde with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, listings[arg1].field_768, 128, 0
            else:
                call listings[arg1].field_512.0xb88d4fde with:
                     gas gas_remaining wei
                    args address(this.address), Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_768, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if listings[arg1].field_2560 >= 2:
        revert with 0, 33
    if stor1 != msg.sender:
        emit 0xb4c8fd60: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024 - arg2, listings[arg1].field_1280, listings[arg1].field_1536, listings[arg1].field_1792, listings[arg1].field_2048, listings[arg1].field_2304, listings[arg1].field_2560, msg.sender, arg1
    else:
        emit 0xb4c8fd60: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024 - arg2, listings[arg1].field_1280, listings[arg1].field_1536, listings[arg1].field_1792, listings[arg1].field_2048, listings[arg1].field_2304, listings[arg1].field_2560, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1
}

function addToListing(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    staticcall stor2.systemPaused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Market: The pack protocol is paused.'
    if stor1 != msg.sender:
        if listings[arg1].field_256 != msg.sender:
            revert with 0, 'Market: Only the seller can call this function.'
    else:
        if listings[arg1].field_256 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Market: Only the seller can call this function.'
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    if listings[arg1].field_1024 > !arg2:
        revert with 0, 17
    listings[arg1].field_256 = listings[arg1].field_256
    listings[arg1].field_512 = listings[arg1].field_512
    listings[arg1].field_1024 += arg2
    listings[arg1].field_1280 = listings[arg1].field_1280
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    listings[arg1].field_2560 = listings[arg1].field_2560
    if not arg2:
        revert with 0, 'Market: must add at least one token.'
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    if listings[arg1].field_2560:
        revert with 0, 'Market: Can only add to ERC 1155 listings.'
    require ext_code.size(listings[arg1].field_512)
    if stor1 != msg.sender:
        staticcall listings[arg1].field_512.0xe985e9c5 with:
                gas gas_remaining wei
               args msg.sender, this.address
    else:
        staticcall listings[arg1].field_512.0xe985e9c5 with:
                gas gas_remaining wei
               args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Market: must approve the market to transfer tokens being added.'
    require ext_code.size(listings[arg1].field_512)
    if stor1 != msg.sender:
        call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), listings[arg1].field_768, arg2, 160, 0
    else:
        call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(this.address), listings[arg1].field_768, arg2, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if listings[arg1].field_2560 >= 2:
        revert with 0, 33
    if stor1 != msg.sender:
        emit 0xb4c8fd60: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024 + arg2, listings[arg1].field_1280, listings[arg1].field_1536, listings[arg1].field_1792, listings[arg1].field_2048, listings[arg1].field_2304, listings[arg1].field_2560, msg.sender, arg1
    else:
        emit 0xb4c8fd60: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024 + arg2, listings[arg1].field_1280, listings[arg1].field_1536, listings[arg1].field_1792, listings[arg1].field_2048, listings[arg1].field_2304, listings[arg1].field_2560, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1
}

function contractURI() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function _contractURI() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_31851012(?) payable {
    require calldata.size - 4 >= 192
    require cd[68] == address(cd[68])
    require ext_code.size(stor2)
    staticcall stor2.systemPaused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Market: The pack protocol is paused.'
    if stor1 != msg.sender:
        if listings[cd[4]].field_256 != msg.sender:
            revert with 0, 'Market: Only the seller can call this function.'
    else:
        if listings[cd[4]].field_256 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Market: Only the seller can call this function.'
    if listings[cd[4]].field_2560 > 1:
        revert with 0, 33
    if cd[100] > listings[cd[4]].field_1024:
        revert with 0, 'Market: cannot let buyer buy more than listed quantity.'
    if block.timestamp > !cd[132]:
        revert with 0, 17
    if not cd[100]:
        if not cd[164]:
            listings[cd[4]].field_256 = listings[cd[4]].field_256
            listings[cd[4]].field_512 = listings[cd[4]].field_512
            listings[cd[4]].field_1280 = address(cd[68])
            listings[cd[4]].field_1536 = cd[36]
            listings[cd[4]].field_1792 = block.timestamp + cd[132]
            listings[cd[4]].field_2048 = -1
            listings[cd[4]].field_2304 = listings[cd[4]].field_1024
            if listings[cd[4]].field_2560 > 1:
                revert with 0, 33
            listings[cd[4]].field_2560 = listings[cd[4]].field_2560
            if listings[cd[4]].field_2560 >= 2:
                revert with 0, 33
            if stor1 != msg.sender:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], -1, listings[cd[4]].field_1024, listings[cd[4]].field_2560, msg.sender, cd[4]
            else:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], -1, listings[cd[4]].field_1024, listings[cd[4]].field_2560, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        else:
            if block.timestamp > !cd[164]:
                revert with 0, 17
            listings[cd[4]].field_256 = listings[cd[4]].field_256
            listings[cd[4]].field_512 = listings[cd[4]].field_512
            listings[cd[4]].field_1280 = address(cd[68])
            listings[cd[4]].field_1536 = cd[36]
            listings[cd[4]].field_1792 = block.timestamp + cd[132]
            listings[cd[4]].field_2048 = block.timestamp + cd[164]
            listings[cd[4]].field_2304 = listings[cd[4]].field_1024
            if listings[cd[4]].field_2560 > 1:
                revert with 0, 33
            listings[cd[4]].field_2560 = listings[cd[4]].field_2560
            if listings[cd[4]].field_2560 >= 2:
                revert with 0, 33
            if stor1 != msg.sender:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], block.timestamp + cd[164], listings[cd[4]].field_1024, listings[cd[4]].field_2560, msg.sender, cd[4]
            else:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], block.timestamp + cd[164], listings[cd[4]].field_1024, listings[cd[4]].field_2560, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
    else:
        if not cd[164]:
            listings[cd[4]].field_256 = listings[cd[4]].field_256
            listings[cd[4]].field_512 = listings[cd[4]].field_512
            listings[cd[4]].field_1280 = address(cd[68])
            listings[cd[4]].field_1536 = cd[36]
            listings[cd[4]].field_1792 = block.timestamp + cd[132]
            listings[cd[4]].field_2048 = -1
            listings[cd[4]].field_2304 = cd[100]
            if listings[cd[4]].field_2560 > 1:
                revert with 0, 33
            listings[cd[4]].field_2560 = listings[cd[4]].field_2560
            if listings[cd[4]].field_2560 >= 2:
                revert with 0, 33
            if stor1 != msg.sender:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], -1, cd[100], listings[cd[4]].field_2560, msg.sender, cd[4]
            else:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], -1, cd[100], listings[cd[4]].field_2560, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
        else:
            if block.timestamp > !cd[164]:
                revert with 0, 17
            listings[cd[4]].field_256 = listings[cd[4]].field_256
            listings[cd[4]].field_512 = listings[cd[4]].field_512
            listings[cd[4]].field_1280 = address(cd[68])
            listings[cd[4]].field_1536 = cd[36]
            listings[cd[4]].field_1792 = block.timestamp + cd[132]
            listings[cd[4]].field_2048 = block.timestamp + cd[164]
            listings[cd[4]].field_2304 = cd[100]
            if listings[cd[4]].field_2560 > 1:
                revert with 0, 33
            listings[cd[4]].field_2560 = listings[cd[4]].field_2560
            if listings[cd[4]].field_2560 >= 2:
                revert with 0, 33
            if stor1 != msg.sender:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], block.timestamp + cd[164], cd[100], listings[cd[4]].field_2560, msg.sender, cd[4]
            else:
                emit 0xb4c8fd60: listings[cd[4]].field_0, listings[cd[4]].field_256, listings[cd[4]].field_512, listings[cd[4]].field_768, listings[cd[4]].field_1024, address(cd[68]), cd[36], block.timestamp + cd[132], block.timestamp + cd[164], cd[100], listings[cd[4]].field_2560, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, cd[4]
}

function getAllListings() payable {
    if totalListings > test266151307():
        revert with 0, 65
    mem[96] = totalListings
    mem[64] = (32 * totalListings) + 128
    if not totalListings:
        idx = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            _40 = mem[64]
            mem[64] = mem[64] + 352
            mem[_40] = listings[idx].field_0
            mem[_40 + 32] = listings[idx].field_256
            mem[_40 + 64] = listings[idx].field_512
            mem[_40 + 96] = listings[idx].field_768
            mem[_40 + 128] = listings[idx].field_1024
            mem[_40 + 160] = listings[idx].field_1280
            mem[_40 + 192] = listings[idx].field_1536
            mem[_40 + 224] = listings[idx].field_1792
            mem[_40 + 256] = listings[idx].field_2048
            mem[_40 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_40 + 320] = listings[idx].field_2560
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _40
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _43:
            _77 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_77 + 44 len 20]
            mem[s + 64] = mem[_77 + 76 len 20]
            mem[s + 96] = mem[_77 + 96]
            mem[s + 128] = mem[_77 + 128]
            mem[s + 160] = mem[_77 + 172 len 20]
            mem[s + 192] = mem[_77 + 192]
            mem[s + 224] = mem[_77 + 224]
            mem[s + 256] = mem[_77 + 256]
            mem[s + 288] = mem[_77 + 288]
            if mem[_77 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_77 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _42 + (352 * _43) + -mem[64] + 64
    mem[64] = (32 * totalListings) + 480
    mem[(32 * totalListings) + 128] = 0
    mem[(32 * totalListings) + 160] = 0
    mem[(32 * totalListings) + 192] = 0
    mem[(32 * totalListings) + 224] = 0
    mem[(32 * totalListings) + 256] = 0
    mem[(32 * totalListings) + 288] = 0
    mem[(32 * totalListings) + 320] = 0
    mem[(32 * totalListings) + 352] = 0
    mem[(32 * totalListings) + 384] = 0
    mem[(32 * totalListings) + 416] = 0
    mem[var13002] = 0
    mem[var15002] = var15001
    if not var15003 - 1:
        idx = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            _167 = mem[64]
            mem[64] = mem[64] + 352
            mem[_167] = listings[idx].field_0
            mem[_167 + 32] = listings[idx].field_256
            mem[_167 + 64] = listings[idx].field_512
            mem[_167 + 96] = listings[idx].field_768
            mem[_167 + 128] = listings[idx].field_1024
            mem[_167 + 160] = listings[idx].field_1280
            mem[_167 + 192] = listings[idx].field_1536
            mem[_167 + 224] = listings[idx].field_1792
            mem[_167 + 256] = listings[idx].field_2048
            mem[_167 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_167 + 320] = listings[idx].field_2560
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _167
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _168 = mem[64]
        mem[mem[64]] = 32
        _169 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _169:
            _203 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_203 + 44 len 20]
            mem[s + 64] = mem[_203 + 76 len 20]
            mem[s + 96] = mem[_203 + 96]
            mem[s + 128] = mem[_203 + 128]
            mem[s + 160] = mem[_203 + 172 len 20]
            mem[s + 192] = mem[_203 + 192]
            mem[s + 224] = mem[_203 + 224]
            mem[s + 256] = mem[_203 + 256]
            mem[s + 288] = mem[_203 + 288]
            if mem[_203 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_203 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _168 + (352 * _169) + -mem[64] + 64
    mem[64] = (32 * totalListings) + 832
    mem[(32 * totalListings) + 480] = 0
    mem[(32 * totalListings) + 512] = 0
    mem[(32 * totalListings) + 544] = 0
    mem[(32 * totalListings) + 576] = 0
    mem[(32 * totalListings) + 608] = 0
    mem[(32 * totalListings) + 640] = 0
    mem[(32 * totalListings) + 672] = 0
    mem[(32 * totalListings) + 704] = 0
    mem[(32 * totalListings) + 736] = 0
    mem[(32 * totalListings) + 768] = 0
    mem[var21002] = 0
    mem[var23002] = var23001
    if not var23003 - 1:
        idx = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            _293 = mem[64]
            mem[64] = mem[64] + 352
            mem[_293] = listings[idx].field_0
            mem[_293 + 32] = listings[idx].field_256
            mem[_293 + 64] = listings[idx].field_512
            mem[_293 + 96] = listings[idx].field_768
            mem[_293 + 128] = listings[idx].field_1024
            mem[_293 + 160] = listings[idx].field_1280
            mem[_293 + 192] = listings[idx].field_1536
            mem[_293 + 224] = listings[idx].field_1792
            mem[_293 + 256] = listings[idx].field_2048
            mem[_293 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_293 + 320] = listings[idx].field_2560
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _293
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _294 = mem[64]
        mem[mem[64]] = 32
        _295 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _295:
            _329 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_329 + 44 len 20]
            mem[s + 64] = mem[_329 + 76 len 20]
            mem[s + 96] = mem[_329 + 96]
            mem[s + 128] = mem[_329 + 128]
            mem[s + 160] = mem[_329 + 172 len 20]
            mem[s + 192] = mem[_329 + 192]
            mem[s + 224] = mem[_329 + 224]
            mem[s + 256] = mem[_329 + 256]
            mem[s + 288] = mem[_329 + 288]
            if mem[_329 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_329 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _294 + (352 * _295) + -mem[64] + 64
    mem[64] = (32 * totalListings) + 1184
    mem[(32 * totalListings) + 832] = 0
    mem[(32 * totalListings) + 864] = 0
    mem[(32 * totalListings) + 896] = 0
    mem[(32 * totalListings) + 928] = 0
    mem[(32 * totalListings) + 960] = 0
    mem[(32 * totalListings) + 992] = 0
    mem[(32 * totalListings) + 1024] = 0
    mem[(32 * totalListings) + 1056] = 0
    mem[(32 * totalListings) + 1088] = 0
    mem[(32 * totalListings) + 1120] = 0
    mem[var29002] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            _419 = mem[64]
            mem[64] = mem[64] + 352
            mem[_419] = listings[idx].field_0
            mem[_419 + 32] = listings[idx].field_256
            mem[_419 + 64] = listings[idx].field_512
            mem[_419 + 96] = listings[idx].field_768
            mem[_419 + 128] = listings[idx].field_1024
            mem[_419 + 160] = listings[idx].field_1280
            mem[_419 + 192] = listings[idx].field_1536
            mem[_419 + 224] = listings[idx].field_1792
            mem[_419 + 256] = listings[idx].field_2048
            mem[_419 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_419 + 320] = listings[idx].field_2560
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _419
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _420 = mem[64]
        mem[mem[64]] = 32
        _421 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _421:
            _455 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_455 + 44 len 20]
            mem[s + 64] = mem[_455 + 76 len 20]
            mem[s + 96] = mem[_455 + 96]
            mem[s + 128] = mem[_455 + 128]
            mem[s + 160] = mem[_455 + 172 len 20]
            mem[s + 192] = mem[_455 + 192]
            mem[s + 224] = mem[_455 + 224]
            mem[s + 256] = mem[_455 + 256]
            mem[s + 288] = mem[_455 + 288]
            if mem[_455 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_455 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _420 + (352 * _421) + -mem[64] + 64
    mem[64] = (32 * totalListings) + 1536
    mem[(32 * totalListings) + 1184] = 0
    mem[(32 * totalListings) + 1216] = 0
    mem[(32 * totalListings) + 1248] = 0
    mem[(32 * totalListings) + 1280] = 0
    mem[(32 * totalListings) + 1312] = 0
    mem[(32 * totalListings) + 1344] = 0
    mem[(32 * totalListings) + 1376] = 0
    mem[(32 * totalListings) + 1408] = 0
    mem[(32 * totalListings) + 1440] = 0
    mem[(32 * totalListings) + 1472] = 0
    mem[var37002] = 0
    mem[var39002] = var39001
    if var39003 - 1:
        # nil
    else:
        idx = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            _545 = mem[64]
            mem[64] = mem[64] + 352
            mem[_545] = listings[idx].field_0
            mem[_545 + 32] = listings[idx].field_256
            mem[_545 + 64] = listings[idx].field_512
            mem[_545 + 96] = listings[idx].field_768
            mem[_545 + 128] = listings[idx].field_1024
            mem[_545 + 160] = listings[idx].field_1280
            mem[_545 + 192] = listings[idx].field_1536
            mem[_545 + 224] = listings[idx].field_1792
            mem[_545 + 256] = listings[idx].field_2048
            mem[_545 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_545 + 320] = listings[idx].field_2560
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _545
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _546 = mem[64]
        mem[mem[64]] = 32
        _547 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _547:
            _581 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_581 + 44 len 20]
            mem[s + 64] = mem[_581 + 76 len 20]
            mem[s + 96] = mem[_581 + 96]
            mem[s + 128] = mem[_581 + 128]
            mem[s + 160] = mem[_581 + 172 len 20]
            mem[s + 192] = mem[_581 + 192]
            mem[s + 224] = mem[_581 + 224]
            mem[s + 256] = mem[_581 + 256]
            mem[s + 288] = mem[_581 + 288]
            if mem[_581 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_581 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _546 + (352 * _547) + -mem[64] + 64
}

function sub_4edeaa81(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < totalListings:
        mem[0] = idx
        mem[32] = 6
        if listings[idx].field_512 != address(arg1):
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _67 = mem[64]
            mem[64] = mem[64] + 352
            mem[_67] = listings[idx].field_0
            mem[_67 + 32] = listings[idx].field_256
            mem[_67 + 64] = listings[idx].field_512
            mem[_67 + 96] = listings[idx].field_768
            mem[_67 + 128] = listings[idx].field_1024
            mem[_67 + 160] = listings[idx].field_1280
            mem[_67 + 192] = listings[idx].field_1536
            mem[_67 + 224] = listings[idx].field_1792
            mem[_67 + 256] = listings[idx].field_2048
            mem[_67 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_67 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _67
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _65 = mem[64]
        mem[mem[64]] = 32
        _68 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _68:
            _103 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_103 + 44 len 20]
            mem[s + 64] = mem[_103 + 76 len 20]
            mem[s + 96] = mem[_103 + 96]
            mem[s + 128] = mem[_103 + 128]
            mem[s + 160] = mem[_103 + 172 len 20]
            mem[s + 192] = mem[_103 + 192]
            mem[s + 224] = mem[_103 + 224]
            mem[s + 256] = mem[_103 + 256]
            mem[s + 288] = mem[_103 + 288]
            if mem[_103 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_103 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _65 + (352 * _68) + -mem[64] + 64
    mem[64] = (32 * s) + 480
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var22002] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _199 = mem[64]
            mem[64] = mem[64] + 352
            mem[_199] = listings[idx].field_0
            mem[_199 + 32] = listings[idx].field_256
            mem[_199 + 64] = listings[idx].field_512
            mem[_199 + 96] = listings[idx].field_768
            mem[_199 + 128] = listings[idx].field_1024
            mem[_199 + 160] = listings[idx].field_1280
            mem[_199 + 192] = listings[idx].field_1536
            mem[_199 + 224] = listings[idx].field_1792
            mem[_199 + 256] = listings[idx].field_2048
            mem[_199 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_199 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _199
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _197 = mem[64]
        mem[mem[64]] = 32
        _200 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _200:
            _235 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_235 + 44 len 20]
            mem[s + 64] = mem[_235 + 76 len 20]
            mem[s + 96] = mem[_235 + 96]
            mem[s + 128] = mem[_235 + 128]
            mem[s + 160] = mem[_235 + 172 len 20]
            mem[s + 192] = mem[_235 + 192]
            mem[s + 224] = mem[_235 + 224]
            mem[s + 256] = mem[_235 + 256]
            mem[s + 288] = mem[_235 + 288]
            if mem[_235 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_235 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _197 + (352 * _200) + -mem[64] + 64
    mem[64] = (32 * s) + 832
    mem[(32 * s) + 480] = 0
    mem[(32 * s) + 512] = 0
    mem[(32 * s) + 544] = 0
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[(32 * s) + 640] = 0
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[(32 * s) + 768] = 0
    mem[var30002] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _331 = mem[64]
            mem[64] = mem[64] + 352
            mem[_331] = listings[idx].field_0
            mem[_331 + 32] = listings[idx].field_256
            mem[_331 + 64] = listings[idx].field_512
            mem[_331 + 96] = listings[idx].field_768
            mem[_331 + 128] = listings[idx].field_1024
            mem[_331 + 160] = listings[idx].field_1280
            mem[_331 + 192] = listings[idx].field_1536
            mem[_331 + 224] = listings[idx].field_1792
            mem[_331 + 256] = listings[idx].field_2048
            mem[_331 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_331 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _331
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _329 = mem[64]
        mem[mem[64]] = 32
        _332 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _332:
            _367 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_367 + 44 len 20]
            mem[s + 64] = mem[_367 + 76 len 20]
            mem[s + 96] = mem[_367 + 96]
            mem[s + 128] = mem[_367 + 128]
            mem[s + 160] = mem[_367 + 172 len 20]
            mem[s + 192] = mem[_367 + 192]
            mem[s + 224] = mem[_367 + 224]
            mem[s + 256] = mem[_367 + 256]
            mem[s + 288] = mem[_367 + 288]
            if mem[_367 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_367 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _329 + (352 * _332) + -mem[64] + 64
    mem[64] = (32 * s) + 1184
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[(32 * s) + 960] = 0
    mem[(32 * s) + 992] = 0
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[var38002] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _463 = mem[64]
            mem[64] = mem[64] + 352
            mem[_463] = listings[idx].field_0
            mem[_463 + 32] = listings[idx].field_256
            mem[_463 + 64] = listings[idx].field_512
            mem[_463 + 96] = listings[idx].field_768
            mem[_463 + 128] = listings[idx].field_1024
            mem[_463 + 160] = listings[idx].field_1280
            mem[_463 + 192] = listings[idx].field_1536
            mem[_463 + 224] = listings[idx].field_1792
            mem[_463 + 256] = listings[idx].field_2048
            mem[_463 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_463 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _463
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _461 = mem[64]
        mem[mem[64]] = 32
        _464 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _464:
            _499 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_499 + 44 len 20]
            mem[s + 64] = mem[_499 + 76 len 20]
            mem[s + 96] = mem[_499 + 96]
            mem[s + 128] = mem[_499 + 128]
            mem[s + 160] = mem[_499 + 172 len 20]
            mem[s + 192] = mem[_499 + 192]
            mem[s + 224] = mem[_499 + 224]
            mem[s + 256] = mem[_499 + 256]
            mem[s + 288] = mem[_499 + 288]
            if mem[_499 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_499 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _461 + (352 * _464) + -mem[64] + 64
    mem[64] = (32 * s) + 1536
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[(32 * s) + 1280] = 0
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[(32 * s) + 1408] = 0
    mem[(32 * s) + 1440] = 0
    mem[(32 * s) + 1472] = 0
    mem[var46002] = 0
    mem[var48002] = var48001
    if var48003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _595 = mem[64]
            mem[64] = mem[64] + 352
            mem[_595] = listings[idx].field_0
            mem[_595 + 32] = listings[idx].field_256
            mem[_595 + 64] = listings[idx].field_512
            mem[_595 + 96] = listings[idx].field_768
            mem[_595 + 128] = listings[idx].field_1024
            mem[_595 + 160] = listings[idx].field_1280
            mem[_595 + 192] = listings[idx].field_1536
            mem[_595 + 224] = listings[idx].field_1792
            mem[_595 + 256] = listings[idx].field_2048
            mem[_595 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_595 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _595
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _593 = mem[64]
        mem[mem[64]] = 32
        _596 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _596:
            _631 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_631 + 44 len 20]
            mem[s + 64] = mem[_631 + 76 len 20]
            mem[s + 96] = mem[_631 + 96]
            mem[s + 128] = mem[_631 + 128]
            mem[s + 160] = mem[_631 + 172 len 20]
            mem[s + 192] = mem[_631 + 192]
            mem[s + 224] = mem[_631 + 224]
            mem[s + 256] = mem[_631 + 256]
            mem[s + 288] = mem[_631 + 288]
            if mem[_631 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_631 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _593 + (352 * _596) + -mem[64] + 64
}

function sub_d8cba251(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < totalListings:
        mem[0] = idx
        mem[32] = 6
        if listings[idx].field_256 != address(arg1):
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_256 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _67 = mem[64]
            mem[64] = mem[64] + 352
            mem[_67] = listings[idx].field_0
            mem[_67 + 32] = listings[idx].field_256
            mem[_67 + 64] = listings[idx].field_512
            mem[_67 + 96] = listings[idx].field_768
            mem[_67 + 128] = listings[idx].field_1024
            mem[_67 + 160] = listings[idx].field_1280
            mem[_67 + 192] = listings[idx].field_1536
            mem[_67 + 224] = listings[idx].field_1792
            mem[_67 + 256] = listings[idx].field_2048
            mem[_67 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_67 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _67
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _65 = mem[64]
        mem[mem[64]] = 32
        _68 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _68:
            _103 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_103 + 44 len 20]
            mem[s + 64] = mem[_103 + 76 len 20]
            mem[s + 96] = mem[_103 + 96]
            mem[s + 128] = mem[_103 + 128]
            mem[s + 160] = mem[_103 + 172 len 20]
            mem[s + 192] = mem[_103 + 192]
            mem[s + 224] = mem[_103 + 224]
            mem[s + 256] = mem[_103 + 256]
            mem[s + 288] = mem[_103 + 288]
            if mem[_103 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_103 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _65 + (352 * _68) + -mem[64] + 64
    mem[64] = (32 * s) + 480
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var22002] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_256 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _199 = mem[64]
            mem[64] = mem[64] + 352
            mem[_199] = listings[idx].field_0
            mem[_199 + 32] = listings[idx].field_256
            mem[_199 + 64] = listings[idx].field_512
            mem[_199 + 96] = listings[idx].field_768
            mem[_199 + 128] = listings[idx].field_1024
            mem[_199 + 160] = listings[idx].field_1280
            mem[_199 + 192] = listings[idx].field_1536
            mem[_199 + 224] = listings[idx].field_1792
            mem[_199 + 256] = listings[idx].field_2048
            mem[_199 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_199 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _199
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _197 = mem[64]
        mem[mem[64]] = 32
        _200 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _200:
            _235 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_235 + 44 len 20]
            mem[s + 64] = mem[_235 + 76 len 20]
            mem[s + 96] = mem[_235 + 96]
            mem[s + 128] = mem[_235 + 128]
            mem[s + 160] = mem[_235 + 172 len 20]
            mem[s + 192] = mem[_235 + 192]
            mem[s + 224] = mem[_235 + 224]
            mem[s + 256] = mem[_235 + 256]
            mem[s + 288] = mem[_235 + 288]
            if mem[_235 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_235 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _197 + (352 * _200) + -mem[64] + 64
    mem[64] = (32 * s) + 832
    mem[(32 * s) + 480] = 0
    mem[(32 * s) + 512] = 0
    mem[(32 * s) + 544] = 0
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[(32 * s) + 640] = 0
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[(32 * s) + 768] = 0
    mem[var30002] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_256 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _331 = mem[64]
            mem[64] = mem[64] + 352
            mem[_331] = listings[idx].field_0
            mem[_331 + 32] = listings[idx].field_256
            mem[_331 + 64] = listings[idx].field_512
            mem[_331 + 96] = listings[idx].field_768
            mem[_331 + 128] = listings[idx].field_1024
            mem[_331 + 160] = listings[idx].field_1280
            mem[_331 + 192] = listings[idx].field_1536
            mem[_331 + 224] = listings[idx].field_1792
            mem[_331 + 256] = listings[idx].field_2048
            mem[_331 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_331 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _331
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _329 = mem[64]
        mem[mem[64]] = 32
        _332 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _332:
            _367 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_367 + 44 len 20]
            mem[s + 64] = mem[_367 + 76 len 20]
            mem[s + 96] = mem[_367 + 96]
            mem[s + 128] = mem[_367 + 128]
            mem[s + 160] = mem[_367 + 172 len 20]
            mem[s + 192] = mem[_367 + 192]
            mem[s + 224] = mem[_367 + 224]
            mem[s + 256] = mem[_367 + 256]
            mem[s + 288] = mem[_367 + 288]
            if mem[_367 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_367 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _329 + (352 * _332) + -mem[64] + 64
    mem[64] = (32 * s) + 1184
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[(32 * s) + 960] = 0
    mem[(32 * s) + 992] = 0
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[var38002] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_256 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _463 = mem[64]
            mem[64] = mem[64] + 352
            mem[_463] = listings[idx].field_0
            mem[_463 + 32] = listings[idx].field_256
            mem[_463 + 64] = listings[idx].field_512
            mem[_463 + 96] = listings[idx].field_768
            mem[_463 + 128] = listings[idx].field_1024
            mem[_463 + 160] = listings[idx].field_1280
            mem[_463 + 192] = listings[idx].field_1536
            mem[_463 + 224] = listings[idx].field_1792
            mem[_463 + 256] = listings[idx].field_2048
            mem[_463 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_463 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _463
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _461 = mem[64]
        mem[mem[64]] = 32
        _464 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _464:
            _499 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_499 + 44 len 20]
            mem[s + 64] = mem[_499 + 76 len 20]
            mem[s + 96] = mem[_499 + 96]
            mem[s + 128] = mem[_499 + 128]
            mem[s + 160] = mem[_499 + 172 len 20]
            mem[s + 192] = mem[_499 + 192]
            mem[s + 224] = mem[_499 + 224]
            mem[s + 256] = mem[_499 + 256]
            mem[s + 288] = mem[_499 + 288]
            if mem[_499 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_499 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _461 + (352 * _464) + -mem[64] + 64
    mem[64] = (32 * s) + 1536
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[(32 * s) + 1280] = 0
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[(32 * s) + 1408] = 0
    mem[(32 * s) + 1440] = 0
    mem[(32 * s) + 1472] = 0
    mem[var46002] = 0
    mem[var48002] = var48001
    if var48003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_256 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _595 = mem[64]
            mem[64] = mem[64] + 352
            mem[_595] = listings[idx].field_0
            mem[_595 + 32] = listings[idx].field_256
            mem[_595 + 64] = listings[idx].field_512
            mem[_595 + 96] = listings[idx].field_768
            mem[_595 + 128] = listings[idx].field_1024
            mem[_595 + 160] = listings[idx].field_1280
            mem[_595 + 192] = listings[idx].field_1536
            mem[_595 + 224] = listings[idx].field_1792
            mem[_595 + 256] = listings[idx].field_2048
            mem[_595 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_595 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _595
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _593 = mem[64]
        mem[mem[64]] = 32
        _596 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _596:
            _631 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_631 + 44 len 20]
            mem[s + 64] = mem[_631 + 76 len 20]
            mem[s + 96] = mem[_631 + 96]
            mem[s + 128] = mem[_631 + 128]
            mem[s + 160] = mem[_631 + 172 len 20]
            mem[s + 192] = mem[_631 + 192]
            mem[s + 224] = mem[_631 + 224]
            mem[s + 256] = mem[_631 + 256]
            mem[s + 288] = mem[_631 + 288]
            if mem[_631 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_631 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _593 + (352 * _596) + -mem[64] + 64
}

function sub_1d0cd75e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < totalListings:
        mem[0] = idx
        mem[32] = 6
        if listings[idx].field_512 != address(arg1):
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 6
        if arg2 != listings[idx].field_768:
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            if arg2 != listings[idx].field_768:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _74 = mem[64]
            mem[64] = mem[64] + 352
            mem[_74] = listings[idx].field_0
            mem[_74 + 32] = listings[idx].field_256
            mem[_74 + 64] = listings[idx].field_512
            mem[_74 + 96] = listings[idx].field_768
            mem[_74 + 128] = listings[idx].field_1024
            mem[_74 + 160] = listings[idx].field_1280
            mem[_74 + 192] = listings[idx].field_1536
            mem[_74 + 224] = listings[idx].field_1792
            mem[_74 + 256] = listings[idx].field_2048
            mem[_74 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_74 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _74
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _72 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _72:
            _110 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_110 + 44 len 20]
            mem[s + 64] = mem[_110 + 76 len 20]
            mem[s + 96] = mem[_110 + 96]
            mem[s + 128] = mem[_110 + 128]
            mem[s + 160] = mem[_110 + 172 len 20]
            mem[s + 192] = mem[_110 + 192]
            mem[s + 224] = mem[_110 + 224]
            mem[s + 256] = mem[_110 + 256]
            mem[s + 288] = mem[_110 + 288]
            if mem[_110 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_110 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _70 + (352 * _72) + -mem[64] + 64
    mem[64] = (32 * s) + 480
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var22002] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            if arg2 != listings[idx].field_768:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _212 = mem[64]
            mem[64] = mem[64] + 352
            mem[_212] = listings[idx].field_0
            mem[_212 + 32] = listings[idx].field_256
            mem[_212 + 64] = listings[idx].field_512
            mem[_212 + 96] = listings[idx].field_768
            mem[_212 + 128] = listings[idx].field_1024
            mem[_212 + 160] = listings[idx].field_1280
            mem[_212 + 192] = listings[idx].field_1536
            mem[_212 + 224] = listings[idx].field_1792
            mem[_212 + 256] = listings[idx].field_2048
            mem[_212 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_212 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _212
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _208 = mem[64]
        mem[mem[64]] = 32
        _210 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _210:
            _248 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_248 + 44 len 20]
            mem[s + 64] = mem[_248 + 76 len 20]
            mem[s + 96] = mem[_248 + 96]
            mem[s + 128] = mem[_248 + 128]
            mem[s + 160] = mem[_248 + 172 len 20]
            mem[s + 192] = mem[_248 + 192]
            mem[s + 224] = mem[_248 + 224]
            mem[s + 256] = mem[_248 + 256]
            mem[s + 288] = mem[_248 + 288]
            if mem[_248 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_248 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _208 + (352 * _210) + -mem[64] + 64
    mem[64] = (32 * s) + 832
    mem[(32 * s) + 480] = 0
    mem[(32 * s) + 512] = 0
    mem[(32 * s) + 544] = 0
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[(32 * s) + 640] = 0
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[(32 * s) + 768] = 0
    mem[var30002] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            if arg2 != listings[idx].field_768:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _350 = mem[64]
            mem[64] = mem[64] + 352
            mem[_350] = listings[idx].field_0
            mem[_350 + 32] = listings[idx].field_256
            mem[_350 + 64] = listings[idx].field_512
            mem[_350 + 96] = listings[idx].field_768
            mem[_350 + 128] = listings[idx].field_1024
            mem[_350 + 160] = listings[idx].field_1280
            mem[_350 + 192] = listings[idx].field_1536
            mem[_350 + 224] = listings[idx].field_1792
            mem[_350 + 256] = listings[idx].field_2048
            mem[_350 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_350 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _350
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _346 = mem[64]
        mem[mem[64]] = 32
        _348 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _348:
            _386 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_386 + 44 len 20]
            mem[s + 64] = mem[_386 + 76 len 20]
            mem[s + 96] = mem[_386 + 96]
            mem[s + 128] = mem[_386 + 128]
            mem[s + 160] = mem[_386 + 172 len 20]
            mem[s + 192] = mem[_386 + 192]
            mem[s + 224] = mem[_386 + 224]
            mem[s + 256] = mem[_386 + 256]
            mem[s + 288] = mem[_386 + 288]
            if mem[_386 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_386 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _346 + (352 * _348) + -mem[64] + 64
    mem[64] = (32 * s) + 1184
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[(32 * s) + 960] = 0
    mem[(32 * s) + 992] = 0
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[var38002] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            if arg2 != listings[idx].field_768:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _488 = mem[64]
            mem[64] = mem[64] + 352
            mem[_488] = listings[idx].field_0
            mem[_488 + 32] = listings[idx].field_256
            mem[_488 + 64] = listings[idx].field_512
            mem[_488 + 96] = listings[idx].field_768
            mem[_488 + 128] = listings[idx].field_1024
            mem[_488 + 160] = listings[idx].field_1280
            mem[_488 + 192] = listings[idx].field_1536
            mem[_488 + 224] = listings[idx].field_1792
            mem[_488 + 256] = listings[idx].field_2048
            mem[_488 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_488 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _488
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _484 = mem[64]
        mem[mem[64]] = 32
        _486 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _486:
            _524 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_524 + 44 len 20]
            mem[s + 64] = mem[_524 + 76 len 20]
            mem[s + 96] = mem[_524 + 96]
            mem[s + 128] = mem[_524 + 128]
            mem[s + 160] = mem[_524 + 172 len 20]
            mem[s + 192] = mem[_524 + 192]
            mem[s + 224] = mem[_524 + 224]
            mem[s + 256] = mem[_524 + 256]
            mem[s + 288] = mem[_524 + 288]
            if mem[_524 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_524 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _484 + (352 * _486) + -mem[64] + 64
    mem[64] = (32 * s) + 1536
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[(32 * s) + 1280] = 0
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[(32 * s) + 1408] = 0
    mem[(32 * s) + 1440] = 0
    mem[(32 * s) + 1472] = 0
    mem[var46002] = 0
    mem[var48002] = var48001
    if var48003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < totalListings:
            mem[0] = idx
            mem[32] = 6
            if listings[idx].field_512 != address(arg1):
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            if arg2 != listings[idx].field_768:
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 6
            _626 = mem[64]
            mem[64] = mem[64] + 352
            mem[_626] = listings[idx].field_0
            mem[_626 + 32] = listings[idx].field_256
            mem[_626 + 64] = listings[idx].field_512
            mem[_626 + 96] = listings[idx].field_768
            mem[_626 + 128] = listings[idx].field_1024
            mem[_626 + 160] = listings[idx].field_1280
            mem[_626 + 192] = listings[idx].field_1536
            mem[_626 + 224] = listings[idx].field_1792
            mem[_626 + 256] = listings[idx].field_2048
            mem[_626 + 288] = listings[idx].field_2304
            if listings[idx].field_2560 > 1:
                revert with 0, 33
            mem[_626 + 320] = listings[idx].field_2560
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _626
            if s > -2:
                revert with 0, 17
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _622 = mem[64]
        mem[mem[64]] = 32
        _624 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _624:
            _662 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_662 + 44 len 20]
            mem[s + 64] = mem[_662 + 76 len 20]
            mem[s + 96] = mem[_662 + 96]
            mem[s + 128] = mem[_662 + 128]
            mem[s + 160] = mem[_662 + 172 len 20]
            mem[s + 192] = mem[_662 + 192]
            mem[s + 224] = mem[_662 + 224]
            mem[s + 256] = mem[_662 + 256]
            mem[s + 288] = mem[_662 + 288]
            if mem[_662 + 320] >= 2:
                revert with 0, 33
            mem[s + 320] = mem[_662 + 320]
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _622 + (352 * _624) + -mem[64] + 64
}

function sub_9b782ff2(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require ext_code.size(stor2)
    staticcall stor2.systemPaused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Market: The pack protocol is paused.'
    if cd[132] <= 0:
        revert with 0, 'Market: must list at least one token.'
    if cd[164] > cd[132]:
        revert with 0, 'Market: cannot let buyer buy more than listed quantity.'
    if totalListings > -2:
        revert with 0, 17
    totalListings++
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[4]))
    if stor1 != msg.sender:
        if ext_call.return_data[0]:
            staticcall address(cd[4]).0xe985e9c5 with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: must approve the market to transfer tokens being listed.'
            require ext_code.size(address(cd[4]))
            call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[36], cd[132], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > !cd[196]:
                revert with 0, 17
            if stor1 != msg.sender:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
            else:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
        else:
            staticcall address(cd[4]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: token must implement either ERC 1155 or ERC 721.'
            if cd[132] != 1:
                revert with 0, 'Market: Cannot list more than 1 of an ERC721 NFT.'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0xe985e9c5 with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(cd[4]))
            if not ext_call.return_data[0]:
                staticcall address(cd[4]).getApproved(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    revert with 0, 'Market: must approve the market to transfer tokens being listed.'
            call address(cd[4]).0xb88d4fde with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[36], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > !cd[196]:
                revert with 0, 17
            if stor1 != msg.sender:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
            else:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
    else:
        if ext_call.return_data[0]:
            staticcall address(cd[4]).0xe985e9c5 with:
                    gas gas_remaining wei
                   args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: must approve the market to transfer tokens being listed.'
            require ext_code.size(address(cd[4]))
            call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(this.address), cd[36], cd[132], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > !cd[196]:
                revert with 0, 17
            if stor1 != msg.sender:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
            else:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 0
                        listings[stor3].field_2816 = 0
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
        else:
            staticcall address(cd[4]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: token must implement either ERC 1155 or ERC 721.'
            if cd[132] != 1:
                revert with 0, 'Market: Cannot list more than 1 of an ERC721 NFT.'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0xe985e9c5 with:
                    gas gas_remaining wei
                   args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(cd[4]))
            if not ext_call.return_data[0]:
                staticcall address(cd[4]).getApproved(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    revert with 0, 'Market: must approve the market to transfer tokens being listed.'
            call address(cd[4]).0xb88d4fde with:
                 gas gas_remaining wei
                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(this.address), cd[36], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > !cd[196]:
                revert with 0, 17
            if stor1 != msg.sender:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = msg.sender
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, msg.sender, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
            else:
                if not cd[228]:
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = -1
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], -1, cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                else:
                    if block.timestamp > !cd[228]:
                        revert with 0, 17
                    listings[stor3].field_0 = totalListings
                    listings[stor3].field_256 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                    listings[stor3].field_320 = 0
                    listings[stor3].field_512 = address(cd[4])
                    listings[stor3].field_768 = cd[36]
                    listings[stor3].field_1024 = cd[132]
                    listings[stor3].field_1280 = address(cd[68])
                    listings[stor3].field_1536 = cd[100]
                    listings[stor3].field_1792 = block.timestamp + cd[196]
                    listings[stor3].field_2048 = block.timestamp + cd[228]
                    if not cd[164]:
                        listings[stor3].field_2304 = cd[132]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[132], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
                    else:
                        listings[stor3].field_2304 = cd[164]
                        listings[stor3].field_2560 = 1
                        if stor1 != msg.sender:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), msg.sender, totalListings
                        else:
                            emit 0x70c5741a: totalListings, Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(cd[4]), cd[36], cd[132], address(cd[68]), cd[100], block.timestamp + cd[196], block.timestamp + cd[228], cd[164], 1, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, totalListings
}

function buy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(stor2)
    staticcall stor2.systemPaused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Market: The pack protocol is paused.'
    if not listings[arg1].field_256:
        revert with 0, 'Market: The listing does not exist.'
    if listings[arg1].field_2560 > 1:
        revert with 0, 33
    if arg2 <= 0:
        revert with 0, 'Market: must buy an appropriate amount of tokens.'
    if arg2 > listings[arg1].field_1024:
        revert with 0, 'Market: must buy an appropriate amount of tokens.'
    if block.timestamp > listings[arg1].field_2048:
        revert with 0, 'Market: the sale has either not started or closed.'
    if block.timestamp < listings[arg1].field_1792:
        revert with 0, 'Market: the sale has either not started or closed.'
    if stor1 != msg.sender:
        if arg2 > !sub_20c7852c[arg1][address(msg.sender)]:
            revert with 0, 17
        if arg2 + sub_20c7852c[arg1][address(msg.sender)] > listings[arg1].field_2304:
            revert with 0, 'Market: Cannot buy more from listing than permitted.'
        if sub_20c7852c[arg1][address(msg.sender)] > !arg2:
            revert with 0, 17
        sub_20c7852c[arg1][address(msg.sender)] += arg2
        if listings[arg1].field_1024 < arg2:
            revert with 0, 17
        listings[arg1].field_256 = listings[arg1].field_256
        listings[arg1].field_512 = listings[arg1].field_512
        listings[arg1].field_1024 -= arg2
        listings[arg1].field_1280 = listings[arg1].field_1280
        if listings[arg1].field_2560 > 1:
            revert with 0, 33
        listings[arg1].field_2560 = listings[arg1].field_2560
        if listings[arg1].field_1536:
            if listings[arg1].field_1536 and arg2 > -1 / listings[arg1].field_1536:
                revert with 0, 17
            require ext_code.size(listings[arg1].field_1280)
            if stor1 != msg.sender:
                staticcall listings[arg1].field_1280.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
            else:
                staticcall listings[arg1].field_1280.0xdd62ed3e with:
                        gas gas_remaining wei
                       args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < listings[arg1].field_1536 * arg2:
                revert with 0, 'Market: must approve Market to transfer price to pay.'
            require ext_code.size(stor2)
            staticcall stor2.MAX_BPS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            if listings[arg1].field_1536 * arg2 and sub_3f5c3e87 > -1 / listings[arg1].field_1536 * arg2:
                revert with 0, 17
            if not ext_call.return_data[16 len 16]:
                revert with 0, 18
            require ext_code.size(stor2)
            staticcall stor2.0x99c04d3b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            require ext_code.size(stor2)
            staticcall stor2.MAX_BPS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            if listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) and uint128(ext_call.return_data[0]) > -1 / listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[16 len 16]:
                revert with 0, 18
            if listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) < listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / ext_call.return_data[16 len 16]:
                revert with 0, 17
            require ext_code.size(stor2)
            staticcall stor2.0xf603ed3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(listings[arg1].field_1280)
            if stor1 != msg.sender:
                call listings[arg1].field_1280.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
            else:
                call listings[arg1].field_1280.0x23b872dd with:
                     gas gas_remaining wei
                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: failed to transfer protocol cut.'
            if listings[arg1].field_1536 * arg2 < (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])):
                revert with 0, 17
            if (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) + (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) < listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]):
                revert with 0, 17
            require ext_code.size(listings[arg1].field_512)
            staticcall listings[arg1].field_512.supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x2a55205a00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(stor2)
                staticcall stor2.0x98990a0e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(listings[arg1].field_1280)
                if stor1 != msg.sender:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                else:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Market: failed to transfer provider cut.'
                require ext_code.size(listings[arg1].field_1280)
                if stor1 != msg.sender:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                else:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
            else:
                require ext_code.size(listings[arg1].field_512)
                staticcall listings[arg1].field_512.0x2a55205a with:
                        gas gas_remaining wei
                       args listings[arg1].field_768, listings[arg1].field_1536 * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    require ext_code.size(stor2)
                    staticcall stor2.0x98990a0e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(listings[arg1].field_1280)
                    if stor1 != msg.sender:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                    else:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Market: failed to transfer provider cut.'
                    require ext_code.size(listings[arg1].field_1280)
                    if stor1 != msg.sender:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                    else:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                else:
                    if ext_call.return_data[32] <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.0x98990a0e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Market: failed to transfer provider cut.'
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                    else:
                        if ext_call.return_data[32] > !((listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))):
                            revert with 0, 17
                        if ext_call.return_data[32] + (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) > !(listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])):
                            revert with 0, 17
                        if ext_call.return_data[32] + (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) > listings[arg1].field_1536 * arg2:
                            revert with 0, 'Market: Total market fees exceed the price.'
                        require ext_code.size(stor2)
                        staticcall stor2.MAX_BPS() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                        if ext_call.return_data[32] and uint128(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[16 len 16]:
                            revert with 0, 18
                        if (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) < ext_call.return_data[32]:
                            revert with 0, 17
                        if listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]) > !(ext_call.return_data[32] * uint128(ext_call.return_data[0]) / ext_call.return_data[16 len 16]):
                            revert with 0, 17
                        if ext_call.return_data[32] < ext_call.return_data[32] * uint128(ext_call.return_data[0]) / ext_call.return_data[16 len 16]:
                            revert with 0, 17
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[32] - (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), ext_call.return_data[32] - (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Market: failed to transfer creator cut.'
                        require ext_code.size(stor2)
                        staticcall stor2.0x98990a0e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) + (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) + (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Market: failed to transfer provider cut.'
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - ext_call.return_data[32]
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: failed to transfer seller cut.'
        if listings[arg1].field_2560 > 1:
            revert with 0, 33
        if not listings[arg1].field_2560:
            require ext_code.size(listings[arg1].field_512)
            if stor1 != msg.sender:
                call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, listings[arg1].field_768, arg2, 160, 0
            else:
                call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_768, arg2, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if listings[arg1].field_2560 > 1:
                revert with 0, 33
            if listings[arg1].field_2560 == 1:
                if arg2 != 1:
                    revert with 0, 'Market: Cannot unlist more than one of an ERC 721 NFT.'
                require ext_code.size(listings[arg1].field_512)
                if stor1 != msg.sender:
                    call listings[arg1].field_512.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, listings[arg1].field_768, 128, 0
                else:
                    call listings[arg1].field_512.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_768, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if listings[arg1].field_2560 >= 2:
            revert with 0, 33
        emit 0xc8481901: msg.sender, arg2, listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024 - arg2, listings[arg1].field_1280, listings[arg1].field_1536, listings[arg1].field_1792, listings[arg1].field_2048, listings[arg1].field_2304, listings[arg1].field_2560, listings[arg1].field_512, listings[arg1].field_256, arg1
    else:
        if arg2 > !sub_20c7852c[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
            revert with 0, 17
        if arg2 + sub_20c7852c[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] > listings[arg1].field_2304:
            revert with 0, 'Market: Cannot buy more from listing than permitted.'
        if sub_20c7852c[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] > !arg2:
            revert with 0, 17
        sub_20c7852c[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] += arg2
        if listings[arg1].field_1024 < arg2:
            revert with 0, 17
        listings[arg1].field_256 = listings[arg1].field_256
        listings[arg1].field_512 = listings[arg1].field_512
        listings[arg1].field_1024 -= arg2
        listings[arg1].field_1280 = listings[arg1].field_1280
        if listings[arg1].field_2560 > 1:
            revert with 0, 33
        listings[arg1].field_2560 = listings[arg1].field_2560
        if listings[arg1].field_1536:
            if listings[arg1].field_1536 and arg2 > -1 / listings[arg1].field_1536:
                revert with 0, 17
            require ext_code.size(listings[arg1].field_1280)
            if stor1 != msg.sender:
                staticcall listings[arg1].field_1280.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
            else:
                staticcall listings[arg1].field_1280.0xdd62ed3e with:
                        gas gas_remaining wei
                       args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < listings[arg1].field_1536 * arg2:
                revert with 0, 'Market: must approve Market to transfer price to pay.'
            require ext_code.size(stor2)
            staticcall stor2.MAX_BPS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            if listings[arg1].field_1536 * arg2 and sub_3f5c3e87 > -1 / listings[arg1].field_1536 * arg2:
                revert with 0, 17
            if not ext_call.return_data[16 len 16]:
                revert with 0, 18
            require ext_code.size(stor2)
            staticcall stor2.0x99c04d3b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            require ext_code.size(stor2)
            staticcall stor2.MAX_BPS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            if listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) and uint128(ext_call.return_data[0]) > -1 / listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[16 len 16]:
                revert with 0, 18
            if listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) < listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / ext_call.return_data[16 len 16]:
                revert with 0, 17
            require ext_code.size(stor2)
            staticcall stor2.0xf603ed3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(listings[arg1].field_1280)
            if stor1 != msg.sender:
                call listings[arg1].field_1280.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
            else:
                call listings[arg1].field_1280.0x23b872dd with:
                     gas gas_remaining wei
                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: failed to transfer protocol cut.'
            if listings[arg1].field_1536 * arg2 < (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])):
                revert with 0, 17
            if (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) + (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) < listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]):
                revert with 0, 17
            require ext_code.size(listings[arg1].field_512)
            staticcall listings[arg1].field_512.supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x2a55205a00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(stor2)
                staticcall stor2.0x98990a0e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(listings[arg1].field_1280)
                if stor1 != msg.sender:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                else:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Market: failed to transfer provider cut.'
                require ext_code.size(listings[arg1].field_1280)
                if stor1 != msg.sender:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                else:
                    call listings[arg1].field_1280.0x23b872dd with:
                         gas gas_remaining wei
                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
            else:
                require ext_code.size(listings[arg1].field_512)
                staticcall listings[arg1].field_512.0x2a55205a with:
                        gas gas_remaining wei
                       args listings[arg1].field_768, listings[arg1].field_1536 * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    require ext_code.size(stor2)
                    staticcall stor2.0x98990a0e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(listings[arg1].field_1280)
                    if stor1 != msg.sender:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                    else:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Market: failed to transfer provider cut.'
                    require ext_code.size(listings[arg1].field_1280)
                    if stor1 != msg.sender:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                    else:
                        call listings[arg1].field_1280.0x23b872dd with:
                             gas gas_remaining wei
                            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                else:
                    if ext_call.return_data[32] <= 0:
                        require ext_code.size(stor2)
                        staticcall stor2.0x98990a0e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Market: failed to transfer provider cut.'
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]))
                    else:
                        if ext_call.return_data[32] > !((listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))):
                            revert with 0, 17
                        if ext_call.return_data[32] + (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) > !(listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])):
                            revert with 0, 17
                        if ext_call.return_data[32] + (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) > listings[arg1].field_1536 * arg2:
                            revert with 0, 'Market: Total market fees exceed the price.'
                        require ext_code.size(stor2)
                        staticcall stor2.MAX_BPS() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                        if ext_call.return_data[32] and uint128(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[16 len 16]:
                            revert with 0, 18
                        if (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) < ext_call.return_data[32]:
                            revert with 0, 17
                        if listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]) > !(ext_call.return_data[32] * uint128(ext_call.return_data[0]) / ext_call.return_data[16 len 16]):
                            revert with 0, 17
                        if ext_call.return_data[32] < ext_call.return_data[32] * uint128(ext_call.return_data[0]) / ext_call.return_data[16 len 16]:
                            revert with 0, 17
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[32] - (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), ext_call.return_data[32] - (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Market: failed to transfer creator cut.'
                        require ext_code.size(stor2)
                        staticcall stor2.0x98990a0e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) + (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0]) * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0])) + (ext_call.return_data[32] * uint128(ext_call.return_data[0]) / uint128(ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Market: failed to transfer provider cut.'
                        require ext_code.size(listings[arg1].field_1280)
                        if stor1 != msg.sender:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - ext_call.return_data[32]
                        else:
                            call listings[arg1].field_1280.0x23b872dd with:
                                 gas gas_remaining wei
                                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_256, (listings[arg1].field_1536 * arg2) - (listings[arg1].field_1536 * arg2 * sub_3f5c3e87 / uint128(ext_call.return_data[0])) - ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Market: failed to transfer seller cut.'
        if listings[arg1].field_2560 > 1:
            revert with 0, 33
        if not listings[arg1].field_2560:
            require ext_code.size(listings[arg1].field_512)
            if stor1 != msg.sender:
                call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, listings[arg1].field_768, arg2, 160, 0
            else:
                call listings[arg1].field_512.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_768, arg2, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if listings[arg1].field_2560 > 1:
                revert with 0, 33
            if listings[arg1].field_2560 == 1:
                if arg2 != 1:
                    revert with 0, 'Market: Cannot unlist more than one of an ERC 721 NFT.'
                require ext_code.size(listings[arg1].field_512)
                if stor1 != msg.sender:
                    call listings[arg1].field_512.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, listings[arg1].field_768, 128, 0
                else:
                    call listings[arg1].field_512.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), Mask(64, 96, cd[(calldata.size - 20)]) << 96, listings[arg1].field_768, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if listings[arg1].field_2560 >= 2:
            revert with 0, 33
        emit 0xc8481901: Mask(64, 96, cd[(calldata.size - 20)]) << 96, arg2, listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024 - arg2, listings[arg1].field_1280, listings[arg1].field_1536, listings[arg1].field_1792, listings[arg1].field_2048, listings[arg1].field_2304, listings[arg1].field_2560, listings[arg1].field_512, listings[arg1].field_256, arg1
    stor0 = 1
}



}
