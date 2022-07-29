contract main {




// =====================  Runtime code  =====================


#
#  - liquidateVault(uint256 arg1)
#
address liquidatorAddress;
address collateralAddress;
uint256 sub_03ea4437;
uint8 stor3;

function sub_03ea4437(?) payable {
    return sub_03ea4437
}

function liquidator() payable {
    return liquidatorAddress
}

function collateral() payable {
    return collateralAddress
}

function _fallback() payable {
    revert
}

function checkCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3:
        return 0
    return sub_03ea4437
}

function configure(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != 0xe7fa295203fd6522610e0409694c8a65ee2670ac:
        if msg.sender != 0x8a35add672963f5d23b7bab88e4f67a30172dec1:
            if msg.sender != 0x585845b853f6a37b159bd8dc98bd92f732c84716:
                revert with 0, 'onlyMe'
    liquidatorAddress = arg1
    collateralAddress = arg2
    sub_03ea4437 = arg3
    stor3 = 0
}

function getPaid() payable {
    require msg.sender == liquidatorAddress
    require stor3
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(collateralAddress)
    call collateralAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3 = 0
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args 0x585845b853f6a37b159bd8dc98bd92f732c84716, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawTokens(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        if mem[_11]:
            mem[mem[64] + 4] = 0x585845b853f6a37b159bd8dc98bd92f732c84716
            mem[mem[64] + 36] = _12
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args 0x585845b853f6a37b159bd8dc98bd92f732c84716, _12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == bool(mem[_15])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
