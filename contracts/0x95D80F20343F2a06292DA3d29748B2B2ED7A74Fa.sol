contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
uint32 stor2;
address routerAddress;
uint256 stor2;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function owner() {
    return owner
}

function router() {
    return address(routerAddress)
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    require msg.sender == owner
    call msg.sender with:
       value 10^18 * eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require eth.balance(this.address) >= 10^18 * arg1
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] += -1 * 10^18 * arg1
}

function swapExactTokensForTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[384 len 4] = test266151307()
        call arg1 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[356 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeApprove'
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 297] = arg3
        mem[ceil32(return_data.size) + 329] = 0
        mem[ceil32(return_data.size) + 393] = this.address
        mem[ceil32(return_data.size) + 425] = block.timestamp
        mem[ceil32(return_data.size) + 361] = 160
        mem[ceil32(return_data.size) + 457] = 2
        mem[ceil32(return_data.size) + 489 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, this.address, block.timestamp, 2, mem[ceil32(return_data.size) + 489 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg3) >> 32 + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg3) >> 32 + 293]) + 32 <= return_data.size
}



}
