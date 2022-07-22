contract main {




// =====================  Runtime code  =====================


#
#  - sub_033d7530(?)
#  - getRequestInfo(uint256 arg1)
#
address owner;
array of struct stor1;
uint256 sub_3599cecc;
array of struct stor3;
uint256 stor4;
uint256 sub_84b7c68a;
mapping of uint256 addressBalance;
address stor7;
array of struct stor9;

function getAddressBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressBalance[address(arg1)]
}

function sub_3599cecc(?) payable {
    return sub_3599cecc
}

function sub_84b7c68a(?) payable {
    return sub_84b7c68a
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ac103e16(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_84b7c68a = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function emergencyWithdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x59a39e1c 
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = var34001
    while idx < stor4:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if address(stor3[idx].field_0) != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx != -1:
            revert with 0, 'Already whitelisted.'
        stor3.length++
        address(stor3[stor3.length].field_0) = arg1
        if stor4 > -2:
            revert with 'NH{q', 17
        stor4++
        emit AddToWhitelist(arg1);
    stor3.length++
    address(stor3[stor3.length].field_0) = arg1
    if stor4 > -2:
        revert with 'NH{q', 17
    stor4++
    emit AddToWhitelist(arg1);
}

function depositFunds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = var29001
    while idx < stor4:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if address(stor3[idx].field_0) != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Address isn't whitelisted.'
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if addressBalance[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        addressBalance[address(msg.sender)] += arg1
        emit DepositFunds(msg.sender, arg1);
    revert with 0, 'Address isn't whitelisted.'
}

function getWhitelistAddresses() payable {
    mem[64] = (32 * stor3.length) + 128
    mem[96] = stor3.length
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        idx = 0
        s = 128
        t = (32 * stor3.length) + 192
        while idx < stor3.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = address(stor3[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3.length) + -mem[64] + 192
}

function withdrawFunds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = var29001
    while idx < stor4:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if address(stor3[idx].field_0) != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Address isn't whitelisted.'
        if arg1 > addressBalance[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't withdraw more than your balance.'
        require ext_code.size(stor7)
        call stor7.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if addressBalance[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        addressBalance[address(msg.sender)] -= arg1
        emit WithdrawFunds(msg.sender, arg1);
    revert with 0, 'Address isn't whitelisted.'
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = var34001
    while idx < stor4:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if address(stor3[idx].field_0) != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx != -1:
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), addressBalance[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if addressBalance[address(arg1)] < addressBalance[address(arg1)]:
                revert with 'NH{q', 17
            addressBalance[address(arg1)] = 0
            if stor4 < 1:
                revert with 'NH{q', 17
            if stor4 - 1 >= stor3.length:
                revert with 'NH{q', 50
            if idx >= stor3.length:
                revert with 'NH{q', 50
            address(stor3[idx].field_0) = address(stor3[stor4].field_0)
            if not stor3.length:
                revert with 'NH{q', 49
            address(stor3[stor3.length].field_0) = 0
            stor3.length--
            if stor4 < 1:
                revert with 'NH{q', 17
            stor4--
            emit RemoveFromWhitelist(arg1);
}

function sub_37ee35d4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 8
    if address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Router already exists.'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 8
    address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(arg2)
    stor9.length++
    if bool(stor9[stor9.length].field_0):
        if bool(stor9[stor9.length].field_0) == uint255(stor9[stor9.length].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor9[stor9.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor9[stor9.length].field_0) = 0
            idx = 0
            while uint255(stor9[stor9.length].field_1) + 31 / 32 > idx:
                uint256(stor9[stor9.length + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[stor9.length].field_0) == stor9[stor9.length].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor9[stor9.length][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor9[stor9.length].field_0) = 0
            idx = 0
            while stor9[stor9.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor9[stor9.length + idx].field_0) = 0
                idx = idx + 1
                continue 
}

function approveRequest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = var29001
    while idx < stor4:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if address(stor3[idx].field_0) != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Address isn't whitelisted.'
        if arg1 >= sub_3599cecc:
            revert with 0, 'Invalid request ID.'
        if arg1 < 0:
            revert with 0, 'Invalid request ID.'
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if msg.sender == address(stor1[arg1].field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Applicant can't approve his own request.'
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if var54003 < uint256(stor1[arg1].field_1536):
            if arg1 < stor1.length:
                idx = var56001
                while idx < uint256(stor1[arg1].field_1536):
                    if address(stor[sha3((8 * arg1) + ('name', 'stor1', 1) + 6) + idx].field_0) == msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address has already approved.'
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if idx + 1 < uint256(stor1[arg1].field_1536):
                        mem[0] = 1
                        idx = idx + 1
                        continue 
                    uint256(stor1[arg1].field_1536)++
                    address(stor[sha3((8 * arg1) + ('name', 'stor1', 1) + 6) + uint256(stor1[arg1].field_1536)].field_0) = msg.sender
                    emit 0x893b9e35: arg1, msg.sender
            revert with 'NH{q', 50
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        uint256(stor1[arg1].field_1536)++
        address(stor[sha3((8 * arg1) + ('name', 'stor1', 1) + 6) + uint256(stor1[arg1].field_1536)].field_0) = msg.sender
        emit 0x893b9e35: arg1, msg.sender
    revert with 0, 'Address isn't whitelisted.'
}

function sub_5af3515d(?) payable {
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    s = 128
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if bool(stor9[idx].field_0):
            if bool(stor9[idx].field_0) == uint255(stor9[idx].field_1) < 32:
                revert with 'NH{q', 34
            _18 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor9[idx].field_1)) + 32
            mem[_18] = uint255(stor9[idx].field_1)
            if bool(stor9[idx].field_0):
                if bool(stor9[idx].field_0) == uint255(stor9[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor9[idx].field_1):
                    if 31 >= uint255(stor9[idx].field_1):
                        mem[_18 + 32] = 256 * Mask(248, 0, stor9[idx].field_8)
                    else:
                        mem[0] = sha3(9) + idx
                        mem[_18 + 32] = uint256(stor9[idx].field_0)
                        t = _18 + 32
                        u = sha3(mem[0])
                        while _18 + uint255(stor9[idx].field_1) > t:
                            mem[t + 32] = uint256(stor1[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor9[idx].field_0) == stor9[idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor9[idx].field_1 % 128:
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor9[idx].field_1 % 128:
                mem[_18 + 32] = 256 * Mask(248, 0, stor9[idx].field_8)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(9) + idx
            mem[_18 + 32] = uint256(stor9[idx].field_0)
            t = _18 + 32
            u = sha3(mem[0])
            while _18 + stor9[u].field_1 % 128 > t:
                mem[t + 32] = uint256(stor1[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if bool(stor9[idx].field_0) == stor9[idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(stor9[idx].field_1 % 128) + 32
        mem[_19] = stor9[idx].field_1 % 128
        if bool(stor9[idx].field_0):
            if bool(stor9[idx].field_0) == uint255(stor9[idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor9[idx].field_1):
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor9[idx].field_1):
                mem[_19 + 32] = 256 * Mask(248, 0, stor9[idx].field_8)
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(9) + idx
            mem[_19 + 32] = uint256(stor9[idx].field_0)
            t = _19 + 32
            u = sha3(mem[0])
            while _19 + uint255(stor9[u].field_1) > t:
                mem[t + 32] = uint256(stor1[u].field_0)
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if bool(stor9[idx].field_0) == stor9[idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor9[idx].field_1 % 128:
            if 31 >= stor9[idx].field_1 % 128:
                mem[_19 + 32] = 256 * Mask(248, 0, stor9[idx].field_8)
            else:
                mem[0] = sha3(9) + idx
                mem[_19 + 32] = uint256(stor9[idx].field_0)
                t = _19 + 32
                u = sha3(mem[0])
                while _19 + stor9[idx].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u].field_0)
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _17:
        mem[u] = t + -_16 - 64
        _28 = mem[s]
        _30 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _30:
            mem[t + v + 32] = mem[_28 + v + 32]
            v = v + 32
            continue 
        if ceil32(_30) > _30:
            mem[t + _30 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_30) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_4324b6d4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98
    mem[ceil32(ceil32(arg3.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    idx = var84001
    while idx < stor4:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if address(stor3[idx].field_0) != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Address isn't whitelisted.'
        idx = 0
        while idx < arg3.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + idx + 98] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 98] = 8
        if not address(stor[sha3(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len arg3.length + 32])]):
            revert with 0, 'Router has not been added.'
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98] = sub_3599cecc
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = msg.sender
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 162] = address(arg1)
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 194] = arg2
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226] = 96
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 258] = ceil32(ceil32(arg3.length)) + 97
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = 0
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 290] = ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322] = 0
        stor1.length++
        uint256(stor1[stor1.length].field_0) = sub_3599cecc
        address(stor1[stor1.length].field_256) = msg.sender
        address(stor1[stor1.length].field_512) = address(arg1)
        uint256(stor1[stor1.length].field_768) = arg2
        if bool(stor1[stor1.length].field_1024):
            if bool(stor1[stor1.length].field_1024) == uint255(stor1[stor1.length].field_1025) < 32:
                revert with 'NH{q', 34
            if not mem[96]:
                uint256(stor1[stor1.length].field_1024) = 0
                idx = sha3((8 * stor1.length) + sha3(1) + 4)
                while sha3((8 * stor1.length) + sha3(1) + 4) + (uint255(stor1[stor1.length].field_1025) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor1[stor1.length].field_1024) = (2 * mem[96]) + 1
                s = sha3((8 * stor1.length) + sha3(1) + 4)
                idx = 128
                while mem[96] + 128 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((8 * stor1.length) + sha3(1) + 4) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3((8 * stor1.length) + sha3(1) + 4) + (uint255(stor1[stor1.length].field_1025) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1[stor1.length].field_1024) == stor1[stor1.length].field_1025 % 128 < 32:
                revert with 'NH{q', 34
            if not mem[96]:
                uint256(stor1[stor1.length].field_1024) = 0
                idx = sha3((8 * stor1.length) + sha3(1) + 4)
                while sha3((8 * stor1.length) + sha3(1) + 4) + (stor1[stor1.length].field_1025 % 128 + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor1[stor1.length].field_1024) = (2 * mem[96]) + 1
                s = sha3((8 * stor1.length) + sha3(1) + 4)
                idx = 128
                while mem[96] + 128 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((8 * stor1.length) + sha3(1) + 4) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3((8 * stor1.length) + sha3(1) + 4) + (stor1[stor1.length].field_1025 % 128 + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        if bool(stor1[stor1.length].field_1280):
            if bool(stor1[stor1.length].field_1280) == uint255(stor1[stor1.length].field_1281) < 32:
                revert with 'NH{q', 34
            if not mem[ceil32(ceil32(arg3.length)) + 97]:
                uint256(stor1[stor1.length].field_1280) = 0
                idx = sha3((8 * stor1.length) + sha3(1) + 5)
                while sha3((8 * stor1.length) + sha3(1) + 5) + (uint255(stor1[stor1.length].field_1281) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor1[stor1.length].field_1280) = (2 * mem[ceil32(ceil32(arg3.length)) + 97]) + 1
                s = sha3((8 * stor1.length) + sha3(1) + 5)
                idx = ceil32(ceil32(arg3.length)) + 129
                while ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 129 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((8 * stor1.length) + sha3(1) + 5) + (Mask(251, 0, mem[ceil32(ceil32(arg3.length)) + 97] + 31) >> 5)
                while sha3((8 * stor1.length) + sha3(1) + 5) + (uint255(stor1[stor1.length].field_1281) + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1[stor1.length].field_1280) == stor1[stor1.length].field_1281 % 128 < 32:
                revert with 'NH{q', 34
            if not mem[ceil32(ceil32(arg3.length)) + 97]:
                uint256(stor1[stor1.length].field_1280) = 0
                idx = sha3((8 * stor1.length) + sha3(1) + 5)
                while sha3((8 * stor1.length) + sha3(1) + 5) + (stor1[stor1.length].field_1281 % 128 + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor1[stor1.length].field_1280) = (2 * mem[ceil32(ceil32(arg3.length)) + 97]) + 1
                s = sha3((8 * stor1.length) + sha3(1) + 5)
                idx = ceil32(ceil32(arg3.length)) + 129
                while ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 129 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3((8 * stor1.length) + sha3(1) + 5) + (Mask(251, 0, mem[ceil32(ceil32(arg3.length)) + 97] + 31) >> 5)
                while sha3((8 * stor1.length) + sha3(1) + 5) + (stor1[stor1.length].field_1281 % 128 + 31 / 32) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
        uint256(stor1[stor1.length].field_1536) = 0
        idx = sha3((8 * stor1.length) + sha3(1) + 6)
        while sha3((8 * stor1.length) + sha3(1) + 6) + uint256(stor1[stor1.length].field_1536) > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
        uint8(stor1[stor1.length].field_1792) = 0
        if sub_3599cecc > -2:
            revert with 'NH{q', 17
        sub_3599cecc++
        if sub_3599cecc < 1:
            revert with 'NH{q', 17
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 386] = sub_3599cecc - 1
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 418] = msg.sender
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 450] = address(arg1)
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 482] = arg2
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 514] = 160
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 546] = mem[ceil32(ceil32(arg3.length)) + 97]
        idx = 0
        while idx < mem[ceil32(ceil32(arg3.length)) + 97]:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + idx + 578] = mem[ceil32(ceil32(arg3.length)) + idx + 129]
            idx = idx + 32
            continue 
        if ceil32(mem[ceil32(ceil32(arg3.length)) + 97]) > mem[ceil32(ceil32(arg3.length)) + 97]:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 578] = 0
        emit 0xe3d3ada5: sub_3599cecc - 1, msg.sender, address(arg1), arg2, Array(len=mem[ceil32(ceil32(arg3.length)) + 97], data=mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 578 len ceil32(mem[ceil32(ceil32(arg3.length)) + 97])])
    revert with 0, 'Address isn't whitelisted.'
}



}
