contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint8 stor2; offset 8
mapping of address sub_26c73fa9;

function sub_26c73fa9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_26c73fa9[arg1[all]]
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function stopped() payable {
    return bool(uint8(stor2.field_8))
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
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

function stop() payable {
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    require not uint8(stor2.field_8)
    uint8(stor2.field_8) = 1
    emit Stop()
}

function unpause() payable {
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    require uint8(stor2.field_0)
    uint8(stor2.field_0) = 0
    emit Unpause()
}

function pause() payable {
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    require not uint8(stor2.field_0)
    uint8(stor2.field_0) = 1
    emit Pause()
}

function addAddressToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
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

function sub_2ff8c268(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    sub_26c73fa9[arg1[all]] = address(arg2)
}

function addAddressesToWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if stor1[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        emit WhitelistedAddressAdded(address(cd[((32 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if not stor1[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        emit WhitelistedAddressRemoved(address(cd[((32 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function sub_e82b3e17(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        if block.number < 1:
            revert with 0, 17
        mem[128] = block.timestamp
        mem[160] = block.hash(block.number - 1)
        mem[192] = cd[4]
        mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
        mem[96] = 116
        mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
        mem[392] = 0
        mem[244] = 116
        mem[64] = 392
        if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68]:
            revert with 0, '!d20'
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 9] = 3
            require ext_code.size(sub_26c73fa9['crafting1'])
            staticcall sub_26c73fa9['crafting1'].next_item() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _211 = mem[_207]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(sub_26c73fa9['crafting1'])
            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _211
            require ext_code.size(sub_26c73fa9['crafting1'])
            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _211
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
        if block.number < 1:
            revert with 0, 17
        mem[128] = block.timestamp
        mem[160] = block.hash(block.number - 1)
        mem[192] = cd[4]
        mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
        mem[96] = 116
        mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
        mem[392] = 0
        mem[244] = 116
        mem[64] = 392
        if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68]:
            revert with 0, '!d20'
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 9] = 3
            require ext_code.size(sub_26c73fa9['crafting1'])
            staticcall sub_26c73fa9['crafting1'].next_item() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _213 = mem[_209]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(sub_26c73fa9['crafting1'])
            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _213
            require ext_code.size(sub_26c73fa9['crafting1'])
            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _213
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_679d7d6b(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    if stor1[msg.sender]:
        mem[0] = msg.sender
        mem[32] = 1
        if stor1[msg.sender]:
            if block.number < 1:
                revert with 0, 17
            mem[128] = block.timestamp
            mem[160] = block.hash(block.number - 1)
            mem[192] = cd[4]
            mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[96] = 116
            mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[392] = 0
            mem[244] = 116
            mem[64] = 392
            if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68]:
                revert with 0, '!d20'
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 9] = 3
                require ext_code.size(sub_26c73fa9['crafting1'])
                staticcall sub_26c73fa9['crafting1'].next_item() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _423 = mem[_415]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[mem[64] + 100] = 0
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _423
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _423
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'not whitelist or owner'
            if block.number < 1:
                revert with 0, 17
            mem[128] = block.timestamp
            mem[160] = block.hash(block.number - 1)
            mem[192] = cd[4]
            mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[96] = 116
            mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[392] = 0
            mem[244] = 116
            mem[64] = 392
            if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68]:
                revert with 0, '!d20'
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 9] = 3
                require ext_code.size(sub_26c73fa9['crafting1'])
                staticcall sub_26c73fa9['crafting1'].next_item() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _425 = mem[_417]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[mem[64] + 100] = 0
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _425
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _425
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
        mem[0] = msg.sender
        mem[32] = 1
        if stor1[msg.sender]:
            if block.number < 1:
                revert with 0, 17
            mem[128] = block.timestamp
            mem[160] = block.hash(block.number - 1)
            mem[192] = cd[4]
            mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[96] = 116
            mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[392] = 0
            mem[244] = 116
            mem[64] = 392
            if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68]:
                revert with 0, '!d20'
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 9] = 3
                require ext_code.size(sub_26c73fa9['crafting1'])
                staticcall sub_26c73fa9['crafting1'].next_item() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _427 = mem[_419]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[mem[64] + 100] = 0
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _427
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _427
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'not whitelist or owner'
            if block.number < 1:
                revert with 0, 17
            mem[128] = block.timestamp
            mem[160] = block.hash(block.number - 1)
            mem[192] = cd[4]
            mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[96] = 116
            mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
            mem[392] = 0
            mem[244] = 116
            mem[64] = 392
            if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68]:
                revert with 0, '!d20'
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 9] = 3
                require ext_code.size(sub_26c73fa9['crafting1'])
                staticcall sub_26c73fa9['crafting1'].next_item() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _429 = mem[_421]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[mem[64] + 100] = 0
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _429
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _429
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_88af91a9(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    if stor1[msg.sender]:
        if cd[68] <= cd[100]:
            mem[0] = msg.sender
            mem[32] = 1
            if stor1[msg.sender]:
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < 0:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _841 = mem[_825]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _841
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _841
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'not whitelist or owner'
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < 0:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _827 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _843 = mem[_827]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _843
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _843
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if cd[68] < cd[100]:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            if stor1[msg.sender]:
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68] - cd[100]:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _845 = mem[_829]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _845
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _845
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'not whitelist or owner'
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68] - cd[100]:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _847 = mem[_831]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _847
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _847
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
        if cd[68] <= cd[100]:
            mem[0] = msg.sender
            mem[32] = 1
            if stor1[msg.sender]:
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < 0:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _849 = mem[_833]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _849
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _849
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'not whitelist or owner'
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < 0:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _851 = mem[_835]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _851
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _851
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if cd[68] < cd[100]:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            if stor1[msg.sender]:
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68] - cd[100]:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _837 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _853 = mem[_837]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _853
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _853
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'not whitelist or owner'
                if block.number < 1:
                    revert with 0, 17
                mem[128] = block.timestamp
                mem[160] = block.hash(block.number - 1)
                mem[192] = cd[4]
                mem[224] = Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[96] = 116
                mem[276 len 128] = block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1'])
                mem[392] = 0
                mem[244] = 116
                mem[64] = 392
                if sha3(block.timestamp, block.hash(block.number - 1), cd[4], Mask(160, 96, sub_26c73fa9['crafting1']) >> 672) % 20 < cd[68] - cd[100]:
                    revert with 0, '!d20'
                idx = 0
                while idx < ('cd', 36).length:
                    mem[mem[64] + 9] = 3
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    staticcall sub_26c73fa9['crafting1'].next_item() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _855 = mem[_839]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                    mem[mem[64] + 100] = 0
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _855
                    require ext_code.size(sub_26c73fa9['crafting1'])
                    call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _855
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_4515d225(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        require ext_code.size(sub_26c73fa9[0])
        staticcall sub_26c73fa9[0].get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        mem[96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require 127 < return_data.size + 96
        if not bool(ceil32(return_data.size) + 1248 <= test266151307()):
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + 1248
        require return_data.size >= 1152
        s = 96
        t = ceil32(return_data.size) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _20 = mem[ceil32(return_data.size) + 256]
        if not ('cd', 36).length:
            revert with 0, '!len'
        if mem[ceil32(return_data.size) + 287 len 1] <= 0:
            revert with 0, '!craft_skill'
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[mem[64] + 4] = uint8(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 68)])
            require ext_code.size(sub_26c73fa9['crafting1'])
            staticcall sub_26c73fa9['crafting1'].get_dc(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args cd[((64 * idx) + cd[36] + 36)] << 248, uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _926 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            if mem[_926] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_926]
            continue 
        require ext_code.size(sub_26c73fa9['attribute'])
        staticcall sub_26c73fa9['attribute'].ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _912 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_912] == mem[_912 + 28 len 4]
        require mem[_912 + 32] == mem[_912 + 60 len 4]
        require mem[_912 + 64] == mem[_912 + 92 len 4]
        _924 = mem[_912 + 96]
        require mem[_912 + 96] == mem[_912 + 124 len 4]
        require mem[_912 + 128] == mem[_912 + 156 len 4]
        require mem[_912 + 160] == mem[_912 + 188 len 4]
        if 9 == mem[_912 + 124 len 4]:
            if -1 > -uint8(_20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and uint8(_20) >= 0:
                revert with 0, 17
            if uint8(_20) < 0 and -1 < -uint8(_20) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if uint8(_20) - 1 <= 0:
                revert with 0, '!basic_point'
            if s <= uint8(_20) - 1:
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _977 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _978 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _986 = mem[_978]
                    mem[_977 + 180 len ceil32(mem[_978])] = mem[_978 + 32 len ceil32(mem[_978])]
                    if ceil32(_986) <= _986:
                        _1794 = mem[64]
                        mem[mem[64]] = _986 + _977 + -mem[64] + 148
                        mem[64] = _986 + _977 + 180
                        if sha3(mem[_1794 + 32 len mem[_1794]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2622 = mem[_2590]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2622
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2622
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_977 + _986 + 180] = 0
                        _1842 = mem[64]
                        mem[mem[64]] = _986 + _977 + -mem[64] + 148
                        mem[64] = _986 + _977 + 180
                        if sha3(mem[_1842 + 32 len mem[_1842]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2623 = mem[_2591]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2623
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2623
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _987 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _988 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _995 = mem[_988]
                    mem[_987 + 180 len ceil32(mem[_988])] = mem[_988 + 32 len ceil32(mem[_988])]
                    if ceil32(_995) <= _995:
                        _1797 = mem[64]
                        mem[mem[64]] = _995 + _987 + -mem[64] + 148
                        mem[64] = _995 + _987 + 180
                        if sha3(mem[_1797 + 32 len mem[_1797]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2624 = mem[_2592]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2624
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2624
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_987 + _995 + 180] = 0
                        _1845 = mem[64]
                        mem[mem[64]] = _995 + _987 + -mem[64] + 148
                        mem[64] = _995 + _987 + 180
                        if sha3(mem[_1845 + 32 len mem[_1845]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2625 = mem[_2593]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2625
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2625
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if s < uint8(_20) - 1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _1004 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1005 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1019 = mem[_1005]
                    mem[_1004 + 180 len ceil32(mem[_1005])] = mem[_1005 + 32 len ceil32(mem[_1005])]
                    if ceil32(_1019) <= _1019:
                        _1800 = mem[64]
                        mem[mem[64]] = _1019 + _1004 + -mem[64] + 148
                        mem[64] = _1019 + _1004 + 180
                        if sha3(mem[_1800 + 32 len mem[_1800]]) % 20 < s + -uint8(_20) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2626 = mem[_2594]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2626
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2626
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1004 + _1019 + 180] = 0
                        _1848 = mem[64]
                        mem[mem[64]] = _1019 + _1004 + -mem[64] + 148
                        mem[64] = _1019 + _1004 + 180
                        if sha3(mem[_1848 + 32 len mem[_1848]]) % 20 < s + -uint8(_20) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2627 = mem[_2595]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2627
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2627
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _1020 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1021 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1035 = mem[_1021]
                    mem[_1020 + 180 len ceil32(mem[_1021])] = mem[_1021 + 32 len ceil32(mem[_1021])]
                    if ceil32(_1035) <= _1035:
                        _1803 = mem[64]
                        mem[mem[64]] = _1035 + _1020 + -mem[64] + 148
                        mem[64] = _1035 + _1020 + 180
                        if sha3(mem[_1803 + 32 len mem[_1803]]) % 20 < s + -uint8(_20) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2628 = mem[_2596]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2628
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2628
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1020 + _1035 + 180] = 0
                        _1851 = mem[64]
                        mem[mem[64]] = _1035 + _1020 + -mem[64] + 148
                        mem[64] = _1035 + _1020 + 180
                        if sha3(mem[_1851 + 32 len mem[_1851]]) % 20 < s + -uint8(_20) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2629 = mem[_2597]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2629
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2629
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if mem[_912 + 124 len 4] < 0x800000000000000000000000000000000000000000000000000000000000000a:
                revert with 0, 17
            if mem[_912 + 124 len 4] - 10 / 2 > -uint8(_20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and uint8(_20) >= 0:
                revert with 0, 17
            if uint8(_20) < 0 and mem[_912 + 124 len 4] - 10 / 2 < -uint8(_20) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if uint8(_20) + (mem[_912 + 124 len 4] - 10 / 2) <= 0:
                revert with 0, '!basic_point'
            if s <= uint8(_20) + (mem[_912 + 124 len 4] - 10 / 2):
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _1076 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1077 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1090 = mem[_1077]
                    mem[_1076 + 180 len ceil32(mem[_1077])] = mem[_1077 + 32 len ceil32(mem[_1077])]
                    if ceil32(_1090) <= _1090:
                        _1782 = mem[64]
                        mem[mem[64]] = _1090 + _1076 + -mem[64] + 148
                        mem[64] = _1090 + _1076 + 180
                        if sha3(mem[_1782 + 32 len mem[_1782]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2614 = mem[_2582]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2614
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2614
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1076 + _1090 + 180] = 0
                        _1830 = mem[64]
                        mem[mem[64]] = _1090 + _1076 + -mem[64] + 148
                        mem[64] = _1090 + _1076 + 180
                        if sha3(mem[_1830 + 32 len mem[_1830]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2615 = mem[_2583]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2615
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2615
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _1091 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1092 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1110 = mem[_1092]
                    mem[_1091 + 180 len ceil32(mem[_1092])] = mem[_1092 + 32 len ceil32(mem[_1092])]
                    if ceil32(_1110) <= _1110:
                        _1785 = mem[64]
                        mem[mem[64]] = _1110 + _1091 + -mem[64] + 148
                        mem[64] = _1110 + _1091 + 180
                        if sha3(mem[_1785 + 32 len mem[_1785]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2616 = mem[_2584]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2616
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2616
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1091 + _1110 + 180] = 0
                        _1833 = mem[64]
                        mem[mem[64]] = _1110 + _1091 + -mem[64] + 148
                        mem[64] = _1110 + _1091 + 180
                        if sha3(mem[_1833 + 32 len mem[_1833]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2585 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2617 = mem[_2585]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2617
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if s < uint8(_20) + (mem[_912 + 124 len 4] - 10 / 2):
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _1119 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1120 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1127 = mem[_1120]
                    mem[_1119 + 180 len ceil32(mem[_1120])] = mem[_1120 + 32 len ceil32(mem[_1120])]
                    if ceil32(_1127) <= _1127:
                        _1788 = mem[64]
                        mem[mem[64]] = _1127 + _1119 + -mem[64] + 148
                        mem[64] = _1127 + _1119 + 180
                        if sha3(mem[_1788 + 32 len mem[_1788]]) % 20 < s - uint8(_20) - (uint32(_924) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2586 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2618 = mem[_2586]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2618
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2618
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1119 + _1127 + 180] = 0
                        _1836 = mem[64]
                        mem[mem[64]] = _1127 + _1119 + -mem[64] + 148
                        mem[64] = _1127 + _1119 + 180
                        if sha3(mem[_1836 + 32 len mem[_1836]]) % 20 < s - uint8(_20) - (uint32(_924) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2619 = mem[_2587]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2619
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2619
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _1128 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1129 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1141 = mem[_1129]
                    mem[_1128 + 180 len ceil32(mem[_1129])] = mem[_1129 + 32 len ceil32(mem[_1129])]
                    if ceil32(_1141) <= _1141:
                        _1791 = mem[64]
                        mem[mem[64]] = _1141 + _1128 + -mem[64] + 148
                        mem[64] = _1141 + _1128 + 180
                        if sha3(mem[_1791 + 32 len mem[_1791]]) % 20 < s - uint8(_20) - (uint32(_924) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2620 = mem[_2588]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2620
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2620
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1128 + _1141 + 180] = 0
                        _1839 = mem[64]
                        mem[mem[64]] = _1141 + _1128 + -mem[64] + 148
                        mem[64] = _1141 + _1128 + 180
                        if sha3(mem[_1839 + 32 len mem[_1839]]) % 20 < s - uint8(_20) - (uint32(_924) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2621 = mem[_2589]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2621
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2621
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
        require ext_code.size(sub_26c73fa9[0])
        staticcall sub_26c73fa9[0].get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        mem[96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require 127 < return_data.size + 96
        if not bool(ceil32(return_data.size) + 1248 <= test266151307()):
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + 1248
        require return_data.size >= 1152
        s = 96
        t = ceil32(return_data.size) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _21 = mem[ceil32(return_data.size) + 256]
        if not ('cd', 36).length:
            revert with 0, '!len'
        if mem[ceil32(return_data.size) + 287 len 1] <= 0:
            revert with 0, '!craft_skill'
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[mem[64] + 4] = uint8(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 68)])
            require ext_code.size(sub_26c73fa9['crafting1'])
            staticcall sub_26c73fa9['crafting1'].get_dc(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args cd[((64 * idx) + cd[36] + 36)] << 248, uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _927 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            if mem[_927] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_927]
            continue 
        require ext_code.size(sub_26c73fa9['attribute'])
        staticcall sub_26c73fa9['attribute'].ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _913 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_913] == mem[_913 + 28 len 4]
        require mem[_913 + 32] == mem[_913 + 60 len 4]
        require mem[_913 + 64] == mem[_913 + 92 len 4]
        _925 = mem[_913 + 96]
        require mem[_913 + 96] == mem[_913 + 124 len 4]
        require mem[_913 + 128] == mem[_913 + 156 len 4]
        require mem[_913 + 160] == mem[_913 + 188 len 4]
        if 9 == mem[_913 + 124 len 4]:
            if -1 > -uint8(_21) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and uint8(_21) >= 0:
                revert with 0, 17
            if uint8(_21) < 0 and -1 < -uint8(_21) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if uint8(_21) - 1 <= 0:
                revert with 0, '!basic_point'
            if s <= uint8(_21) - 1:
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _982 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _983 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _990 = mem[_983]
                    mem[_982 + 180 len ceil32(mem[_983])] = mem[_983 + 32 len ceil32(mem[_983])]
                    if ceil32(_990) <= _990:
                        _1818 = mem[64]
                        mem[mem[64]] = _990 + _982 + -mem[64] + 148
                        mem[64] = _990 + _982 + 180
                        if sha3(mem[_1818 + 32 len mem[_1818]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2638 = mem[_2606]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2638
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2638
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_982 + _990 + 180] = 0
                        _1866 = mem[64]
                        mem[mem[64]] = _990 + _982 + -mem[64] + 148
                        mem[64] = _990 + _982 + 180
                        if sha3(mem[_1866 + 32 len mem[_1866]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2607 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2639 = mem[_2607]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2639
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2639
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _991 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _992 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _997 = mem[_992]
                    mem[_991 + 180 len ceil32(mem[_992])] = mem[_992 + 32 len ceil32(mem[_992])]
                    if ceil32(_997) <= _997:
                        _1821 = mem[64]
                        mem[mem[64]] = _997 + _991 + -mem[64] + 148
                        mem[64] = _997 + _991 + 180
                        if sha3(mem[_1821 + 32 len mem[_1821]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2608 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2640 = mem[_2608]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2640
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2640
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_991 + _997 + 180] = 0
                        _1869 = mem[64]
                        mem[mem[64]] = _997 + _991 + -mem[64] + 148
                        mem[64] = _997 + _991 + 180
                        if sha3(mem[_1869 + 32 len mem[_1869]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2641 = mem[_2609]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2641
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2641
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if s < uint8(_21) - 1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _1013 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1014 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1026 = mem[_1014]
                    mem[_1013 + 180 len ceil32(mem[_1014])] = mem[_1014 + 32 len ceil32(mem[_1014])]
                    if ceil32(_1026) <= _1026:
                        _1824 = mem[64]
                        mem[mem[64]] = _1026 + _1013 + -mem[64] + 148
                        mem[64] = _1026 + _1013 + 180
                        if sha3(mem[_1824 + 32 len mem[_1824]]) % 20 < s + -uint8(_21) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2642 = mem[_2610]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2642
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2642
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1013 + _1026 + 180] = 0
                        _1872 = mem[64]
                        mem[mem[64]] = _1026 + _1013 + -mem[64] + 148
                        mem[64] = _1026 + _1013 + 180
                        if sha3(mem[_1872 + 32 len mem[_1872]]) % 20 < s + -uint8(_21) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2643 = mem[_2611]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2643
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2643
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _1027 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1028 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1041 = mem[_1028]
                    mem[_1027 + 180 len ceil32(mem[_1028])] = mem[_1028 + 32 len ceil32(mem[_1028])]
                    if ceil32(_1041) <= _1041:
                        _1827 = mem[64]
                        mem[mem[64]] = _1041 + _1027 + -mem[64] + 148
                        mem[64] = _1041 + _1027 + 180
                        if sha3(mem[_1827 + 32 len mem[_1827]]) % 20 < s + -uint8(_21) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2644 = mem[_2612]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2644
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2644
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1027 + _1041 + 180] = 0
                        _1875 = mem[64]
                        mem[mem[64]] = _1041 + _1027 + -mem[64] + 148
                        mem[64] = _1041 + _1027 + 180
                        if sha3(mem[_1875 + 32 len mem[_1875]]) % 20 < s + -uint8(_21) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2645 = mem[_2613]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2645
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2645
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if mem[_913 + 124 len 4] < 0x800000000000000000000000000000000000000000000000000000000000000a:
                revert with 0, 17
            if mem[_913 + 124 len 4] - 10 / 2 > -uint8(_21) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and uint8(_21) >= 0:
                revert with 0, 17
            if uint8(_21) < 0 and mem[_913 + 124 len 4] - 10 / 2 < -uint8(_21) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if uint8(_21) + (mem[_913 + 124 len 4] - 10 / 2) <= 0:
                revert with 0, '!basic_point'
            if s <= uint8(_21) + (mem[_913 + 124 len 4] - 10 / 2):
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _1083 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1084 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1100 = mem[_1084]
                    mem[_1083 + 180 len ceil32(mem[_1084])] = mem[_1084 + 32 len ceil32(mem[_1084])]
                    if ceil32(_1100) <= _1100:
                        _1806 = mem[64]
                        mem[mem[64]] = _1100 + _1083 + -mem[64] + 148
                        mem[64] = _1100 + _1083 + 180
                        if sha3(mem[_1806 + 32 len mem[_1806]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2630 = mem[_2598]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2630
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2630
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1083 + _1100 + 180] = 0
                        _1854 = mem[64]
                        mem[mem[64]] = _1100 + _1083 + -mem[64] + 148
                        mem[64] = _1100 + _1083 + 180
                        if sha3(mem[_1854 + 32 len mem[_1854]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2631 = mem[_2599]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2631
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2631
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _1101 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1102 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1114 = mem[_1102]
                    mem[_1101 + 180 len ceil32(mem[_1102])] = mem[_1102 + 32 len ceil32(mem[_1102])]
                    if ceil32(_1114) <= _1114:
                        _1809 = mem[64]
                        mem[mem[64]] = _1114 + _1101 + -mem[64] + 148
                        mem[64] = _1114 + _1101 + 180
                        if sha3(mem[_1809 + 32 len mem[_1809]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2632 = mem[_2600]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2632
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2632
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1101 + _1114 + 180] = 0
                        _1857 = mem[64]
                        mem[mem[64]] = _1114 + _1101 + -mem[64] + 148
                        mem[64] = _1114 + _1101 + 180
                        if sha3(mem[_1857 + 32 len mem[_1857]]) % 20 < 0:
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2633 = mem[_2601]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2633
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2633
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if s < uint8(_21) + (mem[_913 + 124 len 4] - 10 / 2):
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    if block.number < 1:
                        revert with 0, 17
                    _1123 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1124 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1133 = mem[_1124]
                    mem[_1123 + 180 len ceil32(mem[_1124])] = mem[_1124 + 32 len ceil32(mem[_1124])]
                    if ceil32(_1133) <= _1133:
                        _1812 = mem[64]
                        mem[mem[64]] = _1133 + _1123 + -mem[64] + 148
                        mem[64] = _1133 + _1123 + 180
                        if sha3(mem[_1812 + 32 len mem[_1812]]) % 20 < s - uint8(_21) - (uint32(_925) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2634 = mem[_2602]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2634
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2634
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1123 + _1133 + 180] = 0
                        _1860 = mem[64]
                        mem[mem[64]] = _1133 + _1123 + -mem[64] + 148
                        mem[64] = _1133 + _1123 + 180
                        if sha3(mem[_1860 + 32 len mem[_1860]]) % 20 < s - uint8(_21) - (uint32(_925) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2635 = mem[_2603]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2635
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2635
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    if block.number < 1:
                        revert with 0, 17
                    _1134 = mem[64]
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = block.hash(block.number - 1)
                    mem[mem[64] + 96] = cd[4]
                    mem[mem[64] + 128] = Mask(160, 96, sub_26c73fa9['crafting1'])
                    _1135 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    _1148 = mem[_1135]
                    mem[_1134 + 180 len ceil32(mem[_1135])] = mem[_1135 + 32 len ceil32(mem[_1135])]
                    if ceil32(_1148) <= _1148:
                        _1815 = mem[64]
                        mem[mem[64]] = _1148 + _1134 + -mem[64] + 148
                        mem[64] = _1148 + _1134 + 180
                        if sha3(mem[_1815 + 32 len mem[_1815]]) % 20 < s - uint8(_21) - (uint32(_925) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2636 = mem[_2604]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2636
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2636
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[_1134 + _1148 + 180] = 0
                        _1863 = mem[64]
                        mem[mem[64]] = _1148 + _1134 + -mem[64] + 148
                        mem[64] = _1148 + _1134 + 180
                        if sha3(mem[_1863 + 32 len mem[_1863]]) % 20 < s - uint8(_21) - (uint32(_925) - 10 / 2):
                            revert with 0, '!d20'
                        idx = 0
                        while idx < ('cd', 36).length:
                            mem[mem[64] + 9] = 3
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            staticcall sub_26c73fa9['crafting1'].next_item() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2637 = mem[_2605]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2637
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _2637
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
}



}
