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
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        if mem[_13] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_13]
            continue 
        mem[mem[64]] = 0x18fccc7600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(masterchefAddress)
        call masterchefAddress.harvest(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args idx, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _14
        continue 
}



}
