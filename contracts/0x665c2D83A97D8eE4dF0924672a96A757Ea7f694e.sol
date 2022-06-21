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
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    require ext_code.size(sub_26c73fa9[0])
    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[68]:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[ceil32(return_data.size) + 96] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = cd[4]
            mem[ceil32(return_data.size) + 132] = uint8(cd[((64 * idx) + cd[36] + 36)])
            mem[ceil32(return_data.size) + 164] = uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[ceil32(return_data.size) + 196] = cd[100]
            require ext_code.size(sub_26c73fa9['crafting1'])
            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                 gas gas_remaining wei
                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, cd[100]
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
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    require ext_code.size(sub_26c73fa9[0])
    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[68]:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[ceil32(return_data.size) + 96] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = cd[4]
            mem[ceil32(return_data.size) + 132] = uint8(cd[((64 * idx) + cd[36] + 36)])
            mem[ceil32(return_data.size) + 164] = uint8(cd[((64 * idx) + cd[36] + 68)])
            mem[ceil32(return_data.size) + 196] = 0
            require ext_code.size(sub_26c73fa9['crafting1'])
            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                 gas gas_remaining wei
                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
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
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not whitelist or owner'
    if cd[68] <= cd[100]:
        if not stor1[msg.sender]:
            if owner != msg.sender:
                revert with 0, 'not whitelist or owner'
        require ext_code.size(sub_26c73fa9[0])
        staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[ceil32(return_data.size) + 96] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = cd[4]
                mem[ceil32(return_data.size) + 132] = uint8(cd[((64 * idx) + cd[36] + 36)])
                mem[ceil32(return_data.size) + 164] = uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[ceil32(return_data.size) + 196] = 0
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                     gas gas_remaining wei
                    args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if cd[68] < cd[100]:
            revert with 0, 17
        if not stor1[msg.sender]:
            if owner != msg.sender:
                revert with 0, 'not whitelist or owner'
        require ext_code.size(sub_26c73fa9[0])
        staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= cd[68] - cd[100]:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[ceil32(return_data.size) + 96] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = cd[4]
                mem[ceil32(return_data.size) + 132] = uint8(cd[((64 * idx) + cd[36] + 36)])
                mem[ceil32(return_data.size) + 164] = uint8(cd[((64 * idx) + cd[36] + 68)])
                mem[ceil32(return_data.size) + 196] = 0
                require ext_code.size(sub_26c73fa9['crafting1'])
                call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                     gas gas_remaining wei
                    args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
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
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            if mem[_302] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_302]
            continue 
        require ext_code.size(sub_26c73fa9['attribute'])
        staticcall sub_26c73fa9['attribute'].ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_288] == mem[_288 + 28 len 4]
        require mem[_288 + 32] == mem[_288 + 60 len 4]
        require mem[_288 + 64] == mem[_288 + 92 len 4]
        _300 = mem[_288 + 96]
        require mem[_288 + 96] == mem[_288 + 124 len 4]
        require mem[_288 + 128] == mem[_288 + 156 len 4]
        require mem[_288 + 160] == mem[_288 + 188 len 4]
        if 9 == mem[_288 + 124 len 4]:
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
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_341] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_353] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
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
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_371] >= s + -uint8(_20) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_375] >= s + -uint8(_20) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if mem[_288 + 124 len 4] < 0x800000000000000000000000000000000000000000000000000000000000000a:
                revert with 0, 17
            if mem[_288 + 124 len 4] - 10 / 2 > -uint8(_20) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and uint8(_20) >= 0:
                revert with 0, 17
            if uint8(_20) < 0 and mem[_288 + 124 len 4] - 10 / 2 < -uint8(_20) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if uint8(_20) + (mem[_288 + 124 len 4] - 10 / 2) <= 0:
                revert with 0, '!basic_point'
            if s <= uint8(_20) + (mem[_288 + 124 len 4] - 10 / 2):
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _416 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_416] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_426] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if s < uint8(_20) + (mem[_288 + 124 len 4] - 10 / 2):
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_453] >= s - uint8(_20) - (uint32(_300) - 10 / 2):
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_456] >= s - uint8(_20) - (uint32(_300) - 10 / 2):
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
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
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            if mem[_303] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_303]
            continue 
        require ext_code.size(sub_26c73fa9['attribute'])
        staticcall sub_26c73fa9['attribute'].ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args cd[4]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_289] == mem[_289 + 28 len 4]
        require mem[_289 + 32] == mem[_289 + 60 len 4]
        require mem[_289 + 64] == mem[_289 + 92 len 4]
        _301 = mem[_289 + 96]
        require mem[_289 + 96] == mem[_289 + 124 len 4]
        require mem[_289 + 128] == mem[_289 + 156 len 4]
        require mem[_289 + 160] == mem[_289 + 188 len 4]
        if 9 == mem[_289 + 124 len 4]:
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
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_347] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_358] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
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
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_373] >= s + -uint8(_21) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_377] >= s + -uint8(_21) - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if mem[_289 + 124 len 4] < 0x800000000000000000000000000000000000000000000000000000000000000a:
                revert with 0, 17
            if mem[_289 + 124 len 4] - 10 / 2 > -uint8(_21) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and uint8(_21) >= 0:
                revert with 0, 17
            if uint8(_21) < 0 and mem[_289 + 124 len 4] - 10 / 2 < -uint8(_21) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if uint8(_21) + (mem[_289 + 124 len 4] - 10 / 2) <= 0:
                revert with 0, '!basic_point'
            if s <= uint8(_21) + (mem[_289 + 124 len 4] - 10 / 2):
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_421] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_433] >= 0:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if s < uint8(_21) + (mem[_289 + 124 len 4] - 10 / 2):
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                if stor1[msg.sender]:
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_455] >= s - uint8(_21) - (uint32(_301) - 10 / 2):
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if owner != msg.sender:
                        revert with 0, 'not whitelist or owner'
                    mem[mem[64] + 6] = 3
                    mem[mem[64] + 4] = cd[4]
                    require ext_code.size(sub_26c73fa9[0])
                    staticcall sub_26c73fa9[0].d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _457 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_457] >= s - uint8(_21) - (uint32(_301) - 10 / 2):
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == uint8(cd[((64 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((64 * idx) + cd[36] + 68)] == uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64]] = 0x65f1bfc400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[4]
                            mem[mem[64] + 36] = uint8(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = uint8(cd[((64 * idx) + cd[36] + 68)])
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_26c73fa9['crafting1'])
                            call sub_26c73fa9['crafting1'].0x65f1bfc4 with:
                                 gas gas_remaining wei
                                args cd[4], cd[((64 * idx) + cd[36] + 36)] << 248, cd[((64 * idx) + cd[36] + 68)] << 248, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
}



}
