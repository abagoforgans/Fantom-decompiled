contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 merkleRoot;
uint256 sub_2b9fce47;
uint256 airdropEnd;
mapping of uint256 stor5;
uint256 vestingStart;
uint256 vestingDuration;
mapping of uint256 vesting;
mapping of uint256 sub_788e9fc9;

function airdropEnd() payable {
    return airdropEnd
}

function vestingDuration() payable {
    return vestingDuration
}

function vestingStart() payable {
    return vestingStart
}

function sub_2b9fce47(?) payable {
    return sub_2b9fce47
}

function merkleRoot() payable {
    return merkleRoot
}

function sub_788e9fc9(?) payable {
    require calldata.size - 4 >= 32
    return sub_788e9fc9[address(arg1)]
}

function owner() payable {
    return owner
}

function vesting(address arg1) payable {
    require calldata.size - 4 >= 32
    return vesting[address(arg1)]
}

function token() payable {
    return tokenAddress
}

function sub_86645c85(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if airdropEnd:
        if block.timestamp <= airdropEnd:
            revert with 0, 'airdrop not end'
    if vestingStart:
        if vestingDuration + vestingStart < vestingStart:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= vestingDuration + vestingStart:
            revert with 0, 'vesting not end'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function isClaimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (1 << uint8(arg1) and stor5[Mask(248, 8, arg1)] == 1 << uint8(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_355b808c(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < vestingStart:
        if sub_788e9fc9[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_788e9fc9[address(arg1)]
    if vestingDuration + vestingStart < vestingStart:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= vestingDuration + vestingStart:
        if sub_788e9fc9[address(arg1)] > vesting[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (vesting[address(arg1)] - sub_788e9fc9[address(arg1)])
    if vestingStart > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not vesting[address(arg1)]:
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if sub_788e9fc9[address(arg1)] > 0 / vestingDuration:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / vestingDuration) - sub_788e9fc9[address(arg1)])
    if (block.timestamp * vesting[address(arg1)]) - (vestingStart * vesting[address(arg1)]) / vesting[address(arg1)] != block.timestamp - vestingStart:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    if sub_788e9fc9[address(arg1)] > (block.timestamp * vesting[address(arg1)]) - (vestingStart * vesting[address(arg1)]) / vestingDuration:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((block.timestamp * vesting[address(arg1)]) - (vestingStart * vesting[address(arg1)]) / vestingDuration) - sub_788e9fc9[address(arg1)])
}

function claimVested() payable {
    if not vestingStart:
        revert with 0, 'Vesting not start'
    if block.timestamp < vestingStart:
        revert with 0, 'Vesting not start'
    if vestingDuration + vestingStart < vestingStart:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= vestingDuration + vestingStart:
        if sub_788e9fc9[address(msg.sender)] > vesting[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vesting[address(msg.sender)] - sub_788e9fc9[address(msg.sender)] <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        if vesting[address(msg.sender)] - sub_788e9fc9[address(msg.sender)] + sub_788e9fc9[msg.sender] < sub_788e9fc9[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        sub_788e9fc9[msg.sender] = vesting[address(msg.sender)] - sub_788e9fc9[address(msg.sender)] + sub_788e9fc9[msg.sender]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, vesting[address(msg.sender)] - sub_788e9fc9[address(msg.sender)]
    else:
        if vestingStart > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not vesting[address(msg.sender)]:
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if sub_788e9fc9[address(msg.sender)] > 0 / vestingDuration:
                revert with 0, 'SafeMath: subtraction overflow'
            if (0 / vestingDuration) - sub_788e9fc9[address(msg.sender)] <= 0:
                revert with 0, 'TokenVesting: no tokens are due'
            if (0 / vestingDuration) - sub_788e9fc9[address(msg.sender)] + sub_788e9fc9[msg.sender] < sub_788e9fc9[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_788e9fc9[msg.sender] = (0 / vestingDuration) - sub_788e9fc9[address(msg.sender)] + sub_788e9fc9[msg.sender]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / vestingDuration) - sub_788e9fc9[address(msg.sender)]
        else:
            if (block.timestamp * vesting[address(msg.sender)]) - (vestingStart * vesting[address(msg.sender)]) / vesting[address(msg.sender)] != block.timestamp - vestingStart:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if sub_788e9fc9[address(msg.sender)] > (block.timestamp * vesting[address(msg.sender)]) - (vestingStart * vesting[address(msg.sender)]) / vestingDuration:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((block.timestamp * vesting[address(msg.sender)]) - (vestingStart * vesting[address(msg.sender)]) / vestingDuration) - sub_788e9fc9[address(msg.sender)] <= 0:
                revert with 0, 'TokenVesting: no tokens are due'
            if ((block.timestamp * vesting[address(msg.sender)]) - (vestingStart * vesting[address(msg.sender)]) / vestingDuration) - sub_788e9fc9[address(msg.sender)] + sub_788e9fc9[msg.sender] < sub_788e9fc9[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_788e9fc9[msg.sender] = ((block.timestamp * vesting[address(msg.sender)]) - (vestingStart * vesting[address(msg.sender)]) / vestingDuration) - sub_788e9fc9[address(msg.sender)] + sub_788e9fc9[msg.sender]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp * vesting[address(msg.sender)]) - (vestingStart * vesting[address(msg.sender)]) / vestingDuration) - sub_788e9fc9[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Vesting: Transfer failed.'
}

function sub_47f2bf49(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if not sub_2b9fce47:
        if not airdropEnd:
            mem[0] = arg1 / 256
            mem[32] = 5
            if 1 << uint8(arg1) and stor5[Mask(248, 8, arg1)] == 1 << uint8(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x734d65726b6c654469737472696275746f723a2044726f7020616c726561647920636c61696d6564,
                            mem[204 len 24]
            mem[128] = arg1
            mem[160] = address(arg2)
            mem[180] = arg3
            mem[96] = 84
            mem[64] = (32 * arg4.length) + 244
            mem[212] = arg4.length
            mem[244 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[(32 * arg4.length) + 244] = 0
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < mem[212]
                _147 = mem[(32 * idx) + 244]
                if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 244]
                    mem[mem[64] + 64] = s + sha3(mem[128 len 84])
                    _154 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_154 + 32 len mem[_154]])
                    continue 
                mem[mem[64] + 32] = s + sha3(mem[128 len 84])
                mem[mem[64] + 64] = _147
                _158 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_158 + 32 len mem[_158]])
                continue 
        else:
            if block.timestamp > airdropEnd:
                revert with 0, 'airdrop end'
            mem[0] = arg1 / 256
            mem[32] = 5
            if 1 << uint8(arg1) and stor5[Mask(248, 8, arg1)] == 1 << uint8(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x734d65726b6c654469737472696275746f723a2044726f7020616c726561647920636c61696d6564,
                            mem[204 len 24]
            mem[128] = arg1
            mem[160] = address(arg2)
            mem[180] = arg3
            mem[96] = 84
            mem[64] = (32 * arg4.length) + 244
            mem[212] = arg4.length
            mem[244 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[(32 * arg4.length) + 244] = 0
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < mem[212]
                _148 = mem[(32 * idx) + 244]
                if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 244]
                    mem[mem[64] + 64] = s + sha3(mem[128 len 84])
                    _164 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_164 + 32 len mem[_164]])
                    continue 
                mem[mem[64] + 32] = s + sha3(mem[128 len 84])
                mem[mem[64] + 64] = _148
                _168 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_168 + 32 len mem[_168]])
                continue 
    else:
        if block.timestamp < sub_2b9fce47:
            revert with 0, 'airdrop not start'
        if not airdropEnd:
            mem[0] = arg1 / 256
            mem[32] = 5
            if 1 << uint8(arg1) and stor5[Mask(248, 8, arg1)] == 1 << uint8(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x734d65726b6c654469737472696275746f723a2044726f7020616c726561647920636c61696d6564,
                            mem[204 len 24]
            mem[128] = arg1
            mem[160] = address(arg2)
            mem[180] = arg3
            mem[96] = 84
            mem[64] = (32 * arg4.length) + 244
            mem[212] = arg4.length
            mem[244 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[(32 * arg4.length) + 244] = 0
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < mem[212]
                _149 = mem[(32 * idx) + 244]
                if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 244]
                    mem[mem[64] + 64] = s + sha3(mem[128 len 84])
                    _174 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_174 + 32 len mem[_174]])
                    continue 
                mem[mem[64] + 32] = s + sha3(mem[128 len 84])
                mem[mem[64] + 64] = _149
                _178 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_178 + 32 len mem[_178]])
                continue 
        else:
            if block.timestamp > airdropEnd:
                revert with 0, 'airdrop end'
            mem[0] = arg1 / 256
            mem[32] = 5
            if 1 << uint8(arg1) and stor5[Mask(248, 8, arg1)] == 1 << uint8(arg1):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x734d65726b6c654469737472696275746f723a2044726f7020616c726561647920636c61696d6564,
                            mem[204 len 24]
            mem[128] = arg1
            mem[160] = address(arg2)
            mem[180] = arg3
            mem[96] = 84
            mem[64] = (32 * arg4.length) + 244
            mem[212] = arg4.length
            mem[244 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[(32 * arg4.length) + 244] = 0
            idx = 0
            s = 0
            while idx < arg4.length:
                require idx < mem[212]
                _150 = mem[(32 * idx) + 244]
                if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 244]
                    mem[mem[64] + 64] = s + sha3(mem[128 len 84])
                    _184 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_184 + 32 len mem[_184]])
                    continue 
                mem[mem[64] + 32] = s + sha3(mem[128 len 84])
                mem[mem[64] + 64] = _150
                _188 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_188 + 32 len mem[_188]])
                continue 
    if merkleRoot != s:
        revert with 0, 32, 33, 0x2e4d65726b6c654469737472696275746f723a20496e76616c69642070726f6f66, mem[mem[64] + 101 len 31]
    stor5[Mask(248, 8, arg1)] = 1
    if vestingStart:
        vesting[address(arg2)] = arg3
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 35, 0x2e4d65726b6c654469737472696275746f723a205472616e73666572206661696c6564, mem[mem[64] + 103 len 29]
    emit Claimed(arg1, address(arg2), arg3);
}



}
