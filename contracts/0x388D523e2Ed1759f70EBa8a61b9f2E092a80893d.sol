contract main {




// =====================  Runtime code  =====================


const sub_94dbc383(?) = 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0


address devAddress;
array of uint8 stor1;
uint256 sub_bcae25a4;
array of address tokens;
array of address sub_e86b1ad2;
array of uint256 sub_fbb121fc;
uint256 totalFee;
array of struct stor7;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function totalFee() payable {
    return totalFee
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function defaultFeeBPS() payable {
    return sub_bcae25a4
}

function dev() payable {
    return devAddress
}

function sub_bcae25a4(?) payable {
    return sub_bcae25a4
}

function sub_e86b1ad2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e86b1ad2.length
    return address(sub_e86b1ad2[arg1])
}

function sub_fbb121fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fbb121fc.length
    return sub_fbb121fc[arg1]
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function _fallback() payable {
    revert
}

function setFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    sub_bcae25a4 = arg1
}

function transferDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'not dev'
    devAddress = arg1
}

function addToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    tokens.length++
    tokens[tokens.length] = arg1
}

function removeToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    if arg1 >= tokens.length:
        revert with 0, 50
    tokens[arg1] = 0
}

function changeManager(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if devAddress != msg.sender:
        revert with 0, 'not dev'
    uint8(stor1[address(arg1)]) = uint8(arg2)
}

function addReceiver(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    sub_e86b1ad2.length++
    address(sub_e86b1ad2[sub_e86b1ad2.length]) = arg1
    sub_fbb121fc.length++
    stor36B6[stor5.length] = arg2
    if totalFee > !arg2:
        revert with 0, 17
    totalFee += arg2
}

function resetReceivers() payable {
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    sub_e86b1ad2.length = 0
    idx = 0
    while sub_e86b1ad2.length > idx:
        uint256(sub_e86b1ad2[idx]) = 0
        idx = idx + 1
        continue 
    sub_fbb121fc.length = 0
    idx = 0
    while sub_fbb121fc.length > idx:
        sub_fbb121fc[idx] = 0
        idx = idx + 1
        continue 
    totalFee = 0
}

function decreaseFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    if arg1 >= sub_fbb121fc.length:
        revert with 0, 50
    if sub_fbb121fc[arg1] < arg2:
        revert with 0, 17
    if arg1 >= sub_fbb121fc.length:
        revert with 0, 50
    sub_fbb121fc[arg1] -= arg2
    if totalFee < arg2:
        revert with 0, 17
    totalFee -= arg2
}

function increaseFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    if arg1 >= sub_fbb121fc.length:
        revert with 0, 50
    if sub_fbb121fc[arg1] > !arg2:
        revert with 0, 17
    if arg1 >= sub_fbb121fc.length:
        revert with 0, 50
    sub_fbb121fc[arg1] += arg2
    if totalFee > !arg2:
        revert with 0, 17
    totalFee += arg2
}

function sub_2af45832(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    if 0 >= arg1.length:
        revert with 0, 50
    if 0 >= tokens.length:
        revert with 0, 50
    tokens = mem[140 len 20]
}

