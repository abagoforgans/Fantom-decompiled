contract main {




// =====================  Runtime code  =====================


#
#  - sendDust(address arg1, address arg2, uint256 arg3)
#
const rarity = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb

const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address governorAddress;
address pendingGovernorAddress;
uint8 stor4;
mapping of address sub_6dcfb1a3;
array of struct stor6;
mapping of uint256 stor7;

function governor() payable {
    return governorAddress
}

function paused() payable {
    return bool(stor4)
}

function sub_6dcfb1a3(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_6dcfb1a3[arg1])
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function isGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (governorAddress == arg1)
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'governable/only-pending-governor'
    governorAddress = pendingGovernorAddress
    pendingGovernorAddress = 0
    emit GovernorAccepted()
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if arg1 == bool(stor4):
        revert with 0, 'no-change'
    stor4 = uint8(arg1)
    emit Paused(arg1);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'governable/pending-governor-should-not-be-zero-addres'
    pendingGovernorAddress = arg1
    emit PendingGovernorSet(arg1);
}

function sub_95b72c66(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_6dcfb1a3[arg1]) != msg.sender:
        revert with 4015478120
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a90c7591(?) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b71e8064(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_6dcfb1a3[arg1]) = msg.sender or Mask(96, 160, uint256(sub_6dcfb1a3[arg1]))
    if not stor7[arg1]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor7[arg1] = stor6.length
}

function sub_b9c35218(?) payable {
    if stor6.length:
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6.length, data=mem[128 len 32 * stor6.length])
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    mem[(32 * stor6.length) + 192 len 32 * stor6.length] = mem[128 len 32 * stor6.length]
    return memory
      from (32 * stor6.length) + 128
       len (96 * stor6.length) + 64
}

function sub_3a091650(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _18 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        _19 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_19 + 32] = 0xb00b52f100000000000000000000000000000000000000000000000000000000 or mem[_19 + 36 len 28]
        _22 = mem[_19]
        s = 0
        while s < _22:
            mem[s + _18 + 68] = mem[s + _19 + 32]
            s = s + 32
            continue 
        if ceil32(_22) <= _22:
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _22 + _18 + -mem[64] + 64]
            if return_data.size:
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_30] = return_data.size
                mem[_30 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_18 + _22 + 68] = 0
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _22 + _18 + -mem[64] + 64]
            if return_data.size:
                _32 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_32] = return_data.size
                mem[_32 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function adventure() payable {
    mem[64] = (32 * stor6.length) + 128
    mem[96] = stor6.length
    if not stor6.length:
        idx = 0
        while idx < stor6.length:
            if idx >= mem[96]:
                revert with 0, 50
            _19 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 128]
            _20 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_20 + 32] = 0xb00b52f100000000000000000000000000000000000000000000000000000000 or mem[_20 + 36 len 28]
            _23 = mem[_20]
            s = 0
            while s < _23:
                mem[s + _19 + 68] = mem[s + _20 + 32]
                s = s + 32
                continue 
            if ceil32(_23) <= _23:
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _23 + _19 + -mem[64] + 64]
                if return_data.size:
                    _32 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_32] = return_data.size
                    mem[_32 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_19 + _23 + 68] = 0
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _23 + _19 + -mem[64] + 64]
                if return_data.size:
                    _35 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_35] = return_data.size
                    mem[_35 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = 6
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor6.length:
            if idx >= mem[96]:
                revert with 0, 50
            _50 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 128]
            _51 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_51 + 32] = 0xb00b52f100000000000000000000000000000000000000000000000000000000 or mem[_51 + 36 len 28]
            _54 = mem[_51]
            s = 0
            while s < _54:
                mem[s + _50 + 68] = mem[s + _51 + 32]
                s = s + 32
                continue 
            if ceil32(_54) <= _54:
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _54 + _50 + -mem[64] + 64]
                if return_data.size:
                    _62 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_62] = return_data.size
                    mem[_62 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_50 + _54 + 68] = 0
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _54 + _50 + -mem[64] + 64]
                if return_data.size:
                    _64 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_64] = return_data.size
                    mem[_64 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
