contract main {




// =====================  Runtime code  =====================


#
#  - sendDust(address arg1, address arg2, uint256 arg3)
#
const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const WETH = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2


address governorAddress;
address pendingGovernorAddress;
uint8 paused;
address mechanicsRegistryAddress; offset 8
address sub_34d6020dAddress;
address sub_48dcaddfAddress;
array of struct stor7;
mapping of uint256 stor8;
mapping of uint256 lastWorkAt;
mapping of address sub_623351e4;
mapping of address sub_b80b534c;
uint256 sub_e06a7cb9;

function governor() payable {
    return governorAddress
}

function lastWorkAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastWorkAt[arg1]
}

function mechanicsRegistry() payable {
    return mechanicsRegistryAddress
}

function sub_34d6020d(?) payable {
    return sub_34d6020dAddress
}

function sub_48dcaddf(?) payable {
    return sub_48dcaddfAddress
}

function paused() payable {
    return bool(paused)
}

function sub_623351e4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_623351e4[arg1]
}

function sub_b80b534c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b80b534c[arg1]
}

function sub_e06a7cb9(?) payable {
    return sub_e06a7cb9
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

function setYOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    sub_48dcaddfAddress = arg1
}

function setV2Keep3r(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    sub_34d6020dAddress = arg1
}

function setMechanicsRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    mechanicsRegistryAddress = arg1
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
    if arg1 == bool(paused):
        revert with 0, 'no-change'
    paused = uint8(arg1)
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

function isMechanic(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(mechanicsRegistryAddress)
    staticcall mechanicsRegistryAddress.0x65834acc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setWorkCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
    if not arg1:
        revert with 43362968
    sub_e06a7cb9 = arg1
}

function workable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor8[address(arg1)]:
        revert with 2266428907
    if sub_e06a7cb9:
        if lastWorkAt[address(arg1)] > !sub_e06a7cb9:
            revert with 0, 17
        if block.timestamp <= lastWorkAt[address(arg1)] + sub_e06a7cb9:
            return 0
    require ext_code.size(arg1)
    staticcall arg1.harvestTrigger(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function updateCostTokenAndPair(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if governorAddress != msg.sender:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
    if not stor8[address(arg1)]:
        revert with 2266428907
    sub_623351e4[address(arg1)] = arg2
    sub_b80b534c[address(arg1)] = arg3
}

function forceWork(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
    lastWorkAt[address(arg1)] = block.timestamp
    require ext_code.size(sub_34d6020dAddress)
    call sub_34d6020dAddress.harvest(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ForceWorked(arg1);
}

function sub_ff3ab9c5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if governorAddress != msg.sender:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
    sub_623351e4[address(arg1)] = address(arg2)
    sub_b80b534c[address(arg1)] = address(arg3)
    emit StrategyAdded(address(arg1));
    if stor8[address(arg1)]:
        revert with 375268199
    stor7.length++
    stor7[stor7.length].field_0 = address(arg1)
    stor7[stor7.length].field_160 = 0
    stor8[address(arg1)] = stor7.length
}

function removeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
    if not stor8[address(arg1)]:
        revert with 2266428907
    if stor8[address(arg1)]:
        if stor8[address(arg1)] < 1:
            revert with 0, 17
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 != stor8[address(arg1)] - 1:
            if stor7.length - 1 >= stor7.length:
                revert with 0, 50
            if stor8[address(arg1)] - 1 >= stor7.length:
                revert with 0, 50
            stor7[stor8[address(arg1)]].field_0 = stor7[stor7.length].field_0
            stor8[stor7[stor7.length].field_0] = stor8[address(arg1)]
        if not stor7.length:
            revert with 0, 49
        stor7[stor7.length].field_0 = 0
        stor7.length--
        stor8[address(arg1)] = 0
    emit StrategyRemoved(arg1);
}

