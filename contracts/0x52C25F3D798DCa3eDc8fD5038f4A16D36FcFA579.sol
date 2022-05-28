contract main {




// =====================  Runtime code  =====================


const sub_16a49186(?) = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
mapping of struct stor1;
mapping of address stor2;
array of struct stor3;
uint256 mintingFee;
array of struct stor5;
address sub_52952bb1Address;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_52952bb1(?) {
    return sub_52952bb1Address
}

function owner() {
    return owner
}

function getMintingFee() {
    return mintingFee
}

function _fallback() payable {
    revert
}

function initialized() {
    if not stor5.length:
        return bool(stor5.length)
    return bool(sub_52952bb1Address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMintingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingFee = arg1
    emit 0xff0d47c3: arg1
}

function collectFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Fees send failed'
    emit 0xa44d2934: address(arg1), eth.balance(this.address)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    emit 0x5e67a9c4: arg1
}

function sub_d097aea5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Address is zero'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) == address(arg1):
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor5.length++
    stor36B6[stor5.length] = address(arg1)
}

function sub_ca68d768(?) {
    if stor3.length:
        mem[128] = uint256(stor3.field_0)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3.length, data=mem[128 len 32 * stor3.length])
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    mem[(32 * stor3.length) + 192 len 32 * stor3.length] = mem[128 len 32 * stor3.length]
    return memory
      from (32 * stor3.length) + 128
       len (96 * stor3.length) + 64
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        stor5.length++
        stor36B6[stor5.length] = arg1
        sub_52952bb1Address = arg2
        mintingFee = arg3
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor5.length++
            stor36B6[stor5.length] = arg1
            sub_52952bb1Address = arg2
            mintingFee = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor5.length++
            stor36B6[stor5.length] = arg1
            sub_52952bb1Address = arg2
            mintingFee = arg3
            uint8(stor0.field_8) = 0
}

