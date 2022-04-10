contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
address profiterAddress;
mapping of uint8 stor3;
mapping of uint256 harvestInterval;
mapping of uint256 lastHarvest;

function profiter() payable {
    return profiterAddress
}

function lastHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastHarvest[arg1]
}

function active(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function harvestInterval(address arg1) payable {
    require calldata.size - 4 >= 32
    return harvestInterval[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setProfiter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    profiterAddress = arg1
}

function activateStrat(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor3[address(arg1)] = 1
}

function updateHarvestInterval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    harvestInterval[address(arg1)] = arg2
}

function removeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor3[address(arg1)] = 0
    harvestInterval[address(arg1)] = 0
}

function addStrategy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1.length++
    stor1[stor1.length].field_0 = arg1
    stor3[address(arg1)] = 1
    harvestInterval[address(arg1)] = arg2
}

function getActiveStrategiesCount() payable {
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = stor1[idx].field_0
        mem[32] = 3
        if not stor3[stor1[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getHarvestableStrategiesCount() payable {
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = stor1[idx].field_0
        mem[32] = 3
        if not stor3[stor1[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = stor1[idx].field_0
        mem[32] = 5
        if harvestInterval[stor1[idx].field_0] + lastHarvest[stor1[idx].field_0] > block.timestamp:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function recoverERC20(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getStrategies() payable {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function getActiveStrategies() payable {
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = stor1[idx].field_0
        mem[32] = 3
        if not stor3[stor1[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < stor1.length:
        mem[0] = stor1[idx].field_0
        mem[32] = 3
        if not stor3[stor1[idx].field_0]:
            idx = idx + 1
            t = t
            continue 
        require idx < stor1.length
        mem[0] = 1
        require t < s
        mem[(32 * t) + 128] = stor1[idx].field_0
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function getHarvestableStrategies() payable {
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = stor1[idx].field_0
        mem[32] = 3
        if not stor3[stor1[idx].field_0]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = stor1[idx].field_0
        mem[32] = 5
        if harvestInterval[stor1[idx].field_0] + lastHarvest[stor1[idx].field_0] > block.timestamp:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < stor1.length:
        mem[0] = stor1[idx].field_0
        mem[32] = 3
        if not stor3[stor1[idx].field_0]:
            idx = idx + 1
            t = t
            continue 
        mem[0] = stor1[idx].field_0
        mem[32] = 5
        if harvestInterval[stor1[idx].field_0] + lastHarvest[stor1[idx].field_0] > block.timestamp:
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = stor1[idx].field_0
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function sub_ccfd2a95(?) payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require ext_code.size(stor1[idx].field_0)
        staticcall stor1[idx].field_0.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if owner != msg.sender:
            revert with 0, 'sOwnable: caller is not the owne'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function harvestVaults(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_24))
        call address(_24).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        _28 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_28))
        call address(_28).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        lastHarvest[mem[(32 * idx) + 140 len 20]] = block.timestamp
        idx = idx + 1
        continue 
    if profiterAddress:
        require ext_code.size(profiterAddress)
        call profiterAddress.unpool() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
