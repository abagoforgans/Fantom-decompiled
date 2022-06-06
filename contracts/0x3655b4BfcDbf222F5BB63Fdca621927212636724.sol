contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
address stor1;
address stor2;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    revert
}

function pause() payable {
    require msg.sender == stor4
    Mask(96, 0, stor3.field_160) = 1
}

function unpause() payable {
    require msg.sender == stor4
    Mask(96, 0, stor3.field_160) = 0
}

function isClaimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1] < stor5:
        return 0
    return 1
}

function setAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor4
    if uint8(stor3.field_160):
        revert with 0, 'contract is paused'
    stor5 = arg1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor4
    if uint8(stor3.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getClaimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(stor2)
        call stor2.0x2f745c59 with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16]
        mem[0] = mem[_16]
        mem[32] = 0
        if stor0[mem[0]] < stor5:
            if 0 > -stor5 - 1:
                revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function claimChiz(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor3.field_160):
        revert with 0, 'contract is paused'
    if stor0[arg1] >= stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens for this rat have already been claimed'
    require ext_code.size(stor2)
    call stor2.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'caller is not owner of this rat'
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if stor0[arg1] > -stor5 - 1:
            revert with 'NH{q', 17
        stor0[arg1] += stor5
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Dispense(stor5, arg1);
    else:
        if stor5 and 2 > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 > -(2 * stor5 / 100) - 1:
            revert with 'NH{q', 17
        if stor0[arg1] > -stor5 - 1:
            revert with 'NH{q', 17
        stor0[arg1] += stor5
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor5 + (2 * stor5 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Dispense(stor5 + (2 * stor5 / 100), arg1);
}

function sub_b2d2793c(?) payable {
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor3.field_160):
        revert with 0, 'contract is paused'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        if stor0[mem[(32 * idx) + 128]] < stor5:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _117 = mem[(32 * idx) + 128]
            if uint8(stor3.field_160):
                revert with 0, 'contract is paused'
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 0
            if stor0[mem[(32 * idx) + 128]] >= stor5:
                revert with 0, 'tokens for this rat have already been claimed'
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor2)
            call stor2.0x6352211e with:
                 gas gas_remaining wei
                args _117
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_127] == mem[_127 + 12 len 20]
            if mem[_127 + 12 len 20] != msg.sender:
                revert with 0, 'caller is not owner of this rat'
            mem[mem[64] + 4] = _117
            require ext_code.size(address(stor3.field_0))
            call address(stor3.field_0).0x6352211e with:
                 gas gas_remaining wei
                args _117
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_139] == mem[_139 + 12 len 20]
            if mem[_139 + 12 len 20] != msg.sender:
                mem[0] = _117
                mem[32] = 0
                if stor0[_117] > -stor5 - 1:
                    revert with 'NH{q', 17
                stor0[_117] += stor5
                mem[mem[64] + 36] = stor5
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = stor5
                mem[mem[64] + 32] = _117
                emit Dispense(stor5, _117);
            else:
                if stor5 and 2 > -1 / stor5:
                    revert with 'NH{q', 17
                if stor5 > -(2 * stor5 / 100) - 1:
                    revert with 'NH{q', 17
                mem[0] = _117
                mem[32] = 0
                if stor0[_117] > -stor5 - 1:
                    revert with 'NH{q', 17
                stor0[_117] += stor5
                mem[mem[64] + 36] = stor5 + (2 * stor5 / 100)
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor5 + (2 * stor5 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = stor5 + (2 * stor5 / 100)
                mem[mem[64] + 32] = _117
                emit Dispense(stor5 + (2 * stor5 / 100), _117);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function megaClaimChiz() payable {
    if uint8(stor3.field_160):
        revert with 0, 'contract is paused'
    mem[100] = msg.sender
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor2)
        call stor2.0x2f745c59 with:
             gas gas_remaining wei
            args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        require mem[_61] == mem[_61]
        mem[0] = mem[_61]
        mem[32] = 0
        if stor0[mem[0]] < stor5:
            if uint8(stor3.field_160):
                revert with 0, 'contract is paused'
            mem[0] = _62
            mem[32] = 0
            if stor0[_62] >= stor5:
                revert with 0, 'tokens for this rat have already been claimed'
            mem[mem[64] + 4] = _62
            require ext_code.size(stor2)
            call stor2.0x6352211e with:
                 gas gas_remaining wei
                args _62
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_73] == mem[_73 + 12 len 20]
            if mem[_73 + 12 len 20] != msg.sender:
                revert with 0, 'caller is not owner of this rat'
            mem[mem[64] + 4] = _62
            require ext_code.size(address(stor3.field_0))
            call address(stor3.field_0).0x6352211e with:
                 gas gas_remaining wei
                args _62
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_85] == mem[_85 + 12 len 20]
            if mem[_85 + 12 len 20] != msg.sender:
                mem[0] = _62
                mem[32] = 0
                if stor0[_62] > -stor5 - 1:
                    revert with 'NH{q', 17
                stor0[_62] += stor5
                mem[mem[64] + 36] = stor5
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = stor5
                mem[mem[64] + 32] = _62
                emit Dispense(stor5, _62);
            else:
                if stor5 and 2 > -1 / stor5:
                    revert with 'NH{q', 17
                if stor5 > -(2 * stor5 / 100) - 1:
                    revert with 'NH{q', 17
                mem[0] = _62
                mem[32] = 0
                if stor0[_62] > -stor5 - 1:
                    revert with 'NH{q', 17
                stor0[_62] += stor5
                mem[mem[64] + 36] = stor5 + (2 * stor5 / 100)
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor5 + (2 * stor5 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = stor5 + (2 * stor5 / 100)
                mem[mem[64] + 32] = _62
                emit Dispense(stor5 + (2 * stor5 / 100), _62);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
