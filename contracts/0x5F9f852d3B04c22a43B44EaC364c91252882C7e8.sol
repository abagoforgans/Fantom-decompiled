contract main {




// =====================  Runtime code  =====================


const DENOMINATOR = 10000


address owner;
array of address team;
array of uint256 weights;

function team(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < team.length
    return team[arg1]
}

function owner() payable {
    return owner
}

function weights(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < weights.length
    return weights[arg1]
}

function _fallback() payable {
    revert
}

function addTeam(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    team.length++
    team[team.length] = arg1
    weights.length++
    weights[weights.length] = arg2
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

function adjustTeam(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= team.length:
        revert with 'NH{q', 50
    if not team[arg1]:
        revert with 0, 'unassigned index'
    if arg1 >= team.length:
        revert with 'NH{q', 50
    team[arg1] = arg2
    if arg1 >= weights.length:
        revert with 'NH{q', 50
    weights[arg1] = arg3
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if ceil32(bool(ext_call.success)) > bool(ext_call.success):
        mem[bool(ext_call.success) + 192] = 0
    return memory
      from 96
       len ceil32(bool(ext_call.success)) + 96
}

function sub_0823c271(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _152 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_152))
        staticcall address(_152).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _156 = mem[_155]
        require mem[_155] == mem[_155]
        s = 0
        t = 0
        while uint32(s) < team.length:
            if uint32(s) >= weights.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if weights[uint32(s)] <= 0:
                if uint32(s) == test266151307():
                    revert with 'NH{q', 17
                s = uint32(s) + 1
                t = t
                continue 
            if uint32(s) >= team.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if not team[uint32(s)]:
                if uint32(s) == test266151307():
                    revert with 'NH{q', 17
                s = uint32(s) + 1
                t = t
                continue 
            if uint32(s) >= weights.length:
                revert with 'NH{q', 50
            if _156 and weights[uint32(s)] > -1 / _156:
                revert with 'NH{q', 17
            if uint32(s) >= team.length:
                revert with 'NH{q', 50
            mem[0] = 1
            _228 = mem[64]
            mem[mem[64] + 36] = team[uint32(s)]
            mem[mem[64] + 68] = _156 * weights[uint32(s)] / 10000
            _229 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_229 + 32] = mem[_229 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[64] = _228 + 164
            mem[_228 + 100] = 32
            mem[_228 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_152)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _235 = mem[_229]
            idx = 0
            while idx < _235:
                mem[_228 + idx + 164] = mem[_229 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_235) > _235:
                mem[_228 + _235 + 164] = 0
            call address(_152).mem[_228 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_228 + 168 len _235 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_228 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_228 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[_228 + idx + 232] = mem[_228 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_228 + 232]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _228 + ceil32(return_data.size) + 165
                mem[_228 + 164] = return_data.size
                mem[_228 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_228 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_228 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[_228 + ceil32(return_data.size) + idx + 233] = mem[_228 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_228 + ceil32(return_data.size) + 233]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_228 + 196] == bool(mem[_228 + 196])
                    if not mem[_228 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if uint32(s) == test266151307():
                revert with 'NH{q', 17
            s = uint32(s) + 1
            t = _156 * weights[uint32(s)] / 10000
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _152
        s = _156
        continue 
}



}
