contract main {




// =====================  Runtime code  =====================


address masterchefAddress;
address governanceAddress;

function governance() payable {
    return governanceAddress
}

function masterchef() payable {
    return masterchefAddress
}

function _fallback() payable {
    revert
}

function setMasterchef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    masterchefAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'not governance'
    governanceAddress = arg1
}

function harvestAll() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x31411d43 with:
                gas gas_remaining wei
               args idx, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_29]
        require mem[_29] == mem[_29]
        if mem[_29] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_29]
            continue 
        _31 = mem[64]
        mem[mem[64] + 36] = idx
        mem[mem[64] + 68] = msg.sender
        _32 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_32 + 32] = mem[_32 + 36 len 28] or 0xe4a4b7b100000000000000000000000000000000000000000000000000000000
        _35 = mem[_32]
        s = 0
        while s < _35:
            mem[_31 + s + 100] = mem[_32 + s + 32]
            s = s + 32
            continue 
        if ceil32(_35) <= _35:
            delegate masterchefAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _31 + _35 + -mem[64] + 96]
            if return_data.size:
                _51 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_51] = return_data.size
                mem[_51 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_31 + _35 + 100] = 0
            delegate masterchefAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _31 + _35 + -mem[64] + 96]
            if return_data.size:
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_55] = return_data.size
                mem[_55 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = _30
        emit 0xe47258d4: idx, msg.sender, _30
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _30
        continue 
}



}