function work(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'paused'
    if governorAddress != msg.sender:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
    if not stor8[address(arg1)]:
        revert with 2266428907
    if sub_e06a7cb9:
        if lastWorkAt[address(arg1)] > !sub_e06a7cb9:
            revert with 0, 17
        if block.timestamp <= lastWorkAt[address(arg1)] + sub_e06a7cb9:
            revert with 1005945380
    require ext_code.size(arg1)
    staticcall arg1.harvestTrigger(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 1005945380
    lastWorkAt[address(arg1)] = block.timestamp
    require ext_code.size(sub_34d6020dAddress)
    call sub_34d6020dAddress.harvest(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Worked(address(arg1), msg.sender);
}

function strategies() payable {
    if stor7.length > test266151307():
        revert with 0, 65
    mem[96] = stor7.length
    mem[64] = (32 * stor7.length) + 128
    if not stor7.length:
        if var28002 >= stor7.length:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            idx = 0
            s = (32 * stor7.length) + 192
            t = 128
            while idx < stor7.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor7.length) + 128
               len (96 * stor7.length) + 64
        if var34001 >= stor7.length:
            revert with 0, 50
        mem[0] = 7
        if var40002 >= stor7.length:
            revert with 0, 50
        mem[(32 * var40002) + 128] = address(var40001)
        s = var40002
        t = var40001
        idx = var40002
        while idx != -1:
            if idx + 1 >= stor7.length:
                mem[(32 * stor7.length) + 128] = 32
                mem[(32 * stor7.length) + 160] = stor7.length
                u = 0
                s = (32 * stor7.length) + 192
                t = 128
                while u < stor7.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor7.length) + 128
                   len (96 * stor7.length) + 64
            mem[0] = 7
            if idx + 1 >= stor7.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor7[idx].field_512
            s = idx + 1
            t = stor7[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor7.length] = call.data[calldata.size len 32 * stor7.length]
        if var29002 >= stor7.length:
            mem[(32 * stor7.length) + 128] = 32
            mem[(32 * stor7.length) + 160] = stor7.length
            idx = 0
            s = (32 * stor7.length) + 192
            t = 128
            while idx < stor7.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor7.length) + 128
               len (96 * stor7.length) + 64
        if var35001 >= stor7.length:
            revert with 0, 50
        mem[0] = 7
        if var41002 >= stor7.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = address(var41001)
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor7.length:
                mem[(32 * stor7.length) + 128] = 32
                mem[(32 * stor7.length) + 160] = stor7.length
                u = 0
                s = (32 * stor7.length) + 192
                t = 128
                while u < stor7.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor7.length) + 128
                   len (96 * stor7.length) + 64
            mem[0] = 7
            if idx + 1 >= stor7.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor7[idx].field_512
            s = idx + 1
            t = stor7[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}

function sub_9ef7a8db(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender == governorAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 2019319870
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            sub_623351e4[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
            sub_b80b534c[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
            emit StrategyAdded(address(cd[((32 * idx) + cd[4] + 36)]));
            if stor8[address(cd[((32 * idx) + cd[4] + 36)])]:
                revert with 375268199
            stor7.length++
            stor7[stor7.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor7[stor7.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            stor8[address(cd[((32 * idx) + cd[4] + 36)])] = stor7.length
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(mechanicsRegistryAddress)
        staticcall mechanicsRegistryAddress.0x65834acc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Machinery::onlyGovernorOrMechanic:invalid-msg-sender'
        if ('cd', 36).length != ('cd', 4).length:
            revert with 2019319870
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            sub_623351e4[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
            sub_b80b534c[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[ceil32(return_data.size) + 96] = address(cd[((32 * idx) + cd[4] + 36)])
            emit StrategyAdded(address(cd[((32 * idx) + cd[4] + 36)]));
            if stor8[address(cd[((32 * idx) + cd[4] + 36)])]:
                revert with 375268199
            stor7.length++
            stor7[stor7.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor7[stor7.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            stor8[address(cd[((32 * idx) + cd[4] + 36)])] = stor7.length
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
