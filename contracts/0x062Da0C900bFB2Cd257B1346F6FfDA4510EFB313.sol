contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
address owner;
address chefAddress;
mapping of uint8 stor2;
uint256 sub_be5969de;
uint8 sub_2ccf5950;

function chef() payable {
    return chefAddress
}

function sub_2ccf5950(?) payable {
    return bool(sub_2ccf5950)
}

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function sub_be5969de(?) payable {
    return sub_be5969de
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
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

function setAllocLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_be5969de = arg1
}

function setOnlyLPsAllowed(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_2ccf5950 = uint8(arg1)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setManager(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function massUpdatePools() payable {
    require ext_code.size(chefAddress)
    call chefAddress.0x630b5ba1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(chefAddress)
    call chefAddress.0x51eb05a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startBlock() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x48cd4cb1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function poolLength() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalAllocPoint() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeChefOwner() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(chefAddress)
    call chefAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(chefAddress)
    staticcall chefAddress.0xcbd258b5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
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

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if not stor2[msg.sender]:
            revert with 0, 'Must be manager or owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        if sub_be5969de > 0:
            if arg2 > sub_be5969de:
                revert with 0, 'Multiplier must be below limit'
    require ext_code.size(chefAddress)
    call chefAddress.0x51eb05a6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(chefAddress)
    call chefAddress.0x64482f79 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if not stor2[msg.sender]:
            revert with 0, 'Must be manager or owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        if sub_be5969de:
            if arg1 > sub_be5969de:
                revert with 0, 'Multiplier must be <= limit'
        if sub_2ccf5950:
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            staticcall arg2.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            staticcall arg2.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(chefAddress)
    call chefAddress.0x1eaaa045 with:
         gas gas_remaining wei
        args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
