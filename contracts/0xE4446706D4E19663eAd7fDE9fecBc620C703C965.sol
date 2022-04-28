contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#
address owner;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 stor3;
mapping of address sub_ae1b2cee;
mapping of uint256 sub_15e1f7cd;
uint256 sub_73b082ab;
mapping of uint8 stor7;
address sub_f2ef62ddAddress;
address genAddress;

function sub_15e1f7cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_15e1f7cd[arg1]
}

function sub_7235f293(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function sub_73b082ab(?) payable {
    return sub_73b082ab
}

function owner() payable {
    return owner
}

function sub_ae1b2cee(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_ae1b2cee[arg1])
}

function gen() payable {
    return genAddress
}

function sub_eb116f0d(?) payable {
    return sub_15e1f7cd[msg.sender]
}

function sub_f2ef62dd(?) payable {
    return sub_f2ef62ddAddress
}

function sub_fe408f91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
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

function addTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
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

function joinPool() payable {
    require ext_code.size(sub_f2ef62ddAddress)
    staticcall sub_f2ef62ddAddress.bonus(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 50:
        revert with 0, 'not Elon'
    if stor7[msg.sender]:
        revert with 0, 'already joined Elon'
    stor7[msg.sender] = 1
    if not stor3[stor6]:
        stor2.length++
        stor2[stor2.length].field_0 = sub_73b082ab
        stor3[stor6] = stor2.length
    uint256(sub_ae1b2cee[stor6]) = msg.sender or Mask(96, 160, uint256(sub_ae1b2cee[stor6]))
    if sub_73b082ab == -1:
        revert with 0, 17
    sub_73b082ab++
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(genAddress)
    staticcall genAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(genAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call genAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function addMoney(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[msg.sender]:
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = 10^18 * arg1
        require ext_code.size(genAddress)
        call genAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor2.length:
            revert with 0, 18
        if var63002 >= stor2.length:
        if var69001 >= stor2.length:
            revert with 0, 50
        mem[0] = var75001
        mem[32] = 4
        mem[ceil32(return_data.size) + 96] = 0xd8cb4aa300000000000000000000000000000000000000000000000000000000
        mem[var77001] = address(var77002)
        require ext_code.size(sub_f2ef62ddAddress)
        staticcall sub_f2ef62ddAddress.mem[var81003 len 4] with:
                gas gas_remaining wei
               args mem[var81003 + 4 len var81004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var85002 - var85001 >= 32
        if var89001 != 50:
            stor7[address(var110001)] = 0
        # nil
    else:
        if owner != msg.sender:
            revert with 0, 'not trusted'
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = 10^18 * arg1
        require ext_code.size(genAddress)
        call genAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor2.length:
            revert with 0, 18
        if var66002 >= stor2.length:
        if var72001 >= stor2.length:
            revert with 0, 50
        mem[0] = var78001
        mem[32] = 4
        mem[ceil32(return_data.size) + 96] = 0xd8cb4aa300000000000000000000000000000000000000000000000000000000
        mem[var80001] = address(var80002)
        require ext_code.size(sub_f2ef62ddAddress)
        staticcall sub_f2ef62ddAddress.mem[var84003 len 4] with:
                gas gas_remaining wei
               args mem[var84003 + 4 len var84004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var88002 - var88001 >= 32
        if var92001 != 50:
            stor7[address(var113001)] = 0
        # nil
}

function sub_7d014fef(?) payable {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if var32002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = (32 * stor2.length) + 192
            t = 128
            while idx < stor2.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var38001 < stor2.length:
            mem[0] = var42001
            mem[32] = 4
            s = var42001
            idx = var42008
            while idx < stor2.length:
                mem[(32 * idx) + 128] = address(sub_ae1b2cee[var42001])
                if idx == -1:
                    revert with 0, 17
                if idx + 1 < stor2.length:
                    mem[0] = stor2[idx].field_512
                    mem[32] = 4
                    s = stor2[idx].field_256
                    idx = idx + 1
                    continue 
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                idx = 0
                t = mem[64] + 64
                u = 128
                while idx < mem[96]:
                    mem[t] = mem[u + 12 len 20]
                    mem[0] = s
                    mem[32] = 4
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + -mem[64] + 192
    else:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if var33002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = (32 * stor2.length) + 192
            t = 128
            while idx < stor2.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var39001 < stor2.length:
            mem[0] = var43001
            mem[32] = 4
            s = var43001
            idx = var43008
            while idx < stor2.length:
                mem[(32 * idx) + 128] = address(sub_ae1b2cee[var43001])
                if idx == -1:
                    revert with 0, 17
                if idx + 1 < stor2.length:
                    mem[0] = stor2[idx].field_512
                    mem[32] = 4
                    s = stor2[idx].field_256
                    idx = idx + 1
                    continue 
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                idx = 0
                t = mem[64] + 64
                u = 128
                while idx < stor2.length:
                    mem[t] = mem[u + 12 len 20]
                    mem[0] = s
                    mem[32] = 4
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * stor2.length) + -mem[64] + 192
    revert with 0, 50
}



}
