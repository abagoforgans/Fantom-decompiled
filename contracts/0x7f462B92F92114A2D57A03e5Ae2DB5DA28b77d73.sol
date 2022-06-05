contract main {




// =====================  Runtime code  =====================


#
#  - sendDust(address arg1, address arg2, uint256 arg3)
#
const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address governorAddress;
address pendingGovernorAddress;
uint8 stor4;
array of struct stor5;
mapping of uint256 stor6;

function governor() payable {
    return governorAddress
}

function paused() payable {
    return bool(stor4)
}

function isMechanic(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
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

function addMechanic(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MechanicsRegistry::add-mechanic:mechanic-should-not-be-zero-address'
    if stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MechanicsRegistry::add-mechanic:mechanic-already-added'
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
    emit MechanicAdded(arg1);
}

function removeMechanic(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MechanicsRegistry::remove-mechanic:mechanic-not-found'
    if stor6[address(arg1)]:
        if stor6[address(arg1)] < 1:
            revert with 0, 17
        if stor5.length < 1:
            revert with 0, 17
        if stor5.length - 1 != stor6[address(arg1)] - 1:
            if stor5.length - 1 >= stor5.length:
                revert with 0, 50
            if stor6[address(arg1)] - 1 >= stor5.length:
                revert with 0, 50
            stor5[stor6[address(arg1)]].field_0 = stor5[stor5.length].field_0
            stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
        if not stor5.length:
            revert with 0, 49
        stor5[stor5.length].field_0 = 0
        stor5.length--
        stor6[address(arg1)] = 0
    emit MechanicRemoved(arg1);
}

function mechanics() payable {
    if stor5.length > test266151307():
        revert with 0, 65
    mem[96] = stor5.length
    mem[64] = (32 * stor5.length) + 128
    if not stor5.length:
        if var28002 >= stor5.length:
            mem[(32 * stor5.length) + 128] = 32
            mem[(32 * stor5.length) + 160] = stor5.length
            idx = 0
            s = (32 * stor5.length) + 192
            t = 128
            while idx < stor5.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor5.length) + 128
               len (96 * stor5.length) + 64
        if var34001 >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        if var40002 >= stor5.length:
            revert with 0, 50
        mem[(32 * var40002) + 128] = address(var40001)
        s = var40002
        t = var40001
        idx = var40002
        while idx != -1:
            if idx + 1 >= stor5.length:
                mem[(32 * stor5.length) + 128] = 32
                mem[(32 * stor5.length) + 160] = stor5.length
                u = 0
                s = (32 * stor5.length) + 192
                t = 128
                while u < stor5.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor5.length) + 128
                   len (96 * stor5.length) + 64
            mem[0] = 5
            if idx + 1 >= stor5.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor5[idx].field_512
            s = idx + 1
            t = stor5[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor5.length] = call.data[calldata.size len 32 * stor5.length]
        if var29002 >= stor5.length:
            mem[(32 * stor5.length) + 128] = 32
            mem[(32 * stor5.length) + 160] = stor5.length
            idx = 0
            s = (32 * stor5.length) + 192
            t = 128
            while idx < stor5.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor5.length) + 128
               len (96 * stor5.length) + 64
        if var35001 >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        if var41002 >= stor5.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = address(var41001)
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor5.length:
                mem[(32 * stor5.length) + 128] = 32
                mem[(32 * stor5.length) + 160] = stor5.length
                u = 0
                s = (32 * stor5.length) + 192
                t = 128
                while u < stor5.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor5.length) + 128
                   len (96 * stor5.length) + 64
            mem[0] = 5
            if idx + 1 >= stor5.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor5[idx].field_512
            s = idx + 1
            t = stor5[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}



}