function sub_8f77400a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Address is zero'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) == address(arg1):
            if 1 < stor5.length:
                if stor5.length < 1:
                    revert with 0, 17
                if stor5.length - 1 >= stor5.length:
                    revert with 0, 50
                if idx >= stor5.length:
                    revert with 0, 50
                address(stor5[idx].field_0) = address(stor5[stor5.length].field_0)
            if not stor5.length:
                revert with 0, 49
            mem[0] = 5
            address(stor5[stor5.length].field_0) = 0
            stor5.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_62d91d6e(?) {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = (32 * stor5.length) + 192
        t = 128
        while idx < stor5.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = address(stor5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor5.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_f6e9b70a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if bool(stor1[mem[(32 * idx) + 128]].field_0):
            if bool(stor1[mem[(32 * idx) + 128]].field_0) == uint255(stor1[mem[(32 * idx) + 128]].field_1) < 32:
                revert with 0, 34
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = uint255(stor1[mem[(32 * idx) + 128]].field_1) != 0
        else:
            if bool(stor1[mem[(32 * idx) + 128]].field_0) == stor1[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                revert with 0, 34
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor1[mem[(32 * idx) + 128]].field_1 % 128 != 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 32
    mem[(64 * ('cd', 4).length) + 192] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 4).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (98 * ('cd', 4).length) + -mem[64] + 224
}

function sub_0a72e71b(?) {
    require calldata.size - 4 >= 32
    if bool(stor1[arg1].field_0):
        if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor1[arg1].field_0):
            if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor1[arg1].field_1):
                if 31 < uint255(stor1[arg1].field_1):
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor1[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_1)), data=mem[128 len ceil32(uint255(stor1[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
        else:
            if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor1[arg1].field_1 % 128:
                if 31 < stor1[arg1].field_1 % 128:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_1)), data=mem[128 len ceil32(uint255(stor1[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
        mem[ceil32(uint255(stor1[arg1].field_1)) + 192 len ceil32(uint255(stor1[arg1].field_1))] = mem[128 len ceil32(uint255(stor1[arg1].field_1))]
        if ceil32(uint255(stor1[arg1].field_1)) > uint255(stor1[arg1].field_1):
            mem[ceil32(uint255(stor1[arg1].field_1)) + uint255(stor1[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_1)), data=mem[128 len ceil32(uint255(stor1[arg1].field_1))], mem[(2 * ceil32(uint255(stor1[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor1[arg1].field_1))]), 
    if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1[arg1].field_0):
        if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor1[arg1].field_1):
            if 31 < uint255(stor1[arg1].field_1):
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor1[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0 % 128, data=mem[128 len ceil32(stor1[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
    else:
        if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor1[arg1].field_1 % 128:
            if 31 < stor1[arg1].field_1 % 128:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0 % 128, data=mem[128 len ceil32(stor1[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
    mem[ceil32(stor1[arg1].field_1 % 128) + 192 len ceil32(stor1[arg1].field_1 % 128)] = mem[128 len ceil32(stor1[arg1].field_1 % 128)]
    if ceil32(stor1[arg1].field_1 % 128) > stor1[arg1].field_1 % 128:
        mem[ceil32(stor1[arg1].field_1 % 128) + stor1[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor1[arg1].field_0 % 128, data=mem[128 len ceil32(stor1[arg1].field_1 % 128)], mem[(2 * ceil32(stor1[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor1[arg1].field_1 % 128)]), 
}

function sub_f8a8bc7c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor5.length:
        revert with 0, 'Not initialized'
    if not sub_52952bb1Address:
        revert with 0, 'Not initialized'
    if msg.value < mintingFee:
        revert with 0, 'Missing fee'
    mem[0] = arg1
    mem[32] = 1
    if bool(stor1[arg1].field_0):
        if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor1[arg1].field_1):
            revert with 0, 'Niftypix Data already set'
        mem[ceil32(arg2.length) + 132] = msg.sender
        mem[ceil32(arg2.length) + 164] = arg1
        require ext_code.size(sub_52952bb1Address)
        staticcall sub_52952bb1Address.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg1
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        if 0, ext_call.return_data[4 len 28] <= 0:
            revert with 0, 'Does not own this token'
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(stor5[idx].field_0))
            staticcall address(stor5[idx].field_0).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_167] < 3
            if mem[_167] > 2:
                revert with 0, 33
            if mem[_167] != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            if not address(stor5[idx].field_0):
                revert with 0, 'Not a Bitgem Canvas NFT'
            if bool(stor1[arg1].field_0):
                if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
                    revert with 0, 34
                if not mem[96]:
                    stor1[arg1].field_0 = 0
                    s = sha3(sha3(arg1, 1))
                    while sha3(sha3(arg1, 1)) + (uint255(stor1[arg1].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _298 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _319 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _319:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_319) > _319:
                        mem[_298 + _319 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_319) + _298 + -mem[64] + 96]
                else:
                    stor1[arg1].field_0 = (2 * mem[96]) + 1
                    t = sha3(sha3(arg1, 1))
                    s = 128
                    while mem[96] + 128 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(arg1, 1)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(arg1, 1)) + (uint255(stor1[arg1].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _402 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _422 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _422:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_422) > _422:
                        mem[_402 + _422 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_422) + _402 + -mem[64] + 96]
            else:
                if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if not mem[96]:
                    stor1[arg1].field_0 = 0
                    s = sha3(sha3(arg1, 1))
                    while sha3(sha3(arg1, 1)) + (stor1[arg1].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _304 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _322 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _322:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_322) > _322:
                        mem[_304 + _322 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_322) + _304 + -mem[64] + 96]
                else:
                    stor1[arg1].field_0 = (2 * mem[96]) + 1
                    t = sha3(sha3(arg1, 1))
                    s = 128
                    while mem[96] + 128 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(arg1, 1)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(arg1, 1)) + (stor1[arg1].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _404 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _426 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _426:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_426) > _426:
                        mem[_404 + _426 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_426) + _404 + -mem[64] + 96]
    else:
        if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor1[arg1].field_1 % 128:
            revert with 0, 'Niftypix Data already set'
        mem[ceil32(arg2.length) + 132] = msg.sender
        mem[ceil32(arg2.length) + 164] = arg1
        require ext_code.size(sub_52952bb1Address)
        staticcall sub_52952bb1Address.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg1
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        if 0, ext_call.return_data[4 len 28] <= 0:
            revert with 0, 'Does not own this token'
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(stor5[idx].field_0))
            staticcall address(stor5[idx].field_0).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_168] < 3
            if mem[_168] > 2:
                revert with 0, 33
            if mem[_168] != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            if not address(stor5[idx].field_0):
                revert with 0, 'Not a Bitgem Canvas NFT'
            if bool(stor1[arg1].field_0):
                if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
                    revert with 0, 34
                if not mem[96]:
                    stor1[arg1].field_0 = 0
                    s = sha3(sha3(arg1, 1))
                    while sha3(sha3(arg1, 1)) + (uint255(stor1[arg1].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _310 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _325 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _325:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_325) > _325:
                        mem[_310 + _325 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_325) + _310 + -mem[64] + 96]
                else:
                    stor1[arg1].field_0 = (2 * mem[96]) + 1
                    t = sha3(sha3(arg1, 1))
                    s = 128
                    while mem[96] + 128 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(arg1, 1)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(arg1, 1)) + (uint255(stor1[arg1].field_1) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _406 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _430 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _430:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_430) > _430:
                        mem[_406 + _430 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_430) + _406 + -mem[64] + 96]
            else:
                if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if not mem[96]:
                    stor1[arg1].field_0 = 0
                    s = sha3(sha3(arg1, 1))
                    while sha3(sha3(arg1, 1)) + (stor1[arg1].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _316 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _328 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _328:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_328) > _328:
                        mem[_316 + _328 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_328) + _316 + -mem[64] + 96]
                else:
                    stor1[arg1].field_0 = (2 * mem[96]) + 1
                    t = sha3(sha3(arg1, 1))
                    s = 128
                    while mem[96] + 128 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(arg1, 1)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(arg1, 1)) + (stor1[arg1].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    mem[32] = 2
                    stor2[arg1] = address(stor5[idx].field_0)
                    stor3.length++
                    mem[0] = 3
                    stor3[stor3.length].field_0 = arg1
                    _408 = mem[64]
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = 64
                    _434 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    while idx < _434:
                        mem[idx + mem[64] + 96] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_434) > _434:
                        mem[_408 + _434 + 96] = 0
                    emit 0x1fc153de: mem[mem[64] len ceil32(_434) + _408 + -mem[64] + 96]
    revert with 0, 'Not a Bitgem Canvas NFT'
}



}
