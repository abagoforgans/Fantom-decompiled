contract main {




// =====================  Runtime code  =====================


address owner;
array of struct poolInfo;
uint256 totalAllocPoint;
address sub_68f997b6Address;
mapping of uint8 stor4;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function poolLength() payable {
    return poolInfo.length
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_68f997b6(?) payable {
    return sub_68f997b6Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor4[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function update(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function addPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 1
        if poolInfo[idx].field_0 == arg1:
            revert with 0, 'Duplicate Pool Found!'
        idx = idx + 1
        continue 
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    storB10E[stor1.length] = arg2
}

function distributeFunds() payable {
    mem[64] = 96
    if bool(stor4[msg.sender]) != 1:
        revert with 0, 'Not Authorized'
    require ext_code.size(sub_68f997b6Address)
    staticcall sub_68f997b6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < poolInfo.length:
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[0] = 1
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = poolInfo[idx].field_0
        mem[_33 + 32] = poolInfo[idx].field_256
        if not ext_call.return_data[0]:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            mem[mem[64] + 4] = poolInfo[idx].field_0
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_68f997b6Address)
            call sub_68f997b6Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolInfo[idx].field_0, 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / totalAllocPoint:
                mem[mem[64]] = 0xe388583f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0 / totalAllocPoint
                require ext_code.size(poolInfo[idx].field_0)
                call poolInfo[idx].field_0.0xe388583f with:
                     gas gas_remaining wei
                    args (0 / totalAllocPoint)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if poolInfo[idx].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            mem[mem[64] + 4] = poolInfo[idx].field_0
            mem[mem[64] + 36] = poolInfo[idx].field_256 * ext_call.return_data[0] / totalAllocPoint
            require ext_code.size(sub_68f997b6Address)
            call sub_68f997b6Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolInfo[idx].field_0, poolInfo[idx].field_256 * ext_call.return_data[0] / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if poolInfo[idx].field_256 * ext_call.return_data[0] / totalAllocPoint:
                mem[mem[64]] = 0xe388583f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = poolInfo[idx].field_256 * ext_call.return_data[0] / totalAllocPoint
                require ext_code.size(poolInfo[idx].field_0)
                call poolInfo[idx].field_0.0xe388583f with:
                     gas gas_remaining wei
                    args (poolInfo[idx].field_256 * ext_call.return_data[0] / totalAllocPoint)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
