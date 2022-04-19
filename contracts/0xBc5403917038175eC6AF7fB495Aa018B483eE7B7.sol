contract main {




// =====================  Runtime code  =====================


#
#  - depositTokens(uint256 arg1)
#
address owner;
uint256 sub_3e353729;
uint256 sub_6d3ee32e;
address tokenAddress;
uint256 sub_ffbd3a92;
uint256 sub_c74d1de4;

function sub_3e353729(?) payable {
    return sub_3e353729
}

function sub_6d3ee32e(?) payable {
    return sub_6d3ee32e
}

function owner() payable {
    return owner
}

function sub_c74d1de4(?) payable {
    return sub_c74d1de4
}

function token() payable {
    return tokenAddress
}

function sub_ffbd3a92(?) payable {
    return sub_ffbd3a92
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

function sub_66b47720(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _66 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = sub_ffbd3a92
        _67 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_67 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_67 + 36 len 28]
        mem[64] = _66 + 164
        mem[_66 + 100] = 32
        mem[_66 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        _74 = mem[_67]
        s = 0
        while s < _74:
            mem[s + _66 + 164] = mem[s + _67 + 32]
            s = s + 32
            continue 
        if ceil32(_74) > _74:
            mem[_74 + _66 + 164] = 0
        call tokenAddress.mem[_66 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_66 + 168 len _74 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_66 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_66 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _66 + 232] = mem[idx + _66 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_66 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _66 + ceil32(return_data.size) + 165
            mem[_66 + 164] = return_data.size
            mem[_66 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_66 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_66 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _66 + ceil32(return_data.size) + 233] = mem[idx + _66 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_66 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_66 + 196] == bool(mem[_66 + 196])
                if not mem[_66 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_3e353729 > !('cd', 4).length:
        revert with 0, 17
    sub_3e353729 += ('cd', 4).length
}

function sub_a8fc0d1e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _66 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = sub_c74d1de4
        _67 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_67 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_67 + 36 len 28]
        mem[64] = _66 + 164
        mem[_66 + 100] = 32
        mem[_66 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        _74 = mem[_67]
        s = 0
        while s < _74:
            mem[s + _66 + 164] = mem[s + _67 + 32]
            s = s + 32
            continue 
        if ceil32(_74) > _74:
            mem[_74 + _66 + 164] = 0
        call tokenAddress.mem[_66 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_66 + 168 len _74 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_66 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_66 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _66 + 232] = mem[idx + _66 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_66 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _66 + ceil32(return_data.size) + 165
            mem[_66 + 164] = return_data.size
            mem[_66 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_66 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_66 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _66 + ceil32(return_data.size) + 233] = mem[idx + _66 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_66 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_66 + 196] == bool(mem[_66 + 196])
                if not mem[_66 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_6d3ee32e > !('cd', 4).length:
        revert with 0, 17
    sub_6d3ee32e += ('cd', 4).length
}



}