function sub_4767a293(?) payable {
    mem[0] = msg.sender
    mem[32] = 1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[100] = this.address
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_e86b1ad2.length:
        if idx >= sub_fbb121fc.length:
            revert with 0, 50
        mem[0] = 5
        if ext_call.return_data[0] and sub_fbb121fc[idx] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalFee:
            revert with 0, 18
        mem[mem[64] + 4] = address(sub_e86b1ad2[idx])
        mem[mem[64] + 36] = ext_call.return_data[0] * sub_fbb121fc[idx] / totalFee
        require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
        call 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_e86b1ad2[idx]), ext_call.return_data[0] * sub_fbb121fc[idx] / totalFee
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == bool(mem[_18])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_22f348f1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 64
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161 < 160 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161 > test266151307():
        revert with 0, 65
    mem[160] = cd[(cd[36] + ('cd', 36).length + 4)]
    require cd[36] + ('cd', 36).length + (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36).length + 36
    t = 192
    while idx < cd[(cd[36] + ('cd', 36).length + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[96] = 160
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 162 < 161 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 162 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 162
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161] = cd[(cd[36] + ('cd', 36)[0] + 4)]
    require cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[0] + 36
    t = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 193
    while idx < cd[(cd[36] + ('cd', 36)[0] + 4)]:
        require cd[s] <= test266151307()
        require cd[36] + ('cd', 36)[0] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _179 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)]) + 1
        mem[_179] = cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)]
        require cd[36] + ('cd', 36)[0] + cd[s] + (32 * cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + ('cd', 36)[0] + cd[s] + 68
        w = _179 + 32
        while u < cd[(cd[36] + ('cd', 36)[0] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _179
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[128] = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[0] = address(cd[4])
    mem[32] = 7
    uint256(stor7[address(cd[4])].field_0) = mem[mem[96]]
    if not mem[mem[96]]:
        idx = 0
        while uint256(stor7[address(cd[4])].field_0) > idx:
            uint256(stor7[address(cd[4])][idx].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor7[address(cd[4])].field_256) = mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161]
        mem[0] = sha3(address(cd[4]), 7) + 1
        if not mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161]:
            idx = 0
            while sha3(sha3(address(cd[4]), 7) + 1) + uint256(stor7[address(cd[4])].field_256) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            _401 = mem[mem[96]]
            idx = 0
            while idx < _401:
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                    revert with 0, 50
                _412 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                if idx >= mem[mem[96]]:
                    revert with 0, 50
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_412))
                call address(_412).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_434] == bool(mem[_434])
                if idx == -1:
                    revert with 0, 17
                _401 = mem[mem[96]]
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 193
            while ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161]) + 193 > idx:
                _329 = mem[idx]
                _330 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _330:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _329 + 32
                    while _329 + (32 * _330) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _330) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(address(cd[4]), 7) + 1) + uint256(stor7[address(cd[4])].field_256) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            _465 = mem[mem[96]]
            idx = 0
            while idx < _465:
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                    revert with 0, 50
                _478 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                if idx >= mem[mem[96]]:
                    revert with 0, 50
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_478))
                call address(_478).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _496 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_496] == bool(mem[_496])
                if idx == -1:
                    revert with 0, 17
                _465 = mem[mem[96]]
                idx = idx + 1
                continue 
    else:
        s = 0
        idx = mem[96] + 32
        while mem[96] + (32 * mem[mem[96]]) + 32 > idx:
            address(stor7[address(cd[4])][s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96]]) + 31) >> 5
        while uint256(stor7[address(cd[4])].field_0) > idx:
            uint256(stor7[address(cd[4])][idx].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor7[address(cd[4])].field_256) = mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161]
        mem[0] = sha3(address(cd[4]), 7) + 1
        if not mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161]:
            idx = 0
            while sha3(sha3(address(cd[4]), 7) + 1) + uint256(stor7[address(cd[4])].field_256) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            _467 = mem[mem[96]]
            idx = 0
            while idx < _467:
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                    revert with 0, 50
                _481 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                if idx >= mem[mem[96]]:
                    revert with 0, 50
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_481))
                call address(_481).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_497] == bool(mem[_497])
                if idx == -1:
                    revert with 0, 17
                _467 = mem[mem[96]]
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 193
            while ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + (32 * mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 161]) + 193 > idx:
                _405 = mem[idx]
                _406 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _406:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _405 + 32
                    while _405 + (32 * _406) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _406) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(address(cd[4]), 7) + 1) + uint256(stor7[address(cd[4])].field_256) > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            _509 = mem[mem[96]]
            idx = 0
            while idx < _509:
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                    revert with 0, 50
                _514 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                if idx >= mem[mem[96]]:
                    revert with 0, 50
                mem[mem[64] + 4] = mem[(32 * idx) + mem[96] + 44 len 20]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_514))
                call address(_514).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_520] == bool(mem[_520])
                if idx == -1:
                    revert with 0, 17
                _509 = mem[mem[96]]
                idx = idx + 1
                continue 
}

function sellToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[0] = arg1
    mem[32] = 7
    mem[160] = uint256(stor7[address(arg1)].field_0)
    if not uint256(stor7[address(arg1)].field_0):
        mem[96] = 160
        mem[64] = (32 * uint256(stor7[address(arg1)].field_0)) + (32 * uint256(stor7[address(arg1)].field_256)) + 224
        mem[(32 * uint256(stor7[address(arg1)].field_0)) + 192] = uint256(stor7[address(arg1)].field_256)
        s = (32 * uint256(stor7[address(arg1)].field_0)) + 224
        idx = 0
        while idx < uint256(stor7[address(arg1)].field_256):
            mem[0] = sha3(address(arg1), 7) + 1
            _59 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor7[address(arg1)][idx + 1].field_0)) + 32
            mem[_59] = uint256(stor7[address(arg1)][idx + 1].field_0)
            if uint256(stor7[address(arg1)][idx + 1].field_0):
                mem[0] = idx + sha3(sha3(address(arg1), 7) + 1)
                mem[_59 + 32] = address(stor7[address(arg1)][idx + 1].field_0)
                t = _59 + 32
                u = sha3(mem[0])
                while _59 + (32 * uint256(stor7[address(arg1)][idx + 1].field_0)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[s] = _59
            s = s + 32
            idx = idx + 1
            continue 
        mem[128] = (32 * uint256(stor7[address(arg1)].field_0)) + 192
        _109 = mem[mem[96]]
        idx = 0
        while idx < _109:
            if idx >= mem[mem[96]]:
                revert with 0, 50
            _113 = mem[(32 * idx) + mem[96] + 32]
            if idx >= mem[mem[128]]:
                revert with 0, 50
            if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                revert with 0, 50
            _123 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_123))
            staticcall address(_123).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _137 = mem[_131]
            if idx >= mem[mem[128]]:
                revert with 0, 50
            _141 = mem[(32 * idx) + mem[128] + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _137
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _143 = mem[_141]
            mem[mem[64] + 164] = mem[_141]
            s = 0
            t = mem[64] + 196
            u = _141 + 32
            while s < _143:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 999999999999999999999
            require ext_code.size(address(_113))
            call address(_113).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _137, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _143) + 32]
            if ext_call.success:
                _215 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_215]
                require mem[_215] <= test266151307()
                require _215 + return_data.size > _215 + mem[_215] + 31
                _235 = mem[_215 + mem[_215]]
                if mem[_215 + mem[_215]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_215 + mem[_215]]) + 1 < 0 or _215 + ceil32(return_data.size) + ceil32(32 * mem[_215 + mem[_215]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _215 + ceil32(return_data.size) + ceil32(32 * mem[_215 + mem[_215]]) + 1
                mem[_215 + ceil32(return_data.size)] = _235
                require _226 + (32 * _235) + 32 <= return_data.size
                t = _215 + _226 + 32
                u = _215 + ceil32(return_data.size) + 32
                s = 0
                while s < _235:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
            else:
                if idx >= mem[mem[96]]:
                    revert with 0, 50
                _223 = mem[(32 * idx) + mem[96] + 32]
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                    revert with 0, 50
                _232 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_232))
                staticcall address(_232).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_237]
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                _248 = mem[(32 * idx) + mem[128] + 32]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _241
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _250 = mem[_248]
                mem[mem[64] + 164] = mem[_248]
                s = 0
                t = mem[64] + 196
                u = _248 + 32
                while s < _250:
                    mem[t] = mem[u + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 999999999999999999999
                require ext_code.size(address(_223))
                call address(_223).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _241, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _250) + 32]
                if not ext_call.success:
                    emit 0x2b770571: arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(arg1), 7)
        mem[192] = address(stor7[address(arg1)].field_0)
        idx = 192
        s = 0
        while (32 * uint256(stor7[address(arg1)].field_0)) + 192 > idx + 32:
            mem[idx + 32] = address(stor7[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[96] = 160
        mem[64] = (32 * uint256(stor7[address(arg1)].field_0)) + (32 * uint256(stor7[address(arg1)].field_256)) + 224
        mem[(32 * uint256(stor7[address(arg1)].field_0)) + 192] = uint256(stor7[address(arg1)].field_256)
        s = (32 * uint256(stor7[address(arg1)].field_0)) + 224
        idx = 0
        while idx < uint256(stor7[address(arg1)].field_256):
            mem[0] = sha3(address(arg1), 7) + 1
            _208 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor7[address(arg1)][idx + 1].field_0)) + 32
            mem[_208] = uint256(stor7[address(arg1)][idx + 1].field_0)
            if uint256(stor7[address(arg1)][idx + 1].field_0):
                mem[0] = idx + sha3(sha3(address(arg1), 7) + 1)
                mem[_208 + 32] = address(stor7[address(arg1)][idx + 1].field_0)
                t = _208 + 32
                u = sha3(mem[0])
                while _208 + (32 * uint256(stor7[address(arg1)][idx + 1].field_0)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[s] = _208
            s = s + 32
            idx = idx + 1
            continue 
        mem[128] = (32 * uint256(stor7[address(arg1)].field_0)) + 192
        _285 = mem[mem[96]]
        idx = 0
        while idx < _285:
            if idx >= mem[mem[96]]:
                revert with 0, 50
            _291 = mem[(32 * idx) + mem[96] + 32]
            if idx >= mem[mem[128]]:
                revert with 0, 50
            if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                revert with 0, 50
            _296 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_296))
            staticcall address(_296).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_301]
            if idx >= mem[mem[128]]:
                revert with 0, 50
            _305 = mem[(32 * idx) + mem[128] + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _302
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _307 = mem[_305]
            mem[mem[64] + 164] = mem[_305]
            s = 0
            t = mem[64] + 196
            u = _305 + 32
            while s < _307:
                mem[t] = mem[u + 12 len 20]
                _285 = mem[mem[96]]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = 999999999999999999999
            require ext_code.size(address(_291))
            call address(_291).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _302, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _307) + 32]
            if ext_call.success:
                _338 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _344 = mem[_338]
                require mem[_338] <= test266151307()
                require _338 + return_data.size > _338 + mem[_338] + 31
                _350 = mem[_338 + mem[_338]]
                if mem[_338 + mem[_338]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_338 + mem[_338]]) + 1 < 0 or _338 + ceil32(return_data.size) + ceil32(32 * mem[_338 + mem[_338]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _338 + ceil32(return_data.size) + ceil32(32 * mem[_338 + mem[_338]]) + 1
                mem[_338 + ceil32(return_data.size)] = _350
                require _344 + (32 * _350) + 32 <= return_data.size
                t = _338 + _344 + 32
                u = _338 + ceil32(return_data.size) + 32
                s = 0
                while s < _350:
                    mem[u] = mem[t]
                    _285 = mem[mem[96]]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
            else:
                if idx >= mem[mem[96]]:
                    revert with 0, 50
                _341 = mem[(32 * idx) + mem[96] + 32]
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                if 0 >= mem[mem[(32 * idx) + mem[128] + 32]]:
                    revert with 0, 50
                _347 = mem[mem[(32 * idx) + mem[128] + 32] + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_347))
                staticcall address(_347).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _352 = mem[_351]
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                _356 = mem[(32 * idx) + mem[128] + 32]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _352
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _358 = mem[_356]
                mem[mem[64] + 164] = mem[_356]
                s = 0
                t = mem[64] + 196
                u = _356 + 32
                while s < _358:
                    mem[t] = mem[u + 12 len 20]
                    _285 = mem[mem[96]]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 999999999999999999999
                require ext_code.size(address(_341))
                call address(_341).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _352, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _358) + 32]
                if not ext_call.success:
                    emit 0x2b770571: arg1
            if idx == -1:
                revert with 0, 17
            _285 = mem[mem[96]]
            idx = idx + 1
            continue 
}

function sellTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[100] = this.address
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < tokens.length:
        mem[0] = 3
        if tokens[idx]:
            if not uint8(stor1[msg.sender]):
                revert with 0, 'not manager'
            mem[0] = tokens[idx]
            mem[32] = 7
            _77 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]].field_0)) + 96
            mem[_77 + 64] = uint256(stor7[stor3[idx]].field_0)
            if not uint256(stor7[stor3[idx]].field_0):
                mem[_77] = _77 + 64
                _80 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]].field_256)) + 32
                mem[_80] = uint256(stor7[stor3[idx]].field_256)
                s = _80 + 32
                t = 0
                while t < uint256(stor7[stor3[idx]].field_256):
                    mem[0] = sha3(tokens[idx], 7) + 1
                    _137 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) + 32
                    mem[_137] = uint256(stor7[stor3[idx]][t + 1].field_0)
                    if uint256(stor7[stor3[idx]][t + 1].field_0):
                        mem[0] = t + sha3(sha3(tokens[idx], 7) + 1)
                        mem[_137 + 32] = address(stor7[stor3[idx]][t + 1].field_0)
                        u = _137 + 32
                        v = sha3(mem[0])
                        while _137 + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) > u:
                            mem[u + 32] = address(stor1[v])
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[s] = _137
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_77 + 32] = _80
                _187 = mem[mem[_77]]
                s = 0
                while s < _187:
                    if s >= mem[mem[_77]]:
                        revert with 0, 50
                    _191 = mem[(32 * s) + mem[_77] + 32]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_77 + 32] + 32]]:
                        revert with 0, 50
                    _201 = mem[mem[(32 * s) + mem[_77 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_201))
                    staticcall address(_201).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _215 = mem[_209]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    _219 = mem[(32 * s) + mem[_77 + 32] + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _215
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _221 = mem[_219]
                    mem[mem[64] + 164] = mem[_219]
                    t = 0
                    u = mem[64] + 196
                    v = _219 + 32
                    while t < _221:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_191))
                    call address(_191).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _215, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _221) + 32]
                    if ext_call.success:
                        _293 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _304 = mem[_293]
                        require mem[_293] <= test266151307()
                        require _293 + return_data.size > _293 + mem[_293] + 31
                        _313 = mem[_293 + mem[_293]]
                        if mem[_293 + mem[_293]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_293 + mem[_293]]) + 1 < 0 or _293 + ceil32(return_data.size) + ceil32(32 * mem[_293 + mem[_293]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _293 + ceil32(return_data.size) + ceil32(32 * mem[_293 + mem[_293]]) + 1
                        mem[_293 + ceil32(return_data.size)] = _313
                        require _304 + (32 * _313) + 32 <= return_data.size
                        t = _293 + _304 + 32
                        u = _293 + ceil32(return_data.size) + 32
                        idx = 0
                        while idx < _313:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            idx = idx + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if s >= mem[mem[_77]]:
                        revert with 0, 50
                    _301 = mem[(32 * s) + mem[_77] + 32]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_77 + 32] + 32]]:
                        revert with 0, 50
                    _310 = mem[mem[(32 * s) + mem[_77 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_310))
                    staticcall address(_310).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _319 = mem[_315]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    _326 = mem[(32 * s) + mem[_77 + 32] + 32]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _319
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _328 = mem[_326]
                    mem[mem[64] + 164] = mem[_326]
                    t = 0
                    u = mem[64] + 196
                    v = _326 + 32
                    while t < _328:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_301))
                    call address(_301).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _319, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _328) + 32]
                    if ext_call.success:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    mem[mem[64]] = tokens[idx]
                    emit 0x2b770571: tokens[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = tokens[idx]
                    continue 
            else:
                mem[0] = sha3(tokens[idx], 7)
                mem[_77 + 96] = address(stor7[stor3[idx]].field_0)
                s = _77 + 96
                t = sha3(sha3(tokens[idx], 7))
                while _77 + (32 * uint256(stor7[stor3[idx]].field_0)) + 96 > s + 32:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_77] = _77 + 64
                _188 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]].field_256)) + 32
                mem[_188] = uint256(stor7[stor3[idx]].field_256)
                s = _188 + 32
                t = 0
                while t < uint256(stor7[stor3[idx]].field_256):
                    mem[0] = sha3(tokens[idx], 7) + 1
                    _286 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) + 32
                    mem[_286] = uint256(stor7[stor3[idx]][t + 1].field_0)
                    if uint256(stor7[stor3[idx]][t + 1].field_0):
                        mem[0] = t + sha3(sha3(tokens[idx], 7) + 1)
                        mem[_286 + 32] = address(stor7[stor3[idx]][t + 1].field_0)
                        u = _286 + 32
                        v = sha3(mem[0])
                        while _286 + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) > u:
                            mem[u + 32] = address(stor1[v])
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[s] = _286
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_77 + 32] = _188
                _363 = mem[mem[_77]]
                s = 0
                while s < _363:
                    if s >= mem[mem[_77]]:
                        revert with 0, 50
                    _369 = mem[(32 * s) + mem[_77] + 32]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_77 + 32] + 32]]:
                        revert with 0, 50
                    _374 = mem[mem[(32 * s) + mem[_77 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_374))
                    staticcall address(_374).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _380 = mem[_379]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    _383 = mem[(32 * s) + mem[_77 + 32] + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _380
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _385 = mem[_383]
                    mem[mem[64] + 164] = mem[_383]
                    t = 0
                    u = mem[64] + 196
                    v = _383 + 32
                    while t < _385:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_369))
                    call address(_369).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _380, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _385) + 32]
                    if ext_call.success:
                        _416 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _422 = mem[_416]
                        require mem[_416] <= test266151307()
                        require _416 + return_data.size > _416 + mem[_416] + 31
                        _428 = mem[_416 + mem[_416]]
                        if mem[_416 + mem[_416]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_416 + mem[_416]]) + 1 < 0 or _416 + ceil32(return_data.size) + ceil32(32 * mem[_416 + mem[_416]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _416 + ceil32(return_data.size) + ceil32(32 * mem[_416 + mem[_416]]) + 1
                        mem[_416 + ceil32(return_data.size)] = _428
                        require _422 + (32 * _428) + 32 <= return_data.size
                        u = _416 + _422 + 32
                        v = _416 + ceil32(return_data.size) + 32
                        t = 0
                        while t < _428:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if s >= mem[mem[_77]]:
                        revert with 0, 50
                    _419 = mem[(32 * s) + mem[_77] + 32]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_77 + 32] + 32]]:
                        revert with 0, 50
                    _425 = mem[mem[(32 * s) + mem[_77 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_425))
                    staticcall address(_425).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _430 = mem[_429]
                    if s >= mem[mem[_77 + 32]]:
                        revert with 0, 50
                    _434 = mem[(32 * s) + mem[_77 + 32] + 32]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _430
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _436 = mem[_434]
                    mem[mem[64] + 164] = mem[_434]
                    t = 0
                    u = mem[64] + 196
                    v = _434 + 32
                    while t < _436:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_419))
                    call address(_419).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _430, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _436) + 32]
                    if ext_call.success:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    mem[mem[64]] = tokens[_436]
                    emit 0x2b770571: tokens[_436]
                    if _436 == -1:
                        revert with 0, 17
                    t = _436 + 1
                    s = tokens[_436]
                    continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = tokens[idx]
        continue 
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_79] <= ext_call.return_data[0] + arg1:
        revert with 0, 'Frontrunned'
}

