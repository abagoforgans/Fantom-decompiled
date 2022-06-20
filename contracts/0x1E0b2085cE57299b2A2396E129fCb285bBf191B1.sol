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

function harvestAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _13 = mem[_12]
        require mem[_12] == mem[_12]
        if mem[_12] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_12]
            continue 
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = arg1
        call 0x0.harvest(uint256 arg1, uint256 arg2) with:
             gas 5000 wei
            args idx, arg1
        mem[mem[64]] = ext_call.return_data[0]
        mem[64] = mem[64] + 68
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _13
        continue 
}



}
