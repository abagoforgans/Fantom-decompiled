contract main {




// =====================  Runtime code  =====================


#
#  - removeUser(address arg1)
#
address stor0;
address stor2;
address owner;
array of struct stor5;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint256 stor6; offset 16
uint256 stor6; offset 8
array of address stor7;

function getOwner() payable {
    return owner
}

function getUsersCount() payable {
    return stor7.length
}

function _fallback() payable {
    revert
}

function sub_c45f3ea9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint8(stor6.field_0) = uint8(bool(arg1))
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_eb31ca21(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(240, 0, stor6.field_16) = Mask(240, 0, bool(arg1))
}

function changeContractStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
}

function checkUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if arg1 == stor7[idx]:
            return idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 10^6
}

function addUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if arg1 != stor7[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == 10^6:
            stor7.length++
            stor7[stor7.length] = arg1
    stor7.length++
    stor7[stor7.length] = arg1
}

function sub_e3c1d73a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor6.field_8):
        return 0
    if not uint8(stor6.field_16):
        return 5
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if address(arg1) != stor7[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx != 10^6:
            return 1
        if not uint8(stor6.field_0):
            return 3
        return 2
    if not uint8(stor6.field_0):
        return 3
    return 2
}

function sub_0fe0781c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if bool(uint8(stor6.field_8)) != 1:
        revert with 0, 'version'
    if bool(uint8(stor6.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721: the test version is expired. this function only for pro user now..'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_7659ec72(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if bool(uint8(stor6.field_8)) != 1:
        revert with 0, 'version'
    if bool(uint8(stor6.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721: the test version is expired. this function only for pro user now..'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_9b9e4e7e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        s = 0
        while s < stor7.length:
            mem[0] = 7
            if address(cd[((32 * idx) + cd[4] + 36)]) != stor7[s]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s == 10^6:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                emit AddUser(address(cd[((32 * idx) + cd[4] + 36)]));
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                stor7.length++
                mem[0] = 7
                stor7[stor7.length] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        emit AddUser(address(cd[((32 * idx) + cd[4] + 36)]));
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor7.length++
        mem[0] = 7
        stor7[stor7.length] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_64bb432c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getVersion() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_04d9ae3d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if bool(uint8(stor6.field_0)) == 1:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_37] == mem[_37 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if mem[_37 + 12 len 20] == this.address:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor2)
                call stor2.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_48] == mem[_48]
            else:
                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor2)
                call stor2.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_59] == mem[_59]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: the test version is expired. this function only for pro user now..'
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == mem[_67 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if mem[_67 + 12 len 20] == this.address:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor2)
                call stor2.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _72 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_72] == mem[_72]
            else:
                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor2)
                call stor2.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_77] == mem[_77]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'ERC721: the test version is expired. this function only for pro user now..'
}

function sub_110cc1bc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if bool(uint8(stor6.field_8)) != 1:
        revert with 0, 'version'
    if bool(uint8(stor6.field_0)) == 1:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((64 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_47] == mem[_47 + 12 len 20]
            require mem[_47 + 12 len 20] == msg.sender
            mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((64 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_57] == mem[_57 + 12 len 20]
            if mem[_57 + 12 len 20] == this.address:
                mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = cd[((64 * idx) + cd[4] + 68)]
                require ext_code.size(stor2)
                call stor2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[4] + 36)], cd[36], cd[((64 * idx) + cd[4] + 68)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _70 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_70] == bool(mem[_70])
            else:
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), cd[((64 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = cd[((64 * idx) + cd[4] + 68)]
                require ext_code.size(stor2)
                call stor2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[4] + 36)], cd[36], cd[((64 * idx) + cd[4] + 68)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_78] == bool(mem[_78])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: the test version is expired. this function only for pro user now..'
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((64 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_85] == mem[_85 + 12 len 20]
            require mem[_85 + 12 len 20] == msg.sender
            mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((64 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_89] == mem[_89 + 12 len 20]
            if mem[_89 + 12 len 20] == this.address:
                mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = cd[((64 * idx) + cd[4] + 68)]
                require ext_code.size(stor2)
                call stor2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[4] + 36)], cd[36], cd[((64 * idx) + cd[4] + 68)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_96] == bool(mem[_96])
            else:
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), cd[((64 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((64 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = cd[((64 * idx) + cd[4] + 68)]
                require ext_code.size(stor2)
                call stor2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[4] + 36)], cd[36], cd[((64 * idx) + cd[4] + 68)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _99 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_99] == bool(mem[_99])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'ERC721: the test version is expired. this function only for pro user now..'
}



}