function execute(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[0] = msg.sender
    mem[32] = 1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[100] = this.address
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < tokens.length:
        mem[0] = 3
        if tokens[idx]:
            if not uint8(stor1[msg.sender]):
                revert with 0, 'not manager'
            mem[0] = tokens[idx]
            mem[32] = 7
            _93 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]].field_0)) + 96
            mem[_93 + 64] = uint256(stor7[stor3[idx]].field_0)
            if not uint256(stor7[stor3[idx]].field_0):
                mem[_93] = _93 + 64
                _96 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]].field_256)) + 32
                mem[_96] = uint256(stor7[stor3[idx]].field_256)
                s = _96 + 32
                t = 0
                while t < uint256(stor7[stor3[idx]].field_256):
                    mem[0] = sha3(tokens[idx], 7) + 1
                    _166 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) + 32
                    mem[_166] = uint256(stor7[stor3[idx]][t + 1].field_0)
                    if uint256(stor7[stor3[idx]][t + 1].field_0):
                        mem[0] = t + sha3(sha3(tokens[idx], 7) + 1)
                        mem[_166 + 32] = address(stor7[stor3[idx]][t + 1].field_0)
                        u = _166 + 32
                        v = sha3(mem[0])
                        while _166 + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) > u:
                            mem[u + 32] = address(stor1[v])
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[s] = _166
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_93 + 32] = _96
                _222 = mem[mem[_93]]
                s = 0
                while s < _222:
                    if s >= mem[mem[_93]]:
                        revert with 0, 50
                    _226 = mem[(32 * s) + mem[_93] + 32]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_93 + 32] + 32]]:
                        revert with 0, 50
                    _236 = mem[mem[(32 * s) + mem[_93 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_236))
                    staticcall address(_236).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _250 = mem[_244]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    _254 = mem[(32 * s) + mem[_93 + 32] + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _250
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _256 = mem[_254]
                    mem[mem[64] + 164] = mem[_254]
                    t = 0
                    u = mem[64] + 196
                    v = _254 + 32
                    while t < _256:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_226))
                    call address(_226).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _250, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _256) + 32]
                    if ext_call.success:
                        _328 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _339 = mem[_328]
                        require mem[_328] <= test266151307()
                        require _328 + return_data.size > _328 + mem[_328] + 31
                        _348 = mem[_328 + mem[_328]]
                        if mem[_328 + mem[_328]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_328 + mem[_328]]) + 1 < 0 or _328 + ceil32(return_data.size) + ceil32(32 * mem[_328 + mem[_328]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _328 + ceil32(return_data.size) + ceil32(32 * mem[_328 + mem[_328]]) + 1
                        mem[_328 + ceil32(return_data.size)] = _348
                        require _339 + (32 * _348) + 32 <= return_data.size
                        t = _328 + _339 + 32
                        u = _328 + ceil32(return_data.size) + 32
                        idx = 0
                        while idx < _348:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            idx = idx + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if s >= mem[mem[_93]]:
                        revert with 0, 50
                    _336 = mem[(32 * s) + mem[_93] + 32]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_93 + 32] + 32]]:
                        revert with 0, 50
                    _345 = mem[mem[(32 * s) + mem[_93 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_345))
                    staticcall address(_345).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _354 = mem[_350]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    _361 = mem[(32 * s) + mem[_93 + 32] + 32]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _354
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _363 = mem[_361]
                    mem[mem[64] + 164] = mem[_361]
                    t = 0
                    u = mem[64] + 196
                    v = _361 + 32
                    while t < _363:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_336))
                    call address(_336).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _354, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _363) + 32]
                    if ext_call.success:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    mem[mem[64]] = tokens[idx]
                    emit 0x2b770571: tokens[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = tokens[idx]
                    continue 
            else:
                mem[0] = sha3(tokens[idx], 7)
                mem[_93 + 96] = address(stor7[stor3[idx]].field_0)
                s = _93 + 96
                t = sha3(sha3(tokens[idx], 7))
                while _93 + (32 * uint256(stor7[stor3[idx]].field_0)) + 96 > s + 32:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_93] = _93 + 64
                _223 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]].field_256)) + 32
                mem[_223] = uint256(stor7[stor3[idx]].field_256)
                s = _223 + 32
                t = 0
                while t < uint256(stor7[stor3[idx]].field_256):
                    mem[0] = sha3(tokens[idx], 7) + 1
                    _321 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) + 32
                    mem[_321] = uint256(stor7[stor3[idx]][t + 1].field_0)
                    if uint256(stor7[stor3[idx]][t + 1].field_0):
                        mem[0] = t + sha3(sha3(tokens[idx], 7) + 1)
                        mem[_321 + 32] = address(stor7[stor3[idx]][t + 1].field_0)
                        u = _321 + 32
                        v = sha3(mem[0])
                        while _321 + (32 * uint256(stor7[stor3[idx]][t + 1].field_0)) > u:
                            mem[u + 32] = address(stor1[v])
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[s] = _321
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_93 + 32] = _223
                _398 = mem[mem[_93]]
                s = 0
                while s < _398:
                    if s >= mem[mem[_93]]:
                        revert with 0, 50
                    _404 = mem[(32 * s) + mem[_93] + 32]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_93 + 32] + 32]]:
                        revert with 0, 50
                    _409 = mem[mem[(32 * s) + mem[_93 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_409))
                    staticcall address(_409).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _415 = mem[_414]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    _418 = mem[(32 * s) + mem[_93 + 32] + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _415
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _420 = mem[_418]
                    mem[mem[64] + 164] = mem[_418]
                    t = 0
                    u = mem[64] + 196
                    v = _418 + 32
                    while t < _420:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_404))
                    call address(_404).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _415, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _420) + 32]
                    if ext_call.success:
                        _451 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _457 = mem[_451]
                        require mem[_451] <= test266151307()
                        require _451 + return_data.size > _451 + mem[_451] + 31
                        _463 = mem[_451 + mem[_451]]
                        if mem[_451 + mem[_451]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_451 + mem[_451]]) + 1 < 0 or _451 + ceil32(return_data.size) + ceil32(32 * mem[_451 + mem[_451]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _451 + ceil32(return_data.size) + ceil32(32 * mem[_451 + mem[_451]]) + 1
                        mem[_451 + ceil32(return_data.size)] = _463
                        require _457 + (32 * _463) + 32 <= return_data.size
                        u = _451 + _457 + 32
                        v = _451 + ceil32(return_data.size) + 32
                        t = 0
                        while t < _463:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if s >= mem[mem[_93]]:
                        revert with 0, 50
                    _454 = mem[(32 * s) + mem[_93] + 32]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    if 0 >= mem[mem[(32 * s) + mem[_93 + 32] + 32]]:
                        revert with 0, 50
                    _460 = mem[mem[(32 * s) + mem[_93 + 32] + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_460))
                    staticcall address(_460).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _465 = mem[_464]
                    if s >= mem[mem[_93 + 32]]:
                        revert with 0, 50
                    _469 = mem[(32 * s) + mem[_93 + 32] + 32]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _465
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _471 = mem[_469]
                    mem[mem[64] + 164] = mem[_469]
                    t = 0
                    u = mem[64] + 196
                    v = _469 + 32
                    while t < _471:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = 999999999999999999999
                    require ext_code.size(address(_454))
                    call address(_454).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _465, 0, 160, address(this.address), 999999999999999999999, mem[mem[64] + 164 len (32 * _471) + 32]
                    if ext_call.success:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    mem[mem[64]] = tokens[_471]
                    emit 0x2b770571: tokens[_471]
                    if _471 == -1:
                        revert with 0, 17
                    t = _471 + 1
                    s = tokens[_471]
                    continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = tokens[idx]
        continue 
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_95] <= ext_call.return_data[0] + arg1:
        revert with 0, 'Frontrunned'
    mem[0] = msg.sender
    mem[32] = 1
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not manager'
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
    staticcall 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _124 = mem[_121]
    idx = 0
    while idx < sub_e86b1ad2.length:
        if idx >= sub_fbb121fc.length:
            revert with 0, 50
        mem[0] = 5
        if _124 and sub_fbb121fc[idx] > -1 / _124:
            revert with 0, 17
        if not totalFee:
            revert with 0, 18
        mem[mem[64] + 4] = address(sub_e86b1ad2[idx])
        mem[mem[64] + 36] = _124 * sub_fbb121fc[idx] / totalFee
        require ext_code.size(0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0)
        call 0xacd7b3d9c10e97d0efa418903c0c7669e702e4c0.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_e86b1ad2[idx]), _124 * sub_fbb121fc[idx] / totalFee
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_186] == bool(mem[_186])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
